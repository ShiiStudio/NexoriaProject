execute as @e[tag=arachne] run scoreboard players add @s timer4 1

# timer4=90 毒針予告（最も近い1人）
execute as @e[tag=arachne,scores={timer4=90}] at @s run execute as @a[distance=..14,limit=1,sort=nearest] at @s run particle minecraft:spore_blossom_air ~ ~1 ~ 0.5 1 0.5 0.02 35 force
execute as @e[tag=arachne,scores={timer4=90}] at @s run playsound minecraft:entity.spider.ambient master @a[distance=..16] ~ ~ ~ 0.7 1.5

# timer4=100 毒針（遠距離単体技）
execute as @e[tag=arachne,scores={timer4=100}] at @s run execute as @a[distance=..14,limit=1,sort=nearest] run damage @s 5 minecraft:mob_attack by @e[tag=arachne,distance=..14,limit=1,sort=nearest]
execute as @e[tag=arachne,scores={timer4=100}] at @s run execute as @a[distance=..14,limit=1,sort=nearest] run effect give @s minecraft:poison 4 0 true
execute as @e[tag=arachne,scores={timer4=160}] at @s run summon spider ~2 ~ ~ {Tags:["enemy","init_fireproof","boss_minion","minion_spider","init_boss_minion","nature"],CustomName:'[{"text":"[地] ","color":"green"},{"text":"子グモ","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=init_fireproof] run function system:enemy/fireproof_init
execute as @e[tag=init_boss_minion] run function system:enemy/boss_minion_init
execute as @e[tag=arachne,scores={timer4=160}] at @s run summon spider ~-2 ~ ~ {Tags:["enemy","init_fireproof","boss_minion","minion_spider","init_boss_minion","nature"],CustomName:'[{"text":"[地] ","color":"green"},{"text":"子グモ","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=init_fireproof] run function system:enemy/fireproof_init
execute as @e[tag=init_boss_minion] run function system:enemy/boss_minion_init
execute as @e[tag=arachne,scores={timer4=160}] at @s run playsound minecraft:entity.spider.death master @a[distance=..16] ~ ~ ~ 1 1.2
execute as @e[tag=arachne,scores={timer4=220..}] run scoreboard players set @s timer4 0
# =========================
# 毒母蜘蛛 アラクネ 追加技
# =========================

# timer4=40 毒霧予告
execute as @e[tag=arachne,scores={timer4=40}] at @s run particle minecraft:spore_blossom_air ~ ~1 ~ 3 1 3 0.03 80 force
execute as @e[tag=arachne,scores={timer4=40}] at @s run playsound minecraft:entity.spider.ambient master @a[distance=..16] ~ ~ ~ 0.8 0.5

# timer4=60 毒霧
execute as @e[tag=arachne,scores={timer4=60}] at @s run particle minecraft:spore_blossom_air ~ ~1 ~ 4 1 4 0.05 120 force
execute as @e[tag=arachne,scores={timer4=60}] at @s run execute as @a[distance=..8] run effect give @s minecraft:poison 4 0 true
execute as @e[tag=arachne,scores={timer4=60}] at @s run execute as @a[distance=..8] run damage @s 3 minecraft:mob_attack by @e[tag=arachne,distance=..10,limit=1,sort=nearest]

# timer4=120 糸絡め
execute as @e[tag=arachne,scores={timer4=120}] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~1 ~ 3 1 3 0.08 80 force
execute as @e[tag=arachne,scores={timer4=120}] at @s run execute as @a[distance=..7] run effect give @s minecraft:slowness 5 2 true
execute as @e[tag=arachne,scores={timer4=120}] at @s run execute as @a[distance=..7] run effect give @s minecraft:weakness 4 0 true

# timer4=140 飛びかかり
execute as @e[tag=arachne,scores={timer4=130}] at @s run particle minecraft:dust{color:[0.3f,0.8f,0.2f],scale:1.0f} ^ ^0.2 ^2 1.2 0.1 1.5 0.03 55 force
execute as @e[tag=arachne,scores={timer4=130}] at @s run playsound minecraft:entity.spider.step master @a[distance=..16] ~ ~ ~ 1 0.5
execute as @e[tag=arachne,scores={timer4=140}] at @s run particle minecraft:sweep_attack ^ ^1 ^2 0.4 0.4 0.4 0.01 6 force
execute as @e[tag=arachne,scores={timer4=140}] at @s positioned ^ ^ ^2 run execute as @a[distance=..3] run damage @s 7 minecraft:mob_attack by @e[tag=arachne,distance=..10,limit=1,sort=nearest]
execute as @e[tag=arachne,scores={timer4=140}] at @s run playsound minecraft:entity.spider.hurt master @a[distance=..16] ~ ~ ~ 1 0.8

# timer4=180 毒牙
execute as @e[tag=arachne,scores={timer4=170}] at @s run execute as @a[distance=..4,limit=1,sort=nearest] at @s run particle minecraft:dust{color:[0.2f,0.7f,0.1f],scale:1.0f} ~ ~0.2 ~ 0.7 0.1 0.7 0.02 40 force
execute as @e[tag=arachne,scores={timer4=180}] at @s run execute as @a[distance=..4,limit=1,sort=nearest] run damage @s 6 minecraft:mob_attack by @e[tag=arachne,distance=..10,limit=1,sort=nearest]
execute as @e[tag=arachne,scores={timer4=180}] at @s run execute as @a[distance=..4,limit=1,sort=nearest] run effect give @s minecraft:poison 5 1 true
execute as @e[tag=arachne,scores={timer4=180}] at @s run particle minecraft:crit ~ ~1 ~ 1 0.7 1 0.05 40 force

# timer4=200 巣の爆散
execute as @e[tag=arachne,scores={timer4=190}] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~1 ~ 7 0.2 7 0.03 140 force
execute as @e[tag=arachne,scores={timer4=190}] at @s run playsound minecraft:block.wool.break master @a[distance=..16] ~ ~ ~ 1 0.5
execute as @e[tag=arachne,scores={timer4=200}] at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~1 ~ 3 1 3 0.08 80 force
execute as @e[tag=arachne,scores={timer4=200}] at @s run execute as @a[distance=4..9] run damage @s 5 minecraft:mob_attack by @e[tag=arachne,distance=..10,limit=1,sort=nearest]
execute as @e[tag=arachne,scores={timer4=200}] at @s run execute as @a[distance=4..9] run effect give @s minecraft:slowness 3 1 true
