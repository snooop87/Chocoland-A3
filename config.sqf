//	@file Version: 1.0
//	@file Name: config.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [GoT] JoSchaap, AgentRev
//	@file Created: 20/11/2012 05:13
//	@file Description: Main config.

// For SERVER CONFIG, values are in server\init.sqf

// Towns and cities array
// Marker Name, Diameter, City Name
weaponsArray = [
  
	[5, "Stinger","Stinger",10000,5000],
	[5, "Strela-2","Strela",10000,5000]
];
ammoArray = [
	["1 Laser Batterie","Laserbatteries",1500],
	["1 IR Marker Strobe","IR_Strobe_Marker",2000]
];
accessoriesArray = [
	["GPS","ItemGPS", 1000],
	["NV Goggles","NVGoggles",1000],
	["Range Finder","Binocular_Vector",1000],
        ["Laser Marker","Laserdesignator",1000],
        ["Binocular","Binocular",500]
];
generalStore = [
["Rainbow Flares","rflares",localize "STR_WL_ShopDescriptions_rainbow","client\icons\water.paa",10000,1],
		["Ultimate Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\repair.paa",10000,2],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",2000,1],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",1500,1],
    ["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",500,1],
	["Spawn Beacon","spawnBeacon",localize "STR_WL_ShopDescriptions_spawnBeacon","client\icons\satellite.paa",10000,1],
    ["ChocoBomb", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\tent.paa",5000,1],
    ["Bet your Money/chocos","chocos",localize "STR_WL_ShopDescriptions_chocos","client\icons\health.paa",0,0],
    ["Unlock Decoder", "decoder", localize "STR_WL_ShopDescriptions_decoder", "client\icons\gunner.paa",250000,25], 
    ["Unlock Basebuilder", "basebuilder", localize "STR_WL_ShopDescriptions_basebuilder", "client\icons\passenger.paa",250000,25],
   ["Unlock attach", "attach","", "client\icons\passenger.paa",250000,25],
 //["Unlock upgrades", "upgrades","", "client\icons\passenger.paa",250000,15],
["Cow for the Win","cow", localize "STR_cow04", "client\images\Cow04.paa",20000,2],
["Goat gives Milk","goat", localize "STR_goat", "client\images\Goat.paa",30000,3],
["get 2 random Weapons","rweapon", localize "STR_rweapon", "client\images\choco.paa",6000,1],
["get random Vehicle","rvehicle", localize "STR_rvehicle", "client\images\choco.paa",10000,3],//3
["let all players know your Name","name", localize "STR_name", "client\images\choco.paa",50000,5],
["Dance on the Island","dance", localize "STR_dance", "client\images\dance.paa",50000,5],
["Hen","Hen", localize "STR_hen", "client\images\Hen.paa",50000,4],
["German shepherd","Pastor", localize "STR_shepard","client\images\Pastor.paa",100000,5],
["Terror Rabid","rabbid", localize "STR_rabbit","client\images\Rabbit.paa",100000,10],
["Teleport to maplocation","tel", localize "STR_tele","client\images\choco.paa",100000,10],
["receive reinforcement","npc", localize "STR_bot","client\images\reinforcement.paa",250000,12],
["5m No Recoil + Random Vehicle","recoil", localize "STR_recoil","client\images\choco.paa",250000,10],
["1ClickBase","base", localize "STR_1click","client\images\choco.paa",250000,10],
["Satelite Camera","satcam", localize "STR_Satcom","client\images\satcam.paa",250000,10],
["Baseshield 1m","baseshield", localize "STR_Baseshield","client\images\shieldx.paa",500000,10],
//["Kill Player","killplayer", localize "STR_kill","client\images\killx.paa",600000,20],
["Kill yourself?","death", localize "STR_suicide","client\images\death.paa",1000000,50],
["Mothership","ship", localize "STR_Mothership","client\images\frigate.paa",5000000,50]
];
ChopperStoreArray = [
     
	["A10", 100000,"A10"],
        ["Mi-24P", 300000,"Mi24_P"]
];
vehicleStoreArray = [
        ["FV510 Warrior", 90000,"BAF_FV510_W"],
        ["M1A2 TUSK [USMC]", 100000,"M1A2_TUSK_MG"]
];

//cend
BuildStoreArray = [

["GMG Mini TriPod",60000,"BAF_GMG_Tripod_D",11],
["M252",100000, "M252",11]
];
cityList = compileFinal str
[
	["Town_1", 200, "Air Station Mike-28"],
	["Town_2", 100, "Agios Loannis"],
	["Town_3", 100, "Agios Cephas"],
	["Town_4", 200, "Girna"],
	["Town_5", 200, "Camp Tempest"],
	["Town_6", 300, "Stratis Airbase Town"],
	["Town_7", 250, "Stratis Airbase Runway"],
	["Town_8", 350, "Agia Marina"],
	["Town_9", 250, "Kill Farm"],
	["Town_10", 200, "Camp Rogain"],
	["Town_11", 230, "Kamino Firing Range"],
	["Town_12", 240, "Camp Maxwell"],
	["Town_13", 150, "ol-Kamino"],
	//["Town_14", 15, "Isla Pythos"],  // do not increase radius, else vehicles and objects will spawn on the island! // who the heck thought a town on an island was a good idea!?
	["Town_15", 100, "Baldy Barracks"],
	["Town_16", 175, "ol-Keiros"],
	["Town_17", 175, "Tsoukalia"],
	["Town_18", 100, "LZ Connor"],
	["Town_19", 180, "Playa-del-Stragos"],
	["Town_20", 250, "ol-Jay"]
];

/*
militarylist = compileFinal str
[
	["milSpawn_1"],
	["milSpawn_2"],
	["milSpawn_3"]
];
*/

config_items_jerrycans_max = compileFinal "1";
config_items_syphon_hose_max = compileFinal "1";

config_refuel_amount_default = compileFinal "0.25";
config_refuel_amounts = compileFinal str
[
	["Quadbike_01_base_F", 0.50],
	["Tank", 0.10],
	["Air", 0.10]
];

// NOTE: Player saving and money settings moved to external config (A3Wasteland_settings\main_config.sqf), default values are set in server\default_config.sqf

// Is player saving enabled?
// config_player_saving_enabled = compileFinal "0";

// How much do players spawn with?
// config_initial_spawn_money = compileFinal "100";

// Territory system definitions. See territory/README.md for more details.
//
// Format is:
// 1 - Territory marker name. Must begin with 'TERRITORY_'
// 2 - Descriptive name
// 3 - Monetary value
// 4 - Territory category, currently unused. See territory/README.md for details.
config_territory_markers = compileFinal str
[
	["TERRITORY_AGIA_NORTH", "North Agia Marina", 200, "TOWN"],
	["TERRITORY_AGIA_SOUTH", "South Agia Marina", 200, "TOWN"],
	["TERRITORY_AGIOS_CEPHAS", "Agios Cephas", 200, "TOWN"],
	["TERRITORY_AGIOS_IOANNIS", "Agios Ioannis", 200, "TOWN"],
	["TERRITORY_AIRBASE_NORTH", "North Stratis Airbase", 500, "AIRBASE"],
	["TERRITORY_AIRBASE_SOUTH", "South Stratis Airbase", 500, "AIRBASE"],
	["TERRITORY_AIRSTATION_MIKE", "Air Station Mike", 200, "MILITARY"],
	["TERRITORY_CAMP_MAXWELL", "Camp Maxwell", 200, "MILITARY"],
	["TERRITORY_CAMP_ROGAIN", "Camp Rogain", 200, "MILITARY"],
	["TERRITORY_CAMP_TEMPEST", "Camp Tempest", 200, "MILITARY"],
	["TERRITORY_GIRNA", "Girna", 200, "TOWN"],
	["TERRITORY_JAY_COVE", "Jay Cove", 200, "TOWN"],
	["TERRITORY_KAMINO_FIRING_RANGE", "Kamino Firing Range", 200, "MILITARY"],
	["TERRITORY_KAMINO_SETTLEMENT", "Kamino Settlement", 200, "TOWN"],
	["TERRITORY_KILL_FARM", "Kill Farm", 200, "TOWN"],
	["TERRITORY_LIMERI_BAY", "Limeri Bay", 200, "TOWN"],
	["TERRITORY_LZ_BALDY", "LZ Baldy", 200, "MILITARY"],
	["TERRITORY_LZ_CONNOR", "LZ Connor", 200, "MILITARY"],
	["TERRITORY_PYTHOS", "Pythos Island", 200, "ISLAND"],
	["TERRITORY_RADIO_TOWERS", "Radio Towers", 200, "MILITARY"]
];

