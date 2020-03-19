scriptName "fn_init";
/*----------------------------------------------
	File:      fn_init.sqf
	Author:    ArmApps (www.armapps.net)
----------------------------------------------*/
#define __filename "fn_init.sqf"

0 spawn {
	diag_log "[AAN - Script]: Illegal Zone initialized.";
	
	// -- Client
	if (hasInterface) then {
		aan_illegal_zone_purchased = [];
	};
};