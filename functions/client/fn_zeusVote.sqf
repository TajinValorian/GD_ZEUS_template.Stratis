waitUntil {sleep 0.1; getClientStateNumber > 8};

while {zeusVote} do {
	_dlg = createDialog "T_UI_zeusVote";
	waitUntil {
		if (([] call T_fnc_isAdminLogged) && ((lbCurSel 1) > -1)) then {
			ctrlEnable [2,true];
		} else {
			ctrlEnable [2,false];
		};

		lbClear 1;
		_list = allPlayers - entities "HeadlessClient_F";
		{
			_v = _x getVariable ["votes",0];
			_nam = name _x;
			_i = lbAdd [1, format["(%1) %2", _v, _nam] ];
			lbSetTooltip [1,_i,_v];
			lbSetData [1,_i,_nam];
		} count _list;
		player setVariable ["votefor", lbData [1, lbCurSel 1], true];

		if (!zeusVote) then {
			closeDialog 1;
		};

		sleep 0.5;
		!dialog
	};
};