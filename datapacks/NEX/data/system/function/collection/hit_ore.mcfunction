function system:collection/tool/check_pickaxe

execute if score #power collection_power matches 0 run tellraw @p[distance=..4,sort=nearest,limit=1] {"text":"ツルハシが必要です。","color":"red"}

execute if score #power collection_power matches 1.. run scoreboard players operation @s collection_hp -= #power collection_power
execute if score #power collection_power matches 1.. run particle minecraft:block{block_state:"minecraft:stone"} ~ ~1 ~ 0.25 0.35 0.25 0.02 8
execute if score #power collection_power matches 1.. run playsound minecraft:block.stone.hit player @a[distance=..8] ~ ~ ~ 0.8 1.2