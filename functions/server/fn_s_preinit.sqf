if (!isServer) exitWith {};

campaignCount = profileNamespace getVariable ["T_campaignCount",0];
campaignIds = [];
campaignNames = [];
lockedCampaigns = [];
if (campaignCount > 0) then {
	{
		if ((_x select [0,16]) isEqualTo "T_campaign_name_") then {
			campaignNames pushBack (profileNamespace getVariable _x);

			_id = _x select [16];
			campaignIds pushBack _id;

			_pw = profileNamespace getVariable ["T_campaign_password_" + _id, ""];
			if ("pw" != "") then {
				lockedCampaigns pushBack _id;
			};
		};
	} count (allVariables profileNamespace);
};

publicVariable "campaignIds";
publicVariable "campaignNames";
publicVariable "lockedCampaigns";

gm = objNull;
[] spawn T_fnc_s_zeusVote;

