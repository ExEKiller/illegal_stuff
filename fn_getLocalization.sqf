/*----------------------------------------
	Author: 	ArmApps
	Website: 	https://armapps.net
----------------------------------------*/
#define __filename "fn_getLocalization.sqf"

params [["_name", "", [""]]];

getText (missionConfigFile >> "armapps_illegal_stuff_cfg" >> "localization" >> _name);