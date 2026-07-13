scoreboard players set #craft shop 1
execute unless score @s Gold matches 4500.. run scoreboard players set #craft shop 0
execute store result score #mat0 shop run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 0
execute unless score #mat0 shop matches 14.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"dead_knight_emblem"}] 0
execute unless score #mat1 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:iron_nugget[custom_data={nexoria_item:"rusted_knight_iron"}] 0
execute unless score #mat2 shop matches 10.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run scoreboard players remove @s Gold 4500
execute if score #craft shop matches 1 run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 14
execute if score #craft shop matches 1 run clear @s minecraft:echo_shard[custom_data={nexoria_item:"dead_knight_emblem"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:iron_nugget[custom_data={nexoria_item:"rusted_knight_iron"}] 10
execute if score #craft shop matches 1 run give @s minecraft:iron_leggings[custom_name='{"text":"神鉄の脚甲","color":"gold","italic":false}',custom_data={nexoria_armor:"shintetsu_leggings",hp:30},attribute_modifiers=[{id:"shintetsu_leggings_hp",type:"minecraft:generic.max_health",amount:30,operation:"add_value",slot:"legs"}],unbreakable={},trim={pattern:"minecraft:flow",material:"minecraft:gold"},enchantments={levels:{"minecraft:unbreaking":1}}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 神鉄の脚甲を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
