getgenv().Team = "Pirates"
getgenv().Setting = {
    OneClick = {Enable= false},
    Katakuri = {Enable = false},
    Bone = {Enable=false},
    Mastery = {Enable=false,["Fruit/Gun"]=false,["Sword/Low"]=false,["Sword"]=false},
    LocalPlayer = {Speed=90,SpeedHack=false,AutoBuso=true,AutoEnableObservation=false,WaterWalker=false,AutoUseV4=false},
    FastAttack = {Enable=true,TimeFastAttack=15,TimeToAttack=3,FastAttackIfBoss=false,OnPlayer=true,OnMob=true},
    Tween = {Pause=true,TimeNeedPause=2,TimePause=0.2},
    Pvp = {AutoShootGun=false,Method="Nearest"},
    ESP = {Player=false,Chest=false,Boss=false,Island=false,Fruit=false},
    SeaEvents = {ShipSpeedModifier=false,ShipSpeed=300,SpinDistance=50}
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()

getgenv().Executed = true
while getgenv().Executed and task.wait(1000000000000) do 
   print("s")
end
