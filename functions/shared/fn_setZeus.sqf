params ["_zeus"];
gm = _zeus;
if (isServer) then {
	_zeus assignCurator zeus;

	if (isNil "T_campaign_name") then {
		[] remoteExec ["T_fnc_campaignSelect", gm];
	};
};