scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:white_wool[custom_data={nexoria_item:"old_cloth"}] 0
execute unless score #mat1 shop matches 12.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:white_wool[custom_data={nexoria_item:"old_cloth"}] 12
execute if score #craft shop matches 1 run give @s minecraft:leather_leggings[custom_name='{"text":"旅人の脚甲","color":"green","italic":false}',custom_data={nexoria_armor:"traveler_leggings",hp:8},attribute_modifiers=[{id:"traveler_leggings_hp",type:"minecraft:generic.max_health",amount:8,operation:"add_value",slot:"legs"}],unbreakable={}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 旅人の脚甲を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
