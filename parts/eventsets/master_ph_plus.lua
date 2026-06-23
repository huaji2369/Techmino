return {
    drop=0,lock=15,
    wait=10,fall=10,
    noTele=true,
    das=5,arr=1,
    nextCount=2,
    sequence='his',
    mission={4,4,4,64},
    missionKill=true,
    freshLimit=12,
    noInitSZO=true,
    mesDisp=function(P)
        PLY.draw.drawProgress(P.modeData.pt,P.modeData.target)
        GC.setLineWidth(2)
        GC.setColor(.98,.98,.98,.8)
        GC.rectangle('line',0,220,126,80,4)
        GC.setColor(.98,.98,.98,.4)
        GC.rectangle('fill',0+2,220+2,126-4,80-4,2)
        setFont(45)
        local timeLeft=(P.modeData.targetFrame-P.stat.frame)/60
        if timeLeft<0 then timeLeft=0 end
        local T=("%.1f"):format(timeLeft)
        GC.setColor(COLOR.dH)
        GC.mStr(T,65,230)
        local maxTime=P.modeData.stageTimerMax or 30
        local t=math.max(0,math.min(1,timeLeft/maxTime))
        GC.setColor(1.7-1.7*t,0.3+2*t,.3)
        GC.mStr(T,63,228)
    end,
    hook_drop=function(P)
        local p=P.modeData.pt+P.lastPiece.row
        if p>=P.modeData.target then
            local ENV=P.gameEnv
            local T=P.modeData.target
            local function nextStageTime(seconds)
                P.modeData.stageTimerMax=seconds
                P.modeData.targetFrame=P.stat.frame+seconds*60
            end
            if T==12 then -- Stage 1 -> 2 (30s)
                P:stageComplete(1)
                P.waiting=30
                P.curMission=false
                ENV.skin[1],ENV.skin[2]=ENV.skin[2],ENV.skin[1]
                ENV.skin[3],ENV.skin[4]=ENV.skin[4],ENV.skin[3]
                ENV.lock=14
                ENV.wait=7
                ENV.fall=7
                P:setNext(4)
                P.modeData.target=26
                nextStageTime(30)
                SFX.play('reach')
            elseif T==26 then -- Stage 2 -> 3 (90s)
                P:stageComplete(2)
                if not P.holdQueue[1] then
                    P.life=P.life+1
                end
                P.waiting=45
                ENV.skin[1],ENV.skin[2]=ENV.skin[2],ENV.skin[1]
                ENV.skin[3],ENV.skin[4]=ENV.skin[4],ENV.skin[3]
                for i=1,10 do
                    if P.field[i] then
                        for j=1,10 do
                            if P.field[i][j]>0 then
                                P.field[i][j]=17
                                P.visTime[i][j]=15
                            end
                        end
                        for _=1,5 do
                            P.field[i][P.holeRND:random(10)]=0
                        end
                    else
                        P.field[i]=LINE.new(0)
                        P.visTime[i]=LINE.new(30)
                        for j=1,10 do
                            if P.holeRND:random()>.9 then
                                P.field[i][j]=P.holeRND:random(16)
                            end
                        end
                        P.field[i][P.holeRND:random(10)]=0
                    end
                    P.field[i].garbage=true
                end
                P.garbageBeneath=10
                for i=1,10 do
                    P:createClearingFX(i,1.5)
                end
                SYSFX.newShade(2.5,P.absFieldX,P.y+300*P.size,300*P.size,300*P.size)
                ENV.lock=13
                ENV.wait=6
                ENV.fall=6
                P:setNext(5)
                P.modeData.target=42
                nextStageTime(90)
                SFX.play('reach')
            elseif T==42 then -- Stage 3 -> 4 (20s)
                if P.garbageBeneath==0 then
                    P:stageComplete(3)
                    P.waiting=30
                    ENV.lock=11
                    P:setNext(6)
                    P:setHold(false)
                    ENV.bone=true
                    P.modeData.target=62
                    nextStageTime(25)
                    SFX.play('reach')
                else
                    p=41
                end
            elseif T==62 then -- Stage 4 -> 5 (75s)
                P:stageComplete(4)
                P.life=P.life+1
                ENV.lock=13
                ENV.wait=5
                ENV.fall=5
                ENV.easyFresh=false
                P.modeData.target=126
                nextStageTime(75)
                SFX.play('reach')
            elseif T==126 then -- Stage 5 -> 6 (75s)
                P:stageComplete(5)
                P.life=P.life+1
                ENV.lock=11
                ENV.wait=4
                ENV.fall=4
                P.modeData.target=162
                nextStageTime(75)
                SFX.play('reach')
            elseif T==162 then -- Stage 6 -> 7 (90s)
                P:stageComplete(6)
                P.life=P.life+1
                ENV.lock=10
                P:setHold(true)
                P:setInvisible(180)
                P.modeData.target=226
                nextStageTime(90)
                SFX.play('reach')
            elseif T==226 then -- Stage 7 -> 8 (120s)
                P:stageComplete(7)
                P.life=P.life+1
                ENV.bone=false
                P:setInvisible(90)
                P.modeData.target=259
                nextStageTime(120)
                SFX.play('reach')
            elseif T==259 then -- Stage 8 -> Branch (9 or Secret 10)
                P:stageComplete(8)
                P.life=P.life+1
                for i=1,7 do ENV.skin[i]=P.holeRND:random(16) end
                if not P.modeData.hasDied then -- Secret Stage 10 (210s)
                    P:setInvisible(3)
                    ENV.lock=15
                    P.curMission=1
                    ENV.mission={4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4} -- 16 Techrashes
                    ENV.missionKill=false
                    P.modeData.target=626
                    p=626
                    nextStageTime(210)
                else -- Normal Stage 9 (120s)
                    P:setInvisible(40)
                    ENV.lock=15
                    P.curMission=1
                    ENV.mission={4,4,4,4,4,4,4,4}
                    ENV.missionKill=false
                    P.modeData.target=260
                    p=260
                    nextStageTime(120)
                end
                SFX.play('warn_2')
                SFX.play('reach')
            else
                p=P.modeData.target
            end
        end
        P.modeData.pt=p
    end,
    task=function(P)
        P.modeData.target=12
        P.modeData.stageTimerMax=30
        P.modeData.targetFrame=P.stat.frame+30*60
        P.modeData.hasDied=false
        P.modeData.expectedLife=P.life
        while true do
            coroutine.yield()
            if P.life<P.modeData.expectedLife then
                P.modeData.hasDied=true
            end
            P.modeData.expectedLife=P.life
            if P.stat.frame>=P.modeData.targetFrame then
                P.life=0
                P:lose()
                return
            end
        end
    end,
}
