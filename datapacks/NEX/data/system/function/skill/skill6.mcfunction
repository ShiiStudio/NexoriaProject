execute as @e[tag=ancient_guardian] run scoreboard players add @s timer6 1
execute as @e[tag=ancient_guardian] store result score @s hp run data get entity @s Health 1

execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={hp=..500,phase=0}] run scoreboard players set @s phase 1

execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={phase=1}] run tag @s remove zokuseinasi
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={phase=1}] run tag @s add thunder
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={phase=1}] run tag @s add ancient_p2
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={phase=1}] run tag @s remove ancient_p1

execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={phase=1}] run data merge entity @s {CustomName:'[{"text":"[雷] ","color":"yellow"},{"text":"覚醒した古代の守護者","color":"white"}]'}
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={phase=1}] at @s run title @a[distance=..32] title {"text":"古代の守護者 第二形態","color":"yellow"}
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={phase=1}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..32] ~ ~ ~ 1 0.8
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={phase=1}] at @s run particle minecraft:electric_spark ~ ~2 ~ 2 2 2 0.1 100 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={phase=1}] run effect give @s minecraft:resistance 3 4 true
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={phase=1}] run scoreboard players set @s timer6 0
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={phase=1}] run scoreboard players set @s phase 2

# 第一形態 timer6=90 予告：爆砕
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=90}] at @s run particle minecraft:poof ~ ~0.2 ~ 5 0.1 5 0.04 110 force
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=90}] at @s run playsound minecraft:entity.generic.explode master @a[distance=..24] ~ ~ ~ 0.4 0.7
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=100}] at @s run execute as @a[distance=..5] run damage @s 7 minecraft:mob_attack by @e[tag=ancient_guardian,distance=..16,limit=1,sort=nearest]
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=100}] at @s run particle minecraft:explosion ~ ~0.3 ~ 2 0.2 2 0.05 25 force
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=100}] at @s run playsound minecraft:entity.generic.explode master @a[distance=..24] ~ ~ ~ 0.8 1.2

execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=200}] at @s run summon zombie ~4 ~ ~ {Tags:["enemy","init_fireproof","boss_minion","minion_sword","init_boss_minion","zokuseinasi"],CustomName:'[{"text":"[無] ","color":"gray"},{"text":"古代兵","color":"white"}]',CustomNameVisible:1b,HandItems:[{id:"minecraft:stone_sword",count:1},{}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1},{}]}
execute as @e[tag=init_fireproof] run function system:enemy/fireproof_init
execute as @e[tag=init_boss_minion] run function system:enemy/boss_minion_init
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=200}] at @s run summon skeleton ~-4 ~ ~ {Tags:["enemy","init_fireproof","boss_minion","minion_skeleton","init_boss_minion","nature"],CustomName:'[{"text":"[地] ","color":"green"},{"text":"古代弓兵","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=init_fireproof] run function system:enemy/fireproof_init
execute as @e[tag=init_boss_minion] run function system:enemy/boss_minion_init

# 第一形態 timer6=290 予告：封印波
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=290}] at @s run particle minecraft:ash ~ ~0.2 ~ 8 0.1 8 0.03 140 force
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=300}] at @s run execute as @a[distance=..8] run effect give @s minecraft:slowness 3 1 true
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=300}] at @s run execute as @a[distance=..8] run damage @s 5 minecraft:mob_attack by @e[tag=ancient_guardian,distance=..16,limit=1,sort=nearest]

execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=320..}] run scoreboard players set @s timer6 0

# 第二形態 timer6=150 予告：雷爆
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=150}] at @s run particle minecraft:electric_spark ~ ~0.2 ~ 8 0.1 8 0.05 170 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=160}] at @s run execute as @a[distance=..8] run damage @s 8 minecraft:mob_attack by @e[tag=ancient_guardian,distance=..16,limit=1,sort=nearest]
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=160}] at @s run execute as @a[distance=..8] run effect give @s minecraft:slowness 3 1 true
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=160}] at @s run particle minecraft:electric_spark ~ ~2 ~ 3 2 3 0.15 120 force

execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=240}] at @s run summon zombie ~4 ~ ~ {Tags:["enemy","init_fireproof","boss_minion","minion_sword","init_boss_minion","zokuseinasi"],CustomName:'[{"text":"[無] ","color":"gray"},{"text":"覚醒古代兵","color":"white"}]',CustomNameVisible:1b,HandItems:[{id:"minecraft:stone_sword",count:1},{}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1},{}]}
execute as @e[tag=init_fireproof] run function system:enemy/fireproof_init
execute as @e[tag=init_boss_minion] run function system:enemy/boss_minion_init
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=240}] at @s run summon skeleton ~-4 ~ ~ {Tags:["enemy","init_fireproof","boss_minion","minion_skeleton","init_boss_minion","nature"],CustomName:'[{"text":"[地] ","color":"green"},{"text":"覚醒古代弓兵","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=init_fireproof] run function system:enemy/fireproof_init
execute as @e[tag=init_boss_minion] run function system:enemy/boss_minion_init
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=240}] at @s run summon skeleton ~ ~ ~4 {Tags:["enemy","init_fireproof","boss_minion","minion_skeleton","init_boss_minion","nature"],CustomName:'[{"text":"[地] ","color":"green"},{"text":"覚醒古代弓兵","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=init_fireproof] run function system:enemy/fireproof_init
execute as @e[tag=init_boss_minion] run function system:enemy/boss_minion_init

execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=260..}] run scoreboard players set @s timer6 0
# =========================
# 古代の守護者 追加技
# 既存AIの中に足してOK
# =========================

