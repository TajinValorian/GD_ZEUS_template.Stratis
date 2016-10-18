params ["_dlg","_name","_state"];

if (_state isEqualTo "load") then {	// save dialog in variable for later use & disable closing dlg with ESC
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
};