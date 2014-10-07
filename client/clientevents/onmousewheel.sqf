//	@file Name: onMouseWheel.sqf

if (!isNil "playerMenuHandle") then { terminate playerMenuHandle };

playerMenuHandle = [] spawn
{
	waituntil {!isnull player};
	private ["_veh"];
	while {true} do {
		waituntil {sleep 0.1; vehicle player == player};
		if (!isnil "_veh") then {_veh removeaction playerMenuId};
		playerMenuId = player addAction [format ["<img image='client\icons\playerMenu.paa' color='#ff7f00'/> <t color='#ff7f00'>%1</t>", "[<t color='#FFFFFF'>Player Menu</t><t color='#ff7f00'>]</t>"], "client\systems\playerMenu\init.sqf", [], -10, false, false, "", "local player"];
		//c
                playerWeaponId = player addAction [format ["<t color='#219eff'>%1</t>", "ParaStore"], "client\systems\parastore\loadmenu.sqf",[],-9,false,false,"","local player"];
//cend
                waituntil {sleep 0.1; vehicle player != player};
		player removeaction playerMenuId;
                 player removeaction playerWeaponId; //cline
		_veh = vehicle player;
		playerMenuId = _veh addAction [format ["<img image='client\icons\playerMenu.paa' color='#ff7f00'/> <t color='#ff7f00'>%1</t>", "[<t color='#FFFFFF'>Player Menu</t><t color='#ff7f00'>]</t>"], "client\systems\playerMenu\init.sqf", [], -10, false, false, "", "local player"];
               };
};
