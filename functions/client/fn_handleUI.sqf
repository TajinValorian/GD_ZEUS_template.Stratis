params ["_data","_name","_state"];
_data params ["_dlg","_ctrl"];

if (_state isEqualTo "load") then {	// save dialog in variable for later use & disable closing dlg with ESC
	systemChat str(_dlg);
	_dsp = findDisplay _dlg;
	missionNamespace setVariable [format["%1_dlg", _name], _dlg];
	missionNamespace setVariable [format["%1_dsp", _name], _dsp];
	_dsp displayAddEventHandler ["KeyDown", {_this call T_fnc_blockESC;}];
};

switch (_name) do
{
	case "T_zeusVote":
	{
		switch (_state) do
		{
			case "select":
			{
				player setVariable ["votefor", lbData [1, lbCurSel 1], true];
			};

			case "force":
			{
				player setVariable ["force", lbData [1, lbCurSel 1], true];
				false
			};

			default
			{
				true
			};
		};
	};

	case "T_campaignSelect":
	{
		switch (_state) do
		{
			case "load":
			{
				T_campaign_name = "#load";
				_cid = lbData [1, lbCurSel 1];
				_nam = lbText [1, lbCurSel 1];
				[_cid,_nam] call T_fnc_loadCampaign;
			};

			case "new":
			{
				T_campaign_name = "#new";
				[] call T_fnc_newCampaign;
			};

			case "delete":
			{
				T_campaign_name = "#delete";
				_cid = lbData [1, lbCurSel 1];
				_nam = lbText [1, lbCurSel 1];
				[_cid,_nam] call T_fnc_deleteCampaign;
			};
		};
	};

	case "T_inputBox":
	{
		switch (_state) do
		{
			case "ok":
			{
				T_inputBox_value = ctrlText 1;
			};

			case "cancel":
			{
			};
		};
	};
};