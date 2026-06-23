return {
    env={
        eventSet='master_ph_plus',
        bg='blockspace',bgm='race remix',
    },
    slowMark=true,
    score=function(P)
        -- Check target instead of pt to prevent overshoot bugs
        local maxPt=P.modeData.target==626 and 626 or 260
        return {P.result=='win' and maxPt or math.min(P.modeData.pt,maxPt),P.stat.time}
    end,
    scoreDisp=function(D) return D[1].."P   "..STRING.time(D[2]) end,
    comp=function(a,b) return a[1]>b[1] or a[1]==b[1] and a[2]<b[2] end,
    getRank=function(P)
        local p=P.modeData.pt
        local isHidden=P.modeData.target==626
        return
            (P.result=='win' and isHidden) and 5 or
            (P.result=='win' and not isHidden) and 4 or
            p>=226 and 3 or
            p>=162 and 2 or
            p>=62 and 1 or
            p>=42 and 0
    end,
}
