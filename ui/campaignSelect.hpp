class T_UI_campaignSelect {
	idd = -1;
	movingenable = false;
	onLoad = "[_this,'T_campaignSelect','load'] call T_fnc_handleUI;";

	class controls
	{
		class MyIGUIBack : IGUIBack	{
			w = "SafeZoneW";
			h = "SafeZoneH";
			x = "SafeZoneX";
			y = "SafeZoneY";
			colorBackground[] = {0, 0, 0, 0.25};
		};
		class Title : RscText {
			idc = 4;
			text = "Select the a campaign to load, or create a new one:";
			x = "SafeZoneX + (500.000000000001 / 1920) * SafeZoneW";
			y = "SafeZoneY + (200 / 1080) * SafeZoneH";
			w = "(800 / 1920) * SafeZoneW";
			h = "(16 / 1080) * SafeZoneH";
		};
		class campaignList : RscListBox {
			idc = 1;
			colorSelect[] = {0, 0, 0, 1};
			colorBackground[] = {1, 1, 1, 0.1};
			x = "SafeZoneX + (500 / 1920) * SafeZoneW";
			y = "SafeZoneY + (240 / 1080) * SafeZoneH";
			w = "(240 / 1920) * SafeZoneW";
			h = "(455.000000000001 / 1080) * SafeZoneH";
			onLBListSelChanged = "[_this,'T_campaignSelect','select'] call T_fnc_handleUI;";
		};
		class cLoad : RscButton	{
			idc = 2;
			text = "Load campaign";
			onButtonClick = "[_this,'T_campaignSelect','load'] call T_fnc_handleUI";
			x = "SafeZoneX + (944.999999999999 / 1920) * SafeZoneW";
			y = "SafeZoneY + (670 / 1080) * SafeZoneH";
			w = "(150 / 1920) * SafeZoneW";
			h = "(25 / 1080) * SafeZoneH";
		};
		class cNew : RscButton	{
			idc = 5;
			text = "New campaign";
			colorBackground[] = {0, 1, 0, 1};
			onButtonClick = "[_this,'T_campaignSelect','new'] call T_fnc_handleUI";
			x = "SafeZoneX + (944.999999999999 / 1920) * SafeZoneW";
			y = "SafeZoneY + (640 / 1080) * SafeZoneH";
			w = "(150 / 1920) * SafeZoneW";
			h = "(25 / 1080) * SafeZoneH";
		};
		class cDelete : RscButton	{
			idc = 5;
			text = "Delete campaign";
			colorBackground[] = {1, 0, 0, 1};
			onButtonClick = "[_this,'T_campaignSelect','delete'] call T_fnc_handleUI";
			x = "SafeZoneX + (944.999999999999 / 1920) * SafeZoneW";
			y = "SafeZoneY + (600 / 1080) * SafeZoneH";
			w = "(150 / 1920) * SafeZoneW";
			h = "(25 / 1080) * SafeZoneH";
		};
		class info : RscText {
			idc = 3;
			text = " ";
			x = "SafeZoneX + (746 / 1920) * SafeZoneW";
			y = "SafeZoneY + (239.04 / 1080) * SafeZoneH";
			w = "(258.999999999999 / 1920) * SafeZoneW";
			h = "(420.999999999999 / 1080) * SafeZoneH";
		};
	};
};