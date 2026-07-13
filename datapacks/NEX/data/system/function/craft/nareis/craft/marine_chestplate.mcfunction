scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 12.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:light_blue_wool[custom_data={nexoria_item:"wet_cloth"}] 0
execute unless score #mat1 shop matches 12.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:prismarine_crystals[custom_data={nexoria_item:"sea_crystal"}] 0
execute unless score #mat2 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 12
execute if score #craft shop matches 1 run clear @s minecraft:light_blue_wool[custom_data={nexoria_item:"wet_cloth"}] 12
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_crystals[custom_data={nexoria_item:"sea_crystal"}] 8
execute if score #craft shop matches 1 run give @s minecraft:iron_chestplate[custom_name='{"text":"海兵の胸当て","color":"green","italic":false}',custom_data={nexoria_armor:"marine_chestplate",hp:18},attribute_modifiers=[{id:"marine_chestplate_hp",type:"minecraft:generic.max_health",amount:18,operation:"add_value",slot:"chest"}],unbreakable={},trim={pattern:"minecraft:coast",material:"minecraft:diamond"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 海兵の胸当てを作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
