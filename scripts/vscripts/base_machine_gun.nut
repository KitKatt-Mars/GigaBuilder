//=============================================================================
//
// This script was made by Blixibon for Mapbase. You can use it as a template for your own scripts.
//
//=============================================================================
//
// Purpose: This script serves as a recreaton of CHLMachineGun in VScript.
//          This allows for weapons similar to the SMG or AR2.
//
//=============================================================================

RegisterActivityConstants()

function GetBulletSpread()
{
    printl("    Bullet spread is " + VECTOR_CONE_10DEGREES)
    return VECTOR_CONE_10DEGREES;
}

function FireBullets(info)
{
    local owner = self.GetOwner()
    if (owner)
    {
        printl("    Firing " + info.GetShots() + " shots")
        owner.FireBullets(info)
    }
}

m_nShotsFired <- 0

function PrimaryAttack()
{
    Msg("Henderson\n")
    printl("---------------------------------------------------")
    printl("Doing PrimaryAttack() for weapon_custom_scripted1")

    // Only the player fires this way
    local pPlayer = self.GetOwner()
    if (!pPlayer)
        return;

    // Abort here to handle burst and auto fire modes
	if ( (self.UsesClipsForAmmo1() && self.Clip1() == 0) || ( !self.UsesClipsForAmmo1() && !pPlayer.GetAmmoCount(self.GetPrimaryAmmoType()) ) )
		return;

    m_nShotsFired++;

	pPlayer.DoMuzzleFlash();

	// To make the firing framerate independent, we may have to fire more than one bullet here on low-framerate systems,
	// especially if the weapon we're firing has a really fast rate of fire.
	local iBulletsToFire = 0;
	local fireRate = self.GetFireRate();

    local time = Time()

	// MUST call sound before removing a round from the clip of a CHLMachineGun
    local nextPrimary = self.NextPrimaryAttack();
	while ( nextPrimary <= time )
	{
		self.WeaponSound( WeaponSound.SINGLE, self.NextPrimaryAttack() );
		nextPrimary += fireRate;
		iBulletsToFire++;
	}

    self.SetNextPrimaryAttack(nextPrimary);

    // Make sure we don't fire more than the amount in the clip, if this weapon uses clips
	if ( self.UsesClipsForAmmo1() )
	{
		if ( iBulletsToFire > self.Clip1() )
			iBulletsToFire = self.Clip1();
		self.SetClip1(self.Clip1() - iBulletsToFire);
	}

    // Fire the bullets
    local info = CreateFireBulletsInfo(iBulletsToFire, pPlayer.ShootPosition(), pPlayer.GetAutoaimVector(AUTOAIM_SCALE_DEFAULT), pPlayer.GetAttackSpread( self, null ), 0, pPlayer)
    info.SetTracerFreq(2)
    info.SetAmmoType(self.GetPrimaryAmmoType())
    info.SetDistance(MAX_TRACE_LENGTH)
	FireBullets( info );

    self.AddViewKick()

    InsertAISound( SOUND_COMBAT, self.GetOrigin(), SOUNDENT_VOLUME_MACHINEGUN, 0.2, pPlayer, 0, null );

	//m_iPrimaryAttacks++;
	//gamestats->Event_WeaponFired( pPlayer, true, GetClassname() );

    if (self.Clip1() <= 0 && pPlayer.GetAmmoCount(self.GetPrimaryAmmoType()) <= 0)
	{
		// HEV suit - indicate out of ammo condition
		pPlayer.SetSuitUpdate("!HEV_AMO0", 0, 0);
	}

	self.SendWeaponAnim( self.GetPrimaryAttackActivity() );
	//pPlayer->SetAnimation( PLAYER_ATTACK1 );

	// Register a muzzleflash for the AI
	pPlayer.SetMuzzleFlashTime( time + 0.5 );

    printl("PrimaryAttack() finished. Next attack allowed at " + self.NextPrimaryAttack())
    printl("---------------------------------------------------")
}

function Deploy()
{
    m_nShotsFired = 0;
}

function ItemPostFrame()
{
    local pOwner = self.GetOwner()
    if (!pOwner)
        return;

    // Debounce the recoiling counter
	if ( ( pOwner.GetButtons() & IN.ATTACK ) == false )
	{
		m_nShotsFired = 0;
	}
}

function GetFireRate()
{
    return 0.2
}

// The view punch
g_vecPunch <- Vector(-233,435,323)

function AddViewKick()
{
    local pOwner = self.GetOwner()
    if (!pOwner)
        return;

    printl("    Adding view punch of " + g_vecPunch)
    pOwner.ViewPunch( g_vecPunch )
}
