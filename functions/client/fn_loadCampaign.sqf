params [["_cid",""],["_nam",""]];

_cpass = "";
if (_cid in lockedCampaigns) then {
	_cpass = [format["The campaign '%1' requires a password:",_nam],0] call T_fnc_inputBox;
};

[_cid,_cpass] remoteExec ["T_fnc_s_loadCampaign",2];