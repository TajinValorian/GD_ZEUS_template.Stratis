if (!isServer) exitWith {};
	private ["_countdown","_minvotes","_minvoters","_loop","_list","_pcount","_votes","_max","_most","_nam","_v","_txt","_force"];

	_countdown = 5;
	_minvotes = 1;
	_minvoters = 0.5;

	missionNamespace setVariable ["zeusVote", true, true];
	[] remoteExec ["T_fnc_zeusVote"];

	_loop = _countdown;
	while {_loop > 0} do {
		sleep 1;

		_list = allPlayers - entities "HeadlessClient_F";
		_force = "";
		_pcount = count _list;
		if ( { if ( (_x getVariable ["state",0]) <= 8 ) exitWith {false}; true } forEach _list ) then {

			_votes = [];
			{
				_votes pushBack (_x getVariable ["votefor",""]);
				if (_x getVariable ["force",""] != "") then {
					_force = _x getVariable ["force",""];
				};
				true
			} count _list;

			_max = -1;
			_most = objNull;
			{
				_nam = name _x;
				_v = count (_votes select {_x isEqualTo _nam});
				_x setVariable ["votes", _v, true];

				if (_v == _max) then {
					_most = objNull;
				};
				if (_v > _max) then {
					_max = _v;
					_most = _x;
				};

				if (_nam isEqualTo _force) then {
					_loop = 0;
					_max = 99;
					_most = _x;
				};

				true
			} count _list;

			if ( count (_votes select {_x != ""}) > (_minvoters * _pcount) ) then {
				if (_max >= _minvotes) then {
					if (!isNull _most) then {
						_loop = _loop - 1;
						str(_loop) remoteExec ["hint"];
					};
				};
			} else {
				_loop = _countdown;
			};
		};
	};
	missionNamespace setVariable ["zeusVote", false, true];
	[_most] remoteExec ["T_fnc_setZeus"];
	_txt = format["%1 has been voted GM, with %2 votes.", name _most, _max];
	_txt remoteExec ["hintC"];