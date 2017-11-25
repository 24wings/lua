require "public"

function init_ios_i5()
	local t = {}
	t["进入游戏"] = --取色列表
	{
		{317,1048,0xeeaa00},
		{242,1032,0xffcc44},
		{260,1054,0xeeaa00},
		{406,1052,0xeeaa00},
		{393,1032,0xffcc44},
		click = function ()
			tap(319,1046)
		end
	}
	
	t["精彩活动"] = --取色列表
	{
		{388,80,0x5f3b22},
		{391,966,0xe8ae00},
		{330,936,0xf4c445},
		{249,965,0xe8ae00},
		{254,76,0x6a4327},
		click = function ()
			tap(324,963)
		end
	}
	
	t["游戏界面"] = --取色列表
	{
		{59,820,0x5181c1},
		{88,803,0x4469b1},
		{583,848,0x444ea6},
		{602,842,0x444ca5},
		{624,831,0x4649aa},
		click = function ()
			tap()
		end
	}
	
	t["无尽模式"] = 
	{
		enterClick = function ()	--进入无尽模式点击
			tap(149,1029)
		end,
		
		attackClick = function ()   --出击点击
			tap(316,935)
		end
	}
	
	t["战斗界面"] = --取色列表
	{
		{596,29,0xffffed},
		{612,30,0xffffdf},
		{415,1107,0xd0f222},
		{427,1102,0xffffff},
		{401,1103,0xffffee},
	}
	
	
	t["死亡"] = 
	{
		{432,706,0xbbdd33},
		{181,724,0x6d3603},
		{157,704,0xffcc44},
		{249,736,0xdd9900},
		{377,736,0x66aa00},
		click = function ()
			tap(203,721)
		end
	}
	
	
	t["本次得分"] = --取色列表
	{
		{493,1065,0x76a908},
		{405,1064,0x76a908},
		{177,1073,0xe8ae00},
		{266,980,0xe8ae00},
		{377,979,0xe8ae00},
		click = function ()
			tap(194,1052)
		end
	}
	
	t["战斗"] = 
	{
		moveDown = function ()
			swip(319,  917,  325, 1094)  --向下
			mSleep(500)
			swip(315, 1104,  134, 1100)  --向左移动
			mSleep(500)
		end,
		
		moveLeft = function ()
			swip(540, 1090,  135, 1090)
		end,
		
		moveRight = function ()
			swip(135, 1090,  540, 1090)
		end,
	}
	return t
end