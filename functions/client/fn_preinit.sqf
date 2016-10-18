if (!hasInterface) exitWith {};

[] spawn {
	private ["_state"];
	_state = 0;

	while {true} do {
		waitUntil {sleep 0.1; !(_state isEqualTo getClientStateNumber)};
		if (!isNull player) then {
			_state = getClientStateNumber;
			player setVariable ["state",_state,true];
			if (_state isEqualTo 10) then {
				player setPosATL [worldSize/2,worldSize/2,0];
			};
		};
	};
};