scoreboard players set #power collection_power 0

execute as @p[distance=..4,sort=nearest,limit=1] if items entity @s weapon.mainhand minecraft:wooden_pickaxe[custom_data~{nexoria_tool:"pickaxe",tool_tier:1}] run scoreboard players set #power collection_power 1
execute as @p[distance=..4,sort=nearest,limit=1] if items entity @s weapon.mainhand minecraft:stone_pickaxe[custom_data~{nexoria_tool:"pickaxe",tool_tier:2}] run scoreboard players set #power collection_power 2
execute as @p[distance=..4,sort=nearest,limit=1] if items entity @s weapon.mainhand minecraft:iron_pickaxe[custom_data~{nexoria_tool:"pickaxe",tool_tier:3}] run scoreboard players set #power collection_power 3
execute as @p[distance=..4,sort=nearest,limit=1] if items entity @s weapon.mainhand minecraft:diamond_pickaxe[custom_data~{nexoria_tool:"pickaxe",tool_tier:4}] run scoreboard players set #power collection_power 4
execute as @p[distance=..4,sort=nearest,limit=1] if items entity @s weapon.mainhand minecraft:netherite_pickaxe[custom_data~{nexoria_tool:"pickaxe",tool_tier:5}] run scoreboard players set #power collection_power 5