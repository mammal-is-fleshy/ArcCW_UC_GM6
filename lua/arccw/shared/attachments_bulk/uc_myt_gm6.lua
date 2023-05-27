-- Call ArcCW.LoadAttachmentType(att, "attachment_name") to define attachments in bulk
-- This reduces loading times by reducing the amount of lua files needed.



-- Magazines/Caliber Conversions ---------------------------------------------------------
local att = {}

att.PrintName = "40-Round .308 Mag"
att.AbbrevName = "40-Round 7.39x51mm NATO Mag"

att.Icon = Material("entities/att/ue_gm6/c_308.png", "smooth mips")
att.Description = "Only by sheer will power could you want to rechamber this behemoth to a DMR."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_gm6_mag"
att.SortOrder = 4 + 5000

att.Override_Ammo = "ar2"
att.Override_Trivia_Calibre = "5.56x45mm NATO"
att.Override_Trivia_Class = "Assault Rifle"

att.Mult_RPM = 700/200
att.Mult_SightedSpeedMult = 1.05
att.Mult_Recoil = 0.3
att.Mult_HipDispersion = .4

att.Mult_Sway = .8
att.Mult_SightTime = .8
att.Mult_SightedSpeedMult = 1.5

att.Mult_ShootVol = 100 / 500
att.Mult_ShootPitch = 120 / 100

att.Mult_Penetration = 14 / 20
att.Mult_DamageMin = ArcCW.UC.StdDmg["762_51"].min / ArcCW.UC.StdDmg["50bmg"].min
att.Mult_Damage = ArcCW.UC.StdDmg["762_51"].max / ArcCW.UC.StdDmg["50bmg"].max

att.Mult_MuzzleVelocity = ArcCW.UC.StdDmg["762_51"].vel / ArcCW.UC.StdDmg["50bmg"].vel
att.Mult_PhysBulletMuzzleVelocity = ArcCW.UC.StdDmg["762_51"].vel / ArcCW.UC.StdDmg["50bmg"].vel

att.ShootPitchVariation = 1
att.Override_ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
att.Override_ShellScale = 1

att.Mult_Penetration = ArcCW.UC.StdDmg["762_51"].pen / ArcCW.UC.StdDmg["50bmg"].pen
att.Override_DamageType = DMG_BULLET

att.GivesFlags = {"cal_308"}
att.Override_ShotgunReload = false
att.Override_HybridReload = false

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 40
att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}
att.ActivateElements = {"conv_308"}
local tail556 = ")/arccw_uc/common/556x45/"
local fire556dist = {tail556 .. "fire-dist-556x45-rif-ext-01.ogg", tail556 .. "fire-dist-556x45-rif-ext-02.ogg", tail556 .. "fire-dist-556x45-rif-ext-03.ogg", tail556 .. "fire-dist-556x45-rif-ext-04.ogg", tail556 .. "fire-dist-556x45-rif-ext-05.ogg", tail556 .. "fire-dist-556x45-rif-ext-06.ogg"}
local fire556distint = {tail556 .. "fire-dist-556x45-rif-int-01.ogg", tail556 .. "fire-dist-556x45-rif-int-02.ogg", tail556 .. "fire-dist-556x45-rif-int-03.ogg", tail556 .. "fire-dist-556x45-rif-int-04.ogg", tail556 .. "fire-dist-556x45-rif-int-05.ogg", tail556 .. "fire-dist-556x45-rif-int-06.ogg"}

att.Hook_GetShootSound = function(wep, fsound)
    if wep:GetBuff_Override("Silencer") then
        return fire556supp
    else
        return fire556
    end
end

att.Hook_GetDistantShootSoundOutdoors = function(wep, distancesound)
    if wep:GetBuff_Override("Silencer") then
        -- fallback to script
    else
        return fire556dist
    end
end
att.Hook_GetShootSound = function(wep, fsound)
	if wep:GetBuff_Override("Silencer") then
		return "myt_c1a1/shot_556_sd.ogg"
	else
		return "myt_c1a1/556-1.ogg" || "myt_c1a1/556-2.ogg" || "myt_c1a1/556-3.ogg" || "myt_c1a1/556-4.ogg" 
	end
end


att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_308"
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_308"
end

ArcCW.LoadAttachmentType(att, "uc_myt_gm6_cal_308")
---------------------------------------------------------------------------------------------------------------------
local att = {}

att.PrintName = "4-Round Compact Mag"
att.AbbrevName = "4-Round .50 BMG Mag"

att.Icon = Material("entities/att/ue_gm6/c_s.png", "smooth mips")
att.Description = "Extended magazine for machine gunners."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {}
att.Slot = "uc_myt_gm6_mag"
att.SortOrder = 40 + 308

att.AutoStats = true
att.HideIfBlocked = true

att.Override_ClipSize = 4

att.ActivateElements = {"s_4"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_f"
end

att.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_f"
end


ArcCW.LoadAttachmentType(att, "uc_myt_gm6_cal_4")

---------------------------------------------------------------------------------------------------------------------
-- Barrel -----------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
local att = {}

att.PrintName = "31.5\" Compact Barrel"
att.Icon = Material("entities/att/ue_gm6/b_s.png", "smooth mips")
att.Description = [[Reduced barrel length for corps-a-corps environment.]]
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_myt_gm6_b"

att.AutoStats = true
att.SortOrder = 12

att.Mult_Sway = .85
att.Mult_SightTime = .8
att.Add_BarrelLength = -3
att.Mult_SightedSpeedMult = 1.05

att.Mult_Recoil = 1.3
att.Mult_AccuracyMOA = 1.5
att.Mult_Range = .75
att.Mult_RPM = 625/600
att.Mult_ShootPitch = 105/100
att.ActivateElements = {"l_s"}

ArcCW.LoadAttachmentType(att, "uc_myt_gm6_b_s")