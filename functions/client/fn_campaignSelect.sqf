T_campaign_name = nil;

while {isNil "T_campaign_name"} do {
	_dlg = createDialog "T_UI_campaignSelect";

	lbClear 1;
	{
		_i = lbAdd _x;
		lbSetData [1,_i,(campaignIds select _forEachIndex)];
	} forEach campaignNames;

	waitUntil {	!dialog	};
}