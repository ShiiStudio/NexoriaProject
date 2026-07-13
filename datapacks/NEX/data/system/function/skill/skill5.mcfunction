execute as @e[tag=dead_knight] run scoreboard players add @s timer5 1
execute as @e[tag=dead_knight,scores={timer5=100}] at @s if entity @a[distance=..3] run execute as @a[distance=..3,limit=1,sort=nearest] run damage @s 8 minecraft:mob_attack by @e[tag=dead_knight,distance=..3,limit=1,sort=nearest]
execute as @e[tag=dead_knight,scores={timer5=100}] at @s run playsound minecraft:entity.player.attack.strong master @a[distance=..16] ~ ~ ~ 1 0.6
execute as @e[tag=dead_knight,scores={timer5=100}] at @s run particle minecraft:crit ~ ~1 ~ 0.8 0.8 0.8 0.05 35 force
# timer5=90 予告：重い一撃
execute as @e[tag=dead_knight,scores={timer5=90}] at @s run particle minecraft:crit ~ ~1 ~ 2 0.3 2 0.03 45 force
execute as @e[tag=dead_knight,scores={timer5=90}] at @s run playsound minecraft:entity.player.attack.strong master @a[distance=..16] ~ ~ ~ 0.8 0.5

# timer5=120 予告：呪いの波動
execute as @e[tag=dead_knight,scores={timer5=120}] at @s run particle minecraft:soul ~ ~1 ~ 7 0.3 7 0.03 110 force
execute as @e[tag=dead_knight,scores={timer5=120}] at @s run playsound minecraft:entity.warden.heartbeat master @a[distance=..20] ~ ~ ~ 0.6 0.6

# timer5=160 予告：亡者の鎖
execute as @e[tag=dead_knight,scores={timer5=160}] at @s run particle minecraft:soul ~ ~1 ~ 10 0.3 10 0.02 130 force
execute as @e[tag=dead_knight,scores={timer5=160}] at @s run playsound minecraft:entity.zombie_villager.converted master @a[distance=..16] ~ ~ ~ 0.8 0.6

