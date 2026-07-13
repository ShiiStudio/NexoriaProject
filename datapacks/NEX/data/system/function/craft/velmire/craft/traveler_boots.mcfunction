scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 4.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:light_blue_wool[custom_data={nexoria_item:"wet_cloth"}] 0
execute unless score #mat1 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 4
execute if score #craft shop matches 1 run clear @s minecraft:light_blue_wool[custom_data={nexoria_item:"wet_cloth"}] 8
execute if score #craft shop matches 1 run give @s minecraft:leather_boots[custom_name='{"text":"旅人のブーツ","color":"green","italic":false}',custom_data={nexoria_armor:"traveler_boots",hp:5},attribute_modifiers=[{id:"traveler_boots_hp",type:"minecraft:generic.max_health",amount:5,operation:"add_value",slot:"feet"}],unbreakable={}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 旅人のブーツを作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
