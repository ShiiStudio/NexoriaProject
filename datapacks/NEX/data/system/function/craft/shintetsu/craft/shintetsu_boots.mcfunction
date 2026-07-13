scoreboard players set #craft shop 1
execute unless score @s Gold matches 2500.. run scoreboard players set #craft shop 0
execute store result score #mat0 shop run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 0
execute unless score #mat0 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:spider_eye[custom_data={nexoria_item:"arachne_fang"}] 0
execute unless score #mat1 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:string[custom_data={nexoria_item:"queen_spider_thread"}] 0
execute unless score #mat2 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run scoreboard players remove @s Gold 2500
execute if score #craft shop matches 1 run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:spider_eye[custom_data={nexoria_item:"arachne_fang"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:string[custom_data={nexoria_item:"queen_spider_thread"}] 8
execute if score #craft shop matches 1 run give @s minecraft:iron_boots[custom_name='{"text":"神鉄のブーツ","color":"gold","italic":false}',custom_data={nexoria_armor:"shintetsu_boots",hp:20},attribute_modifiers=[{id:"shintetsu_boots_hp",type:"minecraft:generic.max_health",amount:20,operation:"add_value",slot:"feet"}],unbreakable={},trim={pattern:"minecraft:flow",material:"minecraft:gold"},enchantments={levels:{"minecraft:unbreaking":1}}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 神鉄のブーツを作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
