function system:collection/tool/check_axe

execute if score #power collection_power matches 0 run tellraw @p[distance=..4,sort=nearest,limit=1] {"text":"斧が必要です。","color":"red"}

execute if score #power collection_power matches 1.. run scoreboard players operation @s collection_hp -= #power collection_power
execute if score #power collection_power matches 1.. run particle minecraft:block{block_state:"minecraft:oak_log"} ~ ~1 ~ 0.3 0.4 0.3 0.02 8
execute if score #power collection_power matches 1.. run playsound minecraft:block.wood.hit player @a[distance=..8] ~ ~ ~ 0.8 1.2