scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 5.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:light_blue_wool[custom_data={nexoria_item:"wet_cloth"}] 0
execute unless score #mat1 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:string[custom_data={nexoria_item:"spider_string"}] 0
execute unless score #mat2 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 5
execute if score #craft shop matches 1 run clear @s minecraft:light_blue_wool[custom_data={nexoria_item:"wet_cloth"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:string[custom_data={nexoria_item:"spider_string"}] 8
execute if score #craft shop matches 1 run give @s minecraft:leather_boots[custom_name='{"text":"探索者のブーツ","color":"green","italic":false}',custom_data={nexoria_armor:"explorer_boots",hp:7},attribute_modifiers=[{id:"explorer_boots_hp",type:"minecraft:generic.max_health",amount:7,operation:"add_value",slot:"feet"}],unbreakable={},trim={pattern:"minecraft:sentry",material:"minecraft:copper"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 探索者のブーツを作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