# 第一形態 timer6=50 地鳴らし予告
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=50}] at @s run particle minecraft:poof ~ ~0.2 ~ 3 0.1 3 0.05 80 force
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=50}] at @s run playsound minecraft:entity.ravager.roar master @a[distance=..24] ~ ~ ~ 0.8 0.8

# 第一形態 timer6=60 地鳴らし
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=60}] at @s run execute as @a[distance=..10] run damage @s 4 minecraft:mob_attack by @e[tag=ancient_guardian,distance=..16,limit=1,sort=nearest]
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=60}] at @s run execute as @a[distance=..10] run effect give @s minecraft:slowness 2 0 true

# 第一形態 timer6=140 突進圧
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=130}] at @s run particle minecraft:cloud ^ ^0.2 ^3 1.5 0.1 2.5 0.03 90 force
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=130}] at @s run playsound minecraft:entity.ravager.step master @a[distance=..24] ~ ~ ~ 1 0.6
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=140}] at @s run particle minecraft:cloud ^ ^1 ^2 1 0.5 2 0.08 80 force
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=140}] at @s run execute as @a[distance=..6] run damage @s 6 minecraft:mob_attack by @e[tag=ancient_guardian,distance=..16,limit=1,sort=nearest]

# 第一形態 timer6=260 砂塵
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=250}] at @s run particle minecraft:dust{color:[0.55f,0.45f,0.30f],scale:1.0f} ~ ~0.2 ~ 8 0.1 8 0.03 150 force
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=260}] at @s run particle minecraft:dust{color:[0.55f,0.45f,0.30f],scale:1.0f} ~ ~1 ~ 4 1 4 0.05 120 force
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=260}] at @s run execute as @a[distance=..9] run effect give @s minecraft:blindness 2 0 true
execute as @e[tag=ancient_guardian,tag=ancient_p1,scores={timer6=260}] at @s run execute as @a[distance=..9] run damage @s 3 minecraft:mob_attack by @e[tag=ancient_guardian,distance=..16,limit=1,sort=nearest]

# 第二形態 timer6=40 雷鳴予告
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=40}] at @s run particle minecraft:electric_spark ~ ~2 ~ 4 2 4 0.2 120 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=40}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..32] ~ ~ ~ 0.8 1.4

# 第二形態 timer6=80 単体落雷
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=70}] at @s run execute as @a[distance=..14,limit=1,sort=nearest] at @s run particle minecraft:dust{color:[1.0f,0.9f,0.1f],scale:1.2f} ~ ~0.2 ~ 0.8 0.1 0.8 0.03 55 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=80}] at @s run execute as @a[distance=..14,limit=1,sort=nearest] at @s run particle minecraft:electric_spark ~ ~1 ~ 0.7 1.2 0.7 0.2 100 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=80}] at @s run execute as @a[distance=..14,limit=1,sort=nearest] run damage @s 10 minecraft:mob_attack by @e[tag=ancient_guardian,distance=..16,limit=1,sort=nearest]

# 第二形態 timer6=120 電撃波
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=110}] at @s run particle minecraft:electric_spark ~ ~0.2 ~ 10 0.1 10 0.04 180 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=120}] at @s run particle minecraft:electric_spark ~ ~1 ~ 5 1 5 0.15 160 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=120}] at @s run execute as @a[distance=5..12] run damage @s 7 minecraft:mob_attack by @e[tag=ancient_guardian,distance=..16,limit=1,sort=nearest]
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=120}] at @s run execute as @a[distance=5..12] run effect give @s minecraft:slowness 2 1 true

# 第二形態 timer6=200 雷の檻
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=190}] at @s run particle minecraft:electric_spark ~ ~0.2 ~ 7 0.1 7 0.04 170 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=200}] at @s run particle minecraft:electric_spark ~5 ~1 ~ 0.2 1 0.2 0.2 50 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=200}] at @s run particle minecraft:electric_spark ~-5 ~1 ~ 0.2 1 0.2 0.2 50 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=200}] at @s run particle minecraft:electric_spark ~ ~1 ~5 0.2 1 0.2 0.2 50 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=200}] at @s run particle minecraft:electric_spark ~ ~1 ~-5 0.2 1 0.2 0.2 50 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=200}] at @s run execute as @a[distance=4..7] run damage @s 6 minecraft:mob_attack by @e[tag=ancient_guardian,distance=..16,limit=1,sort=nearest]

# 第二形態 timer6=230 近距離放電
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=220}] at @s run particle minecraft:electric_spark ~ ~0.2 ~ 6 0.1 6 0.05 150 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=220}] at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..24] ~ ~ ~ 1 1.6
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=230}] at @s run particle minecraft:electric_spark ~ ~2 ~ 3 2 3 0.25 180 force
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=230}] at @s run execute as @a[distance=..6] run damage @s 9 minecraft:mob_attack by @e[tag=ancient_guardian,distance=..16,limit=1,sort=nearest]
execute as @e[tag=ancient_guardian,tag=ancient_p2,scores={timer6=230}] at @s run execute as @a[distance=..6] run effect give @s minecraft:weakness 3 0 true
