_cname = ["Enter a name for the new campaign.",4] call T_fnc_inputBox;
_cpass = ["Set a password for the new campaign (optional).",0] call T_fnc_inputBox;
[_cname,_cpass] remoteExec ["T_fnc_s_newCampaign",2];

params [["_cname",""],["_cpass",""]];

_cid = campaignCount + 1;
campaignCount = _cid;
profileNamespace setVariable ["T_campaignCount", campaignCount];
profileNamespace setVariable ["T_campaign_name_" + _cid, _cname];
profileNamespace getVariable ["T_campaign_password_" + _cid, _cpass];
profileNamespace getVariable ["T_campaign_data_" + _cid, []];