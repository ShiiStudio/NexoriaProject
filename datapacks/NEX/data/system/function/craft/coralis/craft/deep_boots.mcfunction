scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:light_blue_wool[custom_data={nexoria_item:"wet_cloth"}] 0
execute unless score #mat1 shop matches 10.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 0
execute unless score #mat2 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:light_blue_wool[custom_data={nexoria_item:"wet_cloth"}] 10
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 8
execute if score #craft shop matches 1 run give @s minecraft:diamond_boots[custom_name='{"text":"深海のブーツ","color":"green","italic":false}',custom_data={nexoria_armor:"deep_boots",hp:10},attribute_modifiers=[{id:"deep_boots_hp",type:"minecraft:generic.max_health",amount:10,operation:"add_value",slot:"feet"}],unbreakable={},trim={pattern:"minecraft:coast",material:"minecraft:lapis"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 深海のブーツを作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
