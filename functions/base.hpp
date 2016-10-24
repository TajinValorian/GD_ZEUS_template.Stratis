	class T
	{
		class client
		{
			class preinit { preInit = 1; };
			class handleUI {};
			class zeusVote {};
			class campaignSelect {};
			class isAdminLogged {};
			class isAdmin {};
			class blockESC {};
			class newCampaign {};
			class loadCampaign {};
			class deleteCampaign {};
			class inputBox {};
		};
		class server
		{
			class s_preinit { preInit = 1; };
			class s_zeusVote {};
			class s_newCampaign {};
			class s_loadCampaign {};
			class s_deleteCampaign {};
		};
		class shared
		{
			class setZeus {};
		};
	};