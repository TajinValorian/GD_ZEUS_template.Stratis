params [["_cid",""],["_nam",""]];

_cconf = [format["Type the campaign name to confirm deleting it: '%1'",_nam],0] call T_fnc_inputBox;
if (_cconf isEqualTo _nam) then {
	_cpass = "";
	if (_cid in lockedCampaigns) then {
		_cpass = [format["Enter the password for campaign '%1'.",_nam],0] call T_fnc_inputBox;
	};

	[_cid,_cpass] remoteExec ["T_fnc_s_deleteCampaign",2];
} else {
	hint "Confirmation failed."
};
