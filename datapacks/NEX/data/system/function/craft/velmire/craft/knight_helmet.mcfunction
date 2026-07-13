scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 6.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:bone[custom_data={nexoria_item:"strong_bone"}] 0
execute unless score #mat1 shop matches 6.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"dead_knight_emblem"}] 0
execute unless score #mat2 shop matches 1.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 6
execute if score #craft shop matches 1 run clear @s minecraft:bone[custom_data={nexoria_item:"strong_bone"}] 6
execute if score #craft shop matches 1 run clear @s minecraft:echo_shard[custom_data={nexoria_item:"dead_knight_emblem"}] 1
execute if score #craft shop matches 1 run give @s minecraft:iron_helmet[custom_name='{"text":"騎士の兜","color":"blue","italic":false}',custom_data={nexoria_armor:"knight_helmet",hp:7},attribute_modifiers=[{id:"knight_helmet_hp",type:"minecraft:generic.max_health",amount:7,operation:"add_value",slot:"head"}],unbreakable={}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 騎士の兜を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
