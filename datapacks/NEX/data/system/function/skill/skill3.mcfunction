# 深海の守護者：13秒サイクル
execute as @e[tag=elder_guardian] run scoreboard players add @s timer3 1

# 2.0秒 予告：水圧波
execute as @e[tag=elder_guardian,scores={timer3=40}] at @s run particle minecraft:bubble ~ ~1 ~ 6 1 6 0.08 120 force
execute as @e[tag=elder_guardian,scores={timer3=40}] at @s run playsound minecraft:entity.elder_guardian.curse master @a[distance=..24] ~ ~ ~ 0.7 1.5

# 3.0秒 水圧波（近距離範囲）
execute as @e[tag=elder_guardian,scores={timer3=60}] at @s run execute as @a[distance=..6] run damage @s 6 minecraft:mob_attack by @e[tag=elder_guardian,distance=..8,limit=1,sort=nearest]
execute as @e[tag=elder_guardian,scores={timer3=60}] at @s run particle minecraft:splash ~ ~1 ~ 5 1 5 0.15 150 force

# 5.0秒 予告：氷結視線（最も近い1人）
execute as @e[tag=elder_guardian,scores={timer3=100}] at @s run execute as @a[distance=..16,limit=1,sort=nearest] at @s run particle minecraft:snowflake ~ ~1 ~ 0.8 1.2 0.8 0.04 60 force
execute as @e[tag=elder_guardian,scores={timer3=100}] at @s run playsound minecraft:block.beacon.activate master @a[distance=..24] ~ ~ ~ 0.7 1.7

# 6.0秒 氷結視線
execute as @e[tag=elder_guardian,scores={timer3=120}] at @s run execute as @a[distance=..16,limit=1,sort=nearest] run damage @s 7 minecraft:mob_attack by @e[tag=elder_guardian,distance=..16,limit=1,sort=nearest]
execute as @e[tag=elder_guardian,scores={timer3=120}] at @s run execute as @a[distance=..16,limit=1,sort=nearest] run effect give @s minecraft:slowness 3 2 true

# 8.5秒 予告：深海の渦（外周攻撃）
execute as @e[tag=elder_guardian,scores={timer3=170}] at @s run particle minecraft:bubble ~ ~1 ~ 8 1 8 0.05 180 force
execute as @e[tag=elder_guardian,scores={timer3=170}] at @s run playsound minecraft:entity.drowned.ambient_water master @a[distance=..24] ~ ~ ~ 1 0.5

# 9.5秒 深海の渦（4～10マス）
execute as @e[tag=elder_guardian,scores={timer3=190}] at @s run execute as @a[distance=4..10] run damage @s 6 minecraft:mob_attack by @e[tag=elder_guardian,distance=..12,limit=1,sort=nearest]
execute as @e[tag=elder_guardian,scores={timer3=190}] at @s run execute as @a[distance=4..10] run effect give @s minecraft:slowness 2 1 true
execute as @e[tag=elder_guardian,scores={timer3=190}] at @s run particle minecraft:splash ~ ~1 ~ 8 1 8 0.12 220 force

execute as @e[tag=elder_guardian,scores={timer3=260..}] run scoreboard players set @s timer3 0
