/*----------------------------------------
	Author: 	ArmApps
	Website: 	https://armapps.net
----------------------------------------*/
#define __filename "fn_init.sqf"

0 spawn {
	diag_log "[AAN - Script]: Illegal Zone initialized.";
	
	// -- Client
	if (hasInterface) then {
		aan_illegal_zone_purchased = [];
	};
};