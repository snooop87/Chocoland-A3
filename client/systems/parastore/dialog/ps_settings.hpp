#include "genstoreDefines.sqf"

class genstored {

	idd = genstore_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	

	class controlsBackground {
		
		class MainBackground: w_RscPicture
		{
			idc = -1;
			colorText[] = {1, 1, 1, 1};
                        colorBackground[] = {0,0,0,0};
			text = "\ca\ui_f_data\Logos\Universalarma3_splash_ca.paa";
			moving = true;
			x = 0.1875 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.55 * safezoneW;
			h = 0.65 * safezoneH;
		};

		
	};
	
	class controls {
		
		//font = "PuristaMedium";
			//sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			
		 class loadChopStore: w_RscButton
		{
			idc =-1;
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\GunStore\loadGunStore.sqf'";
			font = "PuristaMedium";
			sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			
                        text = "-> Weapons";

			x = 0.020313 * safezoneW + safezoneX;
			y = 0.036111 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;

		};
                  class loadgenStore: w_RscButton
		{
			idc = -1;font = "PuristaMedium";
			sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			
			onButtonClick = "closeDialog 0; []execVM 'client\systems\menu\animal.sqf'";
			text = "-> Animal Mode";

			x = 0.220313 * safezoneW + safezoneX;
			y = 0.036111 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;

		};
                class loadVehStore: w_RscButton
		{
			idc =-1;font = "PuristaMedium";
			sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\vehicleStore\loadVehStore.sqf'";
			text = "-> Vehicles";

			x = 0.120313 * safezoneW + safezoneX;
			y = 0.036111 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;
		};
                 class loadChopStore3: w_RscButton
		{
			idc =-1;font = "PuristaMedium";
			sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\ChopperStore\loadChopStore.sqf'";
			text = "-> Airplanes";

			x = 0.020313 * safezoneW + safezoneX;
			y = 0.421852 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;

		};
                 class loadBuildStore: w_RscButton
		{
			idc = -1;font = "PuristaMedium";
			sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\BuildStore\loadBuildStore.sqf'";
			text = "-> Buildings";

			x = 0.120313 * safezoneW + safezoneX;
			y = 0.421852 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;

		};
                 
                 class loadfunStore2: w_RscButton
		{
			idc = -1;font = "PuristaMedium";
			sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\generalStore\loadGenStore.sqf'";
			text = "-> Choco Generals";

			x = 0.220313 * safezoneW + safezoneX;
			y = 0.421852 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;

		};
                class smartAmmobutton: w_RscButton
		{
			idc = -1;font = "PuristaMedium";
			sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			
			onButtonClick = "[] execVM 'client\systems\gunStore\smartammo.sqf'";
			text = "Smart Ammo buy";

			x = 0.3 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.04 * safezoneH;

		};
		
	};
};

