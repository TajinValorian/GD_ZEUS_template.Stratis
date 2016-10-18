class T_UI_inputBox {
	idd = -1;
	movingenable = false;
	onLoad = "[_this,'T_inputBox','load'] call T_fnc_handleUI;";

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
			text = ".";
			x = "SafeZoneX + (500 / 1920) * SafeZoneW";
			y = "SafeZoneY + (200 / 1080) * SafeZoneH";
			w = "(800 / 1920) * SafeZoneW";
			h = "(16 / 1080) * SafeZoneH";
		};
		class input : RscEdit {
			idc = 1;
			x = "SafeZoneX + (500 / 1920) * SafeZoneW";
			y = "SafeZoneY + (240 / 1080) * SafeZoneH";
			w = "(800 / 1920) * SafeZoneW";
			h = "(16 / 1080) * SafeZoneH";
		};
		class ok : RscButton	{
			idc = 2;
			text = "Ok";
			onButtonClick = "[_this,'T_inputBox','ok'] call T_fnc_handleUI";
			x = "SafeZoneX + (500 / 1920) * SafeZoneW";
			y = "SafeZoneY + (280 / 1080) * SafeZoneH";
			w = "(150 / 1920) * SafeZoneW";
			h = "(25 / 1080) * SafeZoneH";
		};
		class cancel : RscButton	{
			idc = 3;
			text = "Cancel";
			onButtonClick = "[_this,'T_inputBox','cancel'] call T_fnc_handleUI";
			x = "SafeZoneX + (500 / 1920) * SafeZoneW";
			y = "SafeZoneY + (280 / 1080) * SafeZoneH";
			w = "(150 / 1920) * SafeZoneW";
			h = "(25 / 1080) * SafeZoneH";
		};
	};
};