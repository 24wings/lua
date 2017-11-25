function main()
    while true do
      keepScreen(true) 
            --找单键颜色
      local ax, ay = findColorInRegionFuzzy(0x26d3cd, 80, 120,129, 170,346); 
      local bx, by = findColorInRegionFuzzy(0x26d3cd, 80, 120,396, 170,622); 
      local cx, cy = findColorInRegionFuzzy(0x26d3cd, 80, 120,667, 170,869); 
      local dx, dy = findColorInRegionFuzzy(0x26d3cd, 80, 120,952, 170,1132); 
      
      if ay~= -1 or  by ~= -1 or cy ~= -1 or dy ~= -1 then
        if ay~= -1 then
          tap(90,176)
        end
        if by~= -1 then
          tap(91,484)
        end
        if cy~= -1 then
          tap(90,795)
        end
        if dy~= -1 then
          tap(90,1106)
        end
      end
      绿色()
      keepScreen(false)
      mSleep(10)
    end
    end
    
    
    function 长按(x,y)
    local intx,inty,inty1,inty2
    local index = math.random(1,5)
    local intx1,intx2 = -1,-1
    
    touchDown(index,x+index, y+index)
    for i=1,50 do
      intx,inty = findColorInRegionFuzzy(0xfdfdfd, 90,x,y-10, x+30,y+10)
      if inty == -1 and i>=2 then
        break;
      end
      keepScreen(false)
      mSleep(10)
      keepScreen(true)
    end
    
    --if y<350 then      这里是长按左右移动的代码,还没有写好
    --  --右
    --  intx2,inty2 = findColorInRegionFuzzy(0x8de229, 90,x-10,y+50, x+10,y+120)
    --elseif y > 940 then
    --  --左
    --  intx1,inty1 = findColorInRegionFuzzy(0x8de229, 90,x-10,y-100, x+10,y)
    --else
    --  --左
    --  intx1,inty1 = findColorInRegionFuzzy(0x8de229, 90,x-10,y-120, x+10,y-50)
    --  --右
    --  intx2,inty2 = findColorInRegionFuzzy(0x8de229, 90,x-10,y+50, x+10,y+120)
    --end
    --if intx1 > -1 or intx2 >-1 then
    --        sysLog("11")
    --  if intx1 > -1 then
    --for i=1,50 do
    --  intx,inty = findColorInRegionFuzzy(0xfdfdfd, 90,x,y-10, x+30,y+10)
    --  if inty == -1 and i>=2 then
    --    break;
    --  end
    --  keepScreen(false)
    --  mSleep(10)
    --  keepScreen(true)
    --end
    
    --touchMove(index,x+index, y+index-250)
    
    --for p=1,50 do
    --  intx,inty = findColorInRegionFuzzy(0xfdfdfd, 90,intx1-10,inty1-30, intx1+20,inty1+10)
    --  if inty == -1 and p>=2 then
    --    break;
    --  end
    --  keepScreen(false)
    --  mSleep(10)
    --  keepScreen(true)
    --end
    --touchUp(index, x+index, y+index-250)
    --return 0
    --end
            
            
    --        if intx2 > -1 then
    --        touchDown(index,x+index, y+index)
    --for i=1,50 do
    
    --  intx,inty = findColorInRegionFuzzy(0xfdfdfd, 90,x,y-10, x+30,y+10)
    --  if inty == -1 and i>=2 then
            
    --    break;
    --  end
    --  keepScreen(false)
    --  mSleep(10)
    --  keepScreen(true)
    --end
    
    --touchMove(index,x+index, y+index+250)
    
    --for p=1,50 do
    --  intx,inty = findColorInRegionFuzzy(0xfdfdfd, 90,intx2,inty2-10, intx2+30,inty2+10)
    --  if inty == -1 and p>=2 then
    --    break;
    --  end
    --  keepScreen(false)
    --  mSleep(10)
    --  keepScreen(true)
    --end
    --touchUp(index, x+index, y+index+250)
    --return 0
    --        end
    --        end
    touchUp(index, x+index, y+index)
    
    end
    
    
    function 绿色() --长按
    --找长按颜色
    local ax, ay = findColorInRegionFuzzy(0x8de229, 90, 140,129, 180,346); 
    local bx, by = findColorInRegionFuzzy(0x8de229, 90, 140,396, 180,622); 
    local cx, cy = findColorInRegionFuzzy(0x8de229, 90, 140,667, 180,869); 
    local dx, dy = findColorInRegionFuzzy(0x8de229, 90, 140,952, 180,1132); 
    if ay~= -1 or  by ~= -1 or cy ~= -1 or dy ~= -1 then
      if ay~= -1 then
        长按(90,176)
      end
      if by~= -1 then
        长按(91,484)
      end
      if cy~= -1 then
        长按(90,795)
      end
      if dy~= -1 then
        长按(90,1106)
      end
    end
    end
    
    function 按键(y1,y2,y3,y4)
    local n=0
    local m=0
    local w=0
    while true do
      if y1~=-1 then
        if n>y1-140 then
          tap(90,176)
          w=w+1
        end
        m=m+1
      end
      if y2~=-1 then
        if n>y1-140 then
          tap(91,484)
          w=w+1
        end
        m=m+1
      end
      if y3~=-1 then
        if n>y1-140 then
          tap(90,795)
          w=w+1
        end
        m=m+1
      end
      if y4~=-1 then
        if n>y1-140 then
          tap(90,1106)
          w=w+1
        end
        m=m+1
      end
      if m==w then
        break
      end
      m=0
      n=n+10
      mSleep(10)
    end
    end
    
    function tap(x, y)
      local index = math.random(1,8)
      touchDown(index,x+index, y+index)
      mSleep(10)
      touchUp(index, x+index, y+index)
    end
    
    init("0", 0); 
    main()