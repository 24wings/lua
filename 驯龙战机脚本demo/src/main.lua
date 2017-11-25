--2015年11月24日 16:17:05
--简单的demo, public为公共库函数, i5为i5机型分辨率颜色数据, 其他数据类似直接修改颜色数据即可 require m2之类

require "i5"
local bid = "com.tencent.dragon3D"
local t = {}

function main()
	isSupport()
	startGame()
	selectFun()

end

function endlessMode()   --无尽模式
	t["无尽模式"].enterClick()
	mSleep(3000)
	
	t["无尽模式"].attackClick()
	mSleep(3000)
	
	while true do
		t["无尽模式"].attackClick()
		mSleep(3000)
		t["无尽模式"].attackClick()
		mSleep(3000)
		t["无尽模式"].attackClick()
		mSleep(3000)
		
		while (true) do
			keepScreen(true)
			if cmpColorEx(t["战斗界面"]) then
				mSleep(10000)   --延迟10秒
				break
			end

			keepScreen(false)
			mSleep(2000)
		end
		keepScreen(false)
		
		--战斗界面移动	
		t["战斗"].moveDown()
		while (true) do
			keepScreen(true)
			
			
			if cmpColorEx(t["本次得分"]) then
				t["本次得分"].click()
				mSleep(4000)
				break
			end
			
			if cmpColorEx(t["死亡"]) then
				t["死亡"].click()
				mSleep(5000)
			end
			
			
			t["战斗"].moveRight()
			mSleep(700)
			t["战斗"].moveLeft()
			mSleep(700)
			keepScreen(false)
		end
		keepScreen(false)
	
	end	
	
	
end

function  isSupport()
	local width, height = getScreenSize()
	if width == 640 and height == 1136 then
		t = init_ios_i5()
	elseif width == 640 and height == 1136 then
		dialog("请在设置->显示与亮度->显示模式调整为放大模式后重新启动", 5)
		lua_exit()
	else
		dialog("不支持此机型,脚本退出", 5)
		lua_exit()
	end
end

function startGame()
	if isFrontApp(bid) == 0 then     --游戏不处于前台
		runApp(bid)					 --启动游戏
		mSleep(5000)
	end
	
	init(bid, 0)					--初始化,不用加延迟\
	while (true) do
		keepScreen(true)
		
		if cmpColorEx(t["进入游戏"]) then
			t["进入游戏"].click()
		end
		
		if cmpColorEx(t["精彩活动"]) then
			t["精彩活动"].click()
			mSleep(2000)
		elseif cmpColorEx(t["游戏界面"]) then 
			break
		end
		
		
		keepScreen(false)
		mSleep(2000)
	end
	keepScreen(false)
	
	
end

function selectFun()
	endlessMode()
end



main()