

//	@file Version: 1.0
//	@file Name: addToCart.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:13
//	@file Args:

#include "dialog\genstoreDefines.sqf";
disableSerialization;

//if (local player) then {

	//Initialize Values
	_price = 0;
        _price2 = 0;
	_checkWeapon = "";
	_checkAmmo = "";
	_checkAccessor = "";

	// Grab access to the controls
	_dialog = findDisplay genstore_DIALOG;
	_itemlist = _dialog displayCtrl genstore_item_list;
	_cartlist = _dialog displayCtrl genstore_cart;
	_totalText = _dialog displayCtrl genstore_total;
_totalText2 = _dialog displayCtrl genstore_total2;
	_selectedItem = lbCurSel _itemlist;
	_itemText = _itemlist lbText _selectedItem;
		{
        	//if(_x select 0 == _itemText) then
            //{
                if(_x select 0 == _itemText) then
              {
                    _price = _x select 4;
                    _price2 = _x select 5;
                    if(_x select 0 == "Bet your Money")then {
                        _chocos = player getvariable"choco";
                        _price = _chocos;
                        };
                        if(_x select 0 == "Spawn Beacon")then {
                        _chocos = player getvariable"choco";
                        _min1 = Round(_chocos /100);
                        _price = _price + _min1;
                        };
                       
               };
            //};   
        }forEach generalStore;
	// };

	//Check Items Price
	genStoreCart = _price;
        genStoreCart2 =_price2;
	_totalText CtrlsetText format["MoneyTotal: $%1", genStoreCart];
        _totalText2 CtrlsetText format["ChocoTotal: $%1", genStoreCart2];
	lbClear _cartlist;
        _cartlist lbAdd format["%1",_itemText];
        