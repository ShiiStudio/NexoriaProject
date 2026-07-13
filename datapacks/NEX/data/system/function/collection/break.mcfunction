# 報酬
execute if entity @s[tag=collection_oak] run function system:collection/reward/oak
execute if entity @s[tag=collection_spruce] run function system:collection/reward/spruce
execute if entity @s[tag=collection_coal] run function system:collection/reward/coal
execute if entity @s[tag=collection_iron] run function system:collection/reward/iron

# 演出
particle minecraft:poof ~ ~1 ~ 0.4 0.5 0.4 0.05 20
playsound minecraft:block.wood.break player @a[distance=..10] ~ ~ ~ 1 1

# 休眠
tag @s remove collection_active
tag @s add collection_inactive
scoreboard players set @s collection_respawn 200
data merge entity @s {width:0.0f,height:0.0f}
execute if entity @s[tag=collection_oak] at @s run data modify entity @e[type=minecraft:armor_stand,tag=collection_display,tag=collection_oak,distance=..2,limit=1,sort=nearest] CustomName set value '{"text":"再生中...","color":"gray"}'
execute if entity @s[tag=collection_spruce] at @s run data modify entity @e[type=minecraft:armor_stand,tag=collection_display,tag=collection_spruce,distance=..2,limit=1,sort=nearest] CustomName set value '{"text":"再生中...","color":"gray"}'
execute if entity @s[tag=collection_coal] at @s run data modify entity @e[type=minecraft:armor_stand,tag=collection_display,tag=collection_coal,distance=..2,limit=1,sort=nearest] CustomName set value '{"text":"再生中...","color":"gray"}'
execute if entity @s[tag=collection_iron] at @s run data modify entity @e[type=minecraft:armor_stand,tag=collection_display,tag=collection_iron,distance=..2,limit=1,sort=nearest] CustomName set value '{"text":"再生中...","color":"gray"}'