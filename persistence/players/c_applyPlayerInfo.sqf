//	@file Name: c_applyPlayerInfo.sqf
//	@file Author: AgentRev

if (isDedicated) exitWith {};

private ["_data", "_name", "_value"];

_data = _this;

{
	_name = _x select 0;
	_value = _x select 1;

	switch (_name) do
	{
		case "Donator": { player setVariable ["isDonator", _value > 0] };
		case "BankMoney": { player setVariable ["bmoney", _value max 0] }; 
	};
} forEach _data;