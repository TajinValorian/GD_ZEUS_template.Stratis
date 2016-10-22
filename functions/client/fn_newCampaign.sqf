_cname = ["Enter a name for the new campaign.",4] call T_fnc_inputBox;
_cpass = ["Set a password for the new campaign (optional).",0] call T_fnc_inputBox;
[_cname,_cpass] remoteExec ["T_fnc_s_newCampaign",2];