//	@file Name: refresh.sqf
//	@file Author: AgentRev, MercifulFate
//	@file Function: mf_items_cratemoney_refresh

#include "defines.sqf"
disableSerialization;

private ["_crate", "_dialog", "_funds", "_input", "_amount"];

_crate = call mf_items_cratemoney_nearest;
_dialog = findDisplay IDD_WARCHEST;

if (isNull _dialog) exitWith {};
if (isNull _crate) exitWith { closeDialog IDD_WARCHEST };

_funds = _dialog displayCtrl IDC_FUNDS;
_funds ctrlSetText format ["$%1", [_crate getVariable ["cmoney", 0]] call fn_numbersText];

_input = _dialog displayCtrl IDC_AMOUNT;
_amount = floor parseNumber ctrlText _input;

if (_amount < 1e6 && _amount > -1e6) then
{
	_input ctrlSetText str _amount;
};
