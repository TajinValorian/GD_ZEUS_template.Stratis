params ["_title",["_minlen",0]];

T_inputBox_value = nil;
while {isNil "T_inputBox_value"} do {
	_dlg = createDialog "T_UI_inputBox";

	if (_minlen isEqualTo 0) then {
		ctrlEnable [3, true]; // cancel button
		T_inputBox_value = "";
	} else {
		ctrlEnable [3, false]; // cancel button
	};

	ctrlSetText [4, _title];
	waitUntil {	!dialog	};

	if ((count T_inputBox_value) < _minlen) then {
		hint format ["Your input has to be at least %1 characters long.", _minlen];
		T_inputBox_value = nil;
	};
};

T_inputBox_value