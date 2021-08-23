local function selectTarget(P)
	if SETTING.swap then
		for i=1,#P.keyPressing do
			if P.keyPressing[i]then
				P.keyPressing[i]=false
			end
		end
		P.keyPressing[9]=true
	else
		P:changeAtkMode(P.atkMode<3 and P.atkMode+2 or 5-P.atkMode)
		P.swappingAtkMode=30
	end
end

return{
	color=COLOR.lYellow,
	env={
		drop=15,lock=60,
		fall=20,
		royaleMode=true,
		fkey1=selectTarget,
		garbageSpeed=.3,
		pushSpeed=2,
		freshLimit=15,
		bg='rainbow',bgm='magicblock',
	},
	load=function()
		ROYALEDATA.powerUp={2,5,10,20}
		ROYALEDATA.stage={30,20,15,10,5}
		PLY.newPlayer(1)
		local L={}for i=1,49 do L[i]=true end
		local t=6
		while t>0 do
			local r=math.random(2,49)
			if L[r]then L[r],t=false,t-1 end
		end
		local n=2
		for _=1,4 do for _=1,6 do
			if L[n]then
				PLY.newAIPlayer(n,BOT.template{type='9S',speedLV=math.random(8,10),hold=true})
			else
				PLY.newAIPlayer(n,BOT.template{type='CC',speedLV=math.random(4,7),next=3,hold=true,node=40000},true)
			end
			n=n+1
		end end
		for _=9,12 do for _=1,6 do
			if L[n]then
				PLY.newAIPlayer(n,BOT.template{type='9S',speedLV=math.random(8,9),hold=true})
			else
				PLY.newAIPlayer(n,BOT.template{type='CC',speedLV=math.random(5,8),next=3,hold=true,node=40000},true)
			end
			n=n+1
		end end
	end,
	mesDisp=function(P)
		PLY.draw.drawRoyaleInfo(P)
	end,
	score=function(P)return{P.modeData.place,P.modeData.ko}end,
	scoreDisp=function(D)return"NO."..D[1].."   KO:"..D[2]end,
	comp=function(a,b)return a[1]<b[1]or a[1]==b[1]and a[2]>b[2]end,
	getRank=function(P)
		local R=P.modeData.place
		return
		R==1 and 5 or
		R==2 and 4 or
		R==3 and 3 or
		R==4 and 2 or
		R<=6 and 1 or
		R<=45 and 0
	end,
}