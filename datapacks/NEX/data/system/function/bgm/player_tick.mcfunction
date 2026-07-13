# 再生開始
execute if entity @s[tag=aster1,scores={bgm_timer=1}] run playsound nexoria:music.aster1 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=aster2,scores={bgm_timer=1}] run playsound nexoria:music.aster2 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=asterbay,scores={bgm_timer=1}] run playsound nexoria:music.asterbay master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=asterbay2,scores={bgm_timer=1}] run playsound nexoria:music.asterbay2 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=asterforest1,scores={bgm_timer=1}] run playsound nexoria:music.asterforest1 master @s ~ ~ ~ 1 1
execute if entity @s[tag=asterbaytown1,scores={bgm_timer=1}] run playsound nexoria:music.asterbaytown1 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=astertown1,scores={bgm_timer=1}] run playsound nexoria:music.astertown1 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=astertown2,scores={bgm_timer=1}] run playsound nexoria:music.astertown2 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=astertown4,scores={bgm_timer=1}] run playsound nexoria:music.astertown4 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=astervillage3,scores={bgm_timer=1}] run playsound nexoria:music.astervillage3 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=asterdungeon1,scores={bgm_timer=1}] run playsound nexoria:music.asterdungeon1 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=asterdungeon2,scores={bgm_timer=1}] run playsound nexoria:music.asterdungeon2 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=asterdungeon3,scores={bgm_timer=1}] run playsound nexoria:music.asterdungeon3 master @s ~ ~ ~ 0.4 1
execute if entity @s[tag=boss1,scores={bgm_timer=1}] run playsound nexoria:music.asterboss1 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=boss2,scores={bgm_timer=1}] run playsound nexoria:music.asterboss2 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=boss3,scores={bgm_timer=1}] run playsound nexoria:music.asterboss3 master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=boss4,scores={bgm_timer=1}] run playsound nexoria:music.asterboss4 master @s ~ ~ ~ 0.5 1

scoreboard players add @s bgm_timer 1

# 曲長に応じたループ
execute if entity @s[tag=aster1,scores={bgm_timer=2220..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=aster2,scores={bgm_timer=2460..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=asterbay,scores={bgm_timer=3060..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=asterbay2,scores={bgm_timer=2780..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=asterforest1,scores={bgm_timer=3280..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=asterbaytown1,scores={bgm_timer=3500..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=astertown1,scores={bgm_timer=3880..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=astertown2,scores={bgm_timer=3860..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=astertown4,scores={bgm_timer=2000..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=astervillage3,scores={bgm_timer=3880..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=asterdungeon1,scores={bgm_timer=1380..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=asterdungeon2,scores={bgm_timer=2200..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=asterdungeon3,scores={bgm_timer=2080..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=boss1,scores={bgm_timer=3400..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=boss2,scores={bgm_timer=3080..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=boss3,scores={bgm_timer=4740..}] run scoreboard players set @s bgm_timer 1
execute if entity @s[tag=boss4,scores={bgm_timer=8100..}] run scoreboard players set @s bgm_timer 1
