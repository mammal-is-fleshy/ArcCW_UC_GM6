$modelname "weapons\arccw\c_uc_myt_gm6.mdl"
 
$bodygroup "studio" {
	studio "Main.smd"
	blank
}

$bodygroup "1" {
	studio "Mag.smd" //0
	studio "Mag_Flush.smd" //1
	studio "Mag_762.smd" //2
	studio "Mag_762_Alt.smd" //3
	blank //4
}

$bodygroup "2" {
	studio "Grip.smd" //0
	studio "Grip_S.smd" //1
	studio "Grip_X.smd" //2
	blank //3
}

$bodygroup "3" {
	studio "Bolt.smd" //0
	studio "Bolt_762.smd" //1
	blank //2
}

$bodygroup "4" {
	studio "Ammo_50BMG.smd" //0
	studio "Ammo_762.smd" //1
	blank //2
}

$bodygroup "5" {
	studio "Iron_U.smd" //0
	studio "Iron_D.smd" //1
	blank //2
	studio "Iron_SU.smd" //3
	studio "Iron_SD.smd" //4
}

$bodygroup "6" {
	studio "Brake.smd" //0
	studio "Brake_S.smd" //1
	blank //2
}

$bodygroup "7" {
	studio "Barrel.smd" //0
	studio "Barrel_S.smd" //1
	studio "Barrel_762.smd" //2
	studio "Barrel_762S.smd" //3
	blank // 4
}

$cdmaterials "models\weapons\myt_gm6\"
$cdmaterials "models\weapons\arccw\shared""
$cdmaterials "models/UC/attachments/"
$cdmaterials "models\weapons\arccw\uc_shells\"

$attachment "1" "W_Main" 0.00 0.00 27.50 rotate -90 -0 0
$attachment "2" "W_Main" -1.00 0.50 -8.50 rotate -0 135 -180
$attachment "3" "W_Cam" 0 0 0 rotate -90 0 0

$surfaceprop "weapon"
 
$contents "solid"
 
$illumposition 0 0 0

$cbox 0 0 0 0 0 0

$poseparameter "sights" 0 1 loop 0

$sequence "idle" "anims\idle.smd" {
	fps 40
	"ACT_VM_IDLE" 1
	loop
	snap
}

$sequence "fire" {
	"anims\fire.smd"
	"anims\fire_iron.smd"
	blend "sights" 0 1
	fps 40
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}

$sequence "fire_308" {
	"anims\fire_308.smd"
	"anims\fire_iron_308.smd"
	blend "sights" 0 1
	fps 40
	"ACT_VM_PRIMARYATTACK" 1
	fadein 0.03
	fadeout 0.03
}


$sequence "draw" "anims\draw.smd" {
	fps 40
	"ACT_VM_DRAW" 1
	snap
}

$sequence "deploy" "anims\deploy.smd" {
	fps 40
	"ACT_VM_DRAW" 1
	snap
}

$sequence "holster" "anims\holster.smd" {
	fps 40
	"ACT_VM_DRAW" 1
	snap
}

$sequence "reload_empty" {
	"anims\dry.smd"
	//"anims\dry_iron.smd"
	fps 40
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload" {
	"anims\wet.smd"
	//"anims\wet_iron.smd"
	fps 40
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_308" {
	"anims\dry_308.smd"
	//"anims\dry_iron.smd"
	fps 40
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_308" {
	"anims\wet_308.smd"
	//"anims\wet_iron.smd"
	fps 40
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_empty_f" {
	"anims\dry_f.smd"
	//"anims\dry_iron.smd"
	fps 40
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}

$sequence "reload_f" {
	"anims\wet_f.smd"
	//"anims\wet_iron.smd"
	fps 40
	"ACT_VM_RELOAD" 1
	blend "sights" 0 1
	snap
}


$sequence "inspect_enter" {
	"anims\inspect_in"
	fps 40
	// snap
}
$sequence "inspect_loop" {
	"anims\inspect"
	fps 40
	// snap
}
$sequence "inspect_exit" {
	"anims\inspect_out"
	fps 40
	// snap
}
$sequence "inspect_enter_308" {
	"anims\inspect_in_308"
	fps 40
	// snap
}
$sequence "inspect_loop_308" {
	"anims\inspect_308"
	fps 40
	// snap
}
$sequence "inspect_exit_308" {
	"anims\inspect_out_308"
	fps 40
	// snap
}

$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Wrist"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"

$collisionmodel "Main.smd"
{
	$mass 5
}