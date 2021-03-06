//	@file Name: updatePlayerMissionMarkers.sqf

{deleteMarkerLocal _x} forEach currentMissionsMarkers;
currentMissionsMarkers = [];

if (!isNil "clientMissionMarkers") then
{
	private "_marker";

	{
		if (typeName _x == "ARRAY") then
		{
			_marker = createMarkerLocal [_x select 0, _x select 1];
			_marker setMarkerTypeLocal "mil_destroy";
			_marker setMarkerSizeLocal [1.25, 1.25];
			_marker setMarkerColorLocal "ColorRed";
			_marker setMarkerTextLocal (_x select 2);

			currentMissionsMarkers pushBack (_x select 0);
		};
	} forEach clientMissionMarkers;
};