# timer5=170 亡者の鎖（離れているプレイヤーを妨害）
execute as @e[tag=dead_knight,scores={timer5=170}] at @s run particle minecraft:soul ~ ~1 ~ 4 1 4 0.06 100 force
execute as @e[tag=dead_knight,scores={timer5=170}] at @s run execute as @a[distance=4..12] run damage @s 5 minecraft:mob_attack by @e[tag=dead_knight,distance=..12,limit=1,sort=nearest]
execute as @e[tag=dead_knight,scores={timer5=170}] at @s run execute as @a[distance=4..12] run effect give @s minecraft:slowness 3 2 true
execute as @e[tag=dead_knight,scores={timer5=170}] at @s run execute as @a[distance=4..12] run effect give @s minecraft:darkness 2 0 true
execute as @e[tag=dead_knight,scores={timer5=220}] at @s run summon zombie ~2 ~ ~ {Tags:["enemy","init_fireproof","boss_minion","minion_sword","init_boss_minion","zokuseinasi"],CustomName:'[{"text":"[無] ","color":"gray"},{"text":"亡者兵","color":"white"}]',CustomNameVisible:1b,HandItems:[{id:"minecraft:stone_sword",count:1},{}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1},{}]}
execute as @e[tag=init_fireproof] run function system:enemy/fireproof_init
execute as @e[tag=init_boss_minion] run function system:enemy/boss_minion_init
execute as @e[tag=dead_knight,scores={timer5=220}] at @s run summon zombie ~-2 ~ ~ {Tags:["enemy","init_fireproof","boss_minion","minion_sword","init_boss_minion","zokuseinasi"],CustomName:'[{"text":"[無] ","color":"gray"},{"text":"亡者兵","color":"white"}]',CustomNameVisible:1b,HandItems:[{id:"minecraft:stone_sword",count:1},{}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",count:1},{}]}
execute as @e[tag=init_fireproof] run function system:enemy/fireproof_init
execute as @e[tag=init_boss_minion] run function system:enemy/boss_minion_init
execute as @e[tag=dead_knight,scores={timer5=260..}] run scoreboard players set @s timer5 0

# =========================
# 亡者の騎士 追加技
# =========================

# timer5=40 斬撃予告
execute as @e[tag=dead_knight,scores={timer5=40}] at @s run particle minecraft:sweep_attack ^ ^1 ^2 0.2 0.2 0.2 0.01 3 force
execute as @e[tag=dead_knight,scores={timer5=40}] at @s run playsound minecraft:entity.zombie.ambient master @a[distance=..16] ~ ~ ~ 0.8 0.5

# timer5=60 前方斬り
execute as @e[tag=dead_knight,scores={timer5=60}] at @s run particle minecraft:sweep_attack ^ ^1 ^2 0.5 0.5 0.5 0.01 8 force
execute as @e[tag=dead_knight,scores={timer5=60}] at @s positioned ^ ^ ^2 run execute as @a[distance=..3] run damage @s 7 minecraft:mob_attack by @e[tag=dead_knight,distance=..10,limit=1,sort=nearest]

# timer5=130 呪いの波動
execute as @e[tag=dead_knight,scores={timer5=130}] at @s run particle minecraft:soul ~ ~1 ~ 3 1 3 0.04 90 force
execute as @e[tag=dead_knight,scores={timer5=130}] at @s run execute as @a[distance=..8] run effect give @s minecraft:weakness 5 0 true
execute as @e[tag=dead_knight,scores={timer5=130}] at @s run execute as @a[distance=..8] run damage @s 4 minecraft:mob_attack by @e[tag=dead_knight,distance=..10,limit=1,sort=nearest]

# timer5=190 亡者の踏みつけ
execute as @e[tag=dead_knight,scores={timer5=180}] at @s run particle minecraft:ash ~ ~0.2 ~ 6 0.1 6 0.03 120 force
execute as @e[tag=dead_knight,scores={timer5=180}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..20] ~ ~ ~ 0.5 0.5
execute as @e[tag=dead_knight,scores={timer5=190}] at @s run particle minecraft:poof ~ ~0.2 ~ 3 0.1 3 0.05 100 force
execute as @e[tag=dead_knight,scores={timer5=190}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..20] ~ ~ ~ 0.8 0.7
execute as @e[tag=dead_knight,scores={timer5=190}] at @s run execute as @a[distance=..7] run damage @s 6 minecraft:mob_attack by @e[tag=dead_knight,distance=..10,limit=1,sort=nearest]
execute as @e[tag=dead_knight,scores={timer5=190}] at @s run execute as @a[distance=..7] run effect give @s minecraft:slowness 2 2 true

# timer5=240 生命吸収
execute as @e[tag=dead_knight,scores={timer5=230}] at @s run particle minecraft:soul ~ ~1.2 ~ 6 0.2 6 0.03 120 force
execute as @e[tag=dead_knight,scores={timer5=230}] at @s run playsound minecraft:entity.warden.heartbeat master @a[distance=..20] ~ ~ ~ 0.8 0.5
execute as @e[tag=dead_knight,scores={timer5=240}] at @s run particle minecraft:soul ~ ~1.2 ~ 2 1 2 0.08 120 force
execute as @e[tag=dead_knight,scores={timer5=240}] at @s run execute as @a[distance=..6] run damage @s 5 minecraft:mob_attack by @e[tag=dead_knight,distance=..10,limit=1,sort=nearest]
execute as @e[tag=dead_knight,scores={timer5=240}] at @s if entity @a[distance=..6] run effect give @s minecraft:regeneration 5 1 true
execute as @e[tag=dead_knight,scores={timer5=240}] at @s if entity @a[distance=..6] run playsound minecraft:entity.warden.heartbeat master @a[distance=..20] ~ ~ ~ 0.8 0.7
