local death_lock={15,14,13,12,10, 9,9,8,8,7, 7,7,7,7,6}
local death_wait={12,11,10,8,8, 8,8,8,7,6, 5,5,4,4,4}
local death_fall={12,11,10,8,7, 8,7,7,6,5, 5,5,4,4,4}
local death_garbage={9999,9999,9999,22,20 ,15,12,9999,9999,9999, 20,16,12,8,2}
return {
    drop=0,
    lock=death_lock[1],
    wait=death_wait[1],
    fall=death_fall[1],
    noTele=true,
    das=6,arr=1,
    mesDisp=function(P)
        PLY.draw.drawProgress(P.modeData.pt,P.modeData.target)
    end,
    hook_drop=function(P)
        local D=P.modeData
        if P.lastPiece.row==0 then
        D.garbageQuota=D.garbageQuota+1
        end
        if D.garbageQuota>=death_garbage[D.target/100] then
        D.garbageQuota=0
        SFX.play('collect')

        local line=0
        for i=1,10 do
           if P.field[1][i] > 0 then
              line=bit.bor(line, bit.lshift(1, i-1))
           end
        end
        P:garbageRise(21,1,line)
        end
        local c=#P.clearedRow
        if c==0 and D.pt%100==99 then return end
        local s=c<3 and c+1 or c==3 and 5 or 7
        if P.combo>7 then s=s+2
        elseif P.combo>3 then s=s+1
        end
        D.pt=D.pt+s

        if D.pt%100==99 then
            SFX.play('warn_1')
        elseif D.pt>=D.target then-- Level up!
            s=D.target/100
            D.garbageQuota=0
            local E=P.gameEnv
            E.lock=death_lock[s]
            E.wait=death_wait[s]
            E.fall=death_fall[s]
            E.garbage=death_garbage[s]
            if s==3 then
                E.das=5
                BGM.play('super7th')
                BG.set('rainbow')
            elseif s==5 then
                E.das=4
                if P.stat.frame>148*60 then
                    D.pt=500
                    P:torikanEnd(148)
                    return
                else
                    P.gameEnv.freshLimit=10
                    BG.set('rainbow2')
                end
            elseif s==6 then
                BG.set('glow')
                E.das=3
            elseif s==7 then
                E.bone=true                
                BGM.play('secret7th remix')
                BG.set('lightning')
            elseif s==10 then
                if P.stat.frame>296*60 then
                    D.pt=1000
                    P:torikanEnd(296)
                    return
                else
                BGM.play('rectification')
                BG.set('lightning2')
                P.gameEnv.freshLimit=5
                end
            elseif s==15 then
                D.pt=1500
                P:win('finish')
                return
            end
            D.target=D.target+100
            P:stageComplete(s)
            SFX.play('reach')
        end
    end,
    task=function(P)
        P.modeData.pt=0
        P.modeData.target=100
        local D=P.modeData
        D.garbageQuota=1
    end
}