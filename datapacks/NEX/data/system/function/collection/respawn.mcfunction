tag @s remove collection_inactive
tag @s add collection_active

execute if entity @s[tag=collection_oak] run scoreboard players set @s collection_hp 3
execute if entity @s[tag=collection_spruce] run scoreboard players set @s collection_hp 4
execute if entity @s[tag=collection_coal] run scoreboard players set @s collection_hp 3
execute if entity @s[tag=collection_iron] run scoreboard players set @s collection_hp 4

data merge entity @s {width:1.2f,height:1.5f}
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.4 0.3 0.02 10