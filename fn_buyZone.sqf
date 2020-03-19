scriptName "fn_buyZone";
/*----------------------------------------------
	File:      fn_buyZone.sqf
	Author:    ArmApps (www.armapps.net)
----------------------------------------------*/
#define __filename "fn_buyZone.sqf"

params ["","","",["_type", "", [""]]];

{
	private _price = getNumber (_x >> "price");

	if (life_cash < _price) exitWith { hint (["msgNoMoney"] call aan_illegal_stuff_fnc_getLocalization) };
	if ((aan_illegal_zone_purchased find _type) isEqualTo 0) exitWith { hint (["msgAlreadyPurchased"] call aan_illegal_stuff_fnc_getLocalization) };

	private _pos = getArray (_x >> "pos");
	private _marker = createMarkerLocal [(getText (_x >> "marker")), [_pos#0, _pos#1, _pos#2]];

	hint format [("msgPurchased") call aan_illegal_stuff_fnc_getLocalization, _type];

	life_cash = life_cash - _price;
	aan_illegal_zone_purchased pushBack _type;

	_marker setMarkerColorLocal (getText (_x >> "color"));
	_marker setMarkerTextLocal (getText (_x >> "text"));
	_marker setMarkerTypeLocal (getText (_x >> "type"));

	if ((getNumber (_x >> "ellipse")) isEqualTo 1) then {
		private _ellipse = createMarkerLocal [ format ["%1_area", _type], [_pos#0, _pos#1, _pos#2]];
		_ellipse setMarkerColorLocal "ColorWhite";
		_ellipse setMarkerShapeLocal "ellipse";
		_ellipse setMarkerBrushLocal "Solid";
		_ellipse setMarkerSizeLocal [30,30];
	};
} forEach (format ["getText (_x >> 'variable') isEqualTo '%1'", _type] configClasses (missionConfigFile >> "armapps_illegal_stuff_cfg" >> "resources"));
