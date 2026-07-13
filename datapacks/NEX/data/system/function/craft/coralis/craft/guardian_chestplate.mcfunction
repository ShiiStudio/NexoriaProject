scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 20.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:heart_of_the_sea[custom_data={nexoria_item:"guardian_crystal"}] 0
execute unless score #mat1 shop matches 4.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:nether_star[custom_data={nexoria_item:"deep_core"}] 0
execute unless score #mat2 shop matches 1.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 20
execute if score #craft shop matches 1 run clear @s minecraft:heart_of_the_sea[custom_data={nexoria_item:"guardian_crystal"}] 4
execute if score #craft shop matches 1 run clear @s minecraft:nether_star[custom_data={nexoria_item:"deep_core"}] 1
execute if score #craft shop matches 1 run give @s minecraft:diamond_chestplate[custom_name='{"text":"守護者の胸当て","color":"blue","italic":false}',custom_data={nexoria_armor:"guardian_chestplate",hp:26},attribute_modifiers=[{id:"guardian_chestplate_hp",type:"minecraft:generic.max_health",amount:26,operation:"add_value",slot:"chest"}],unbreakable={},trim={pattern:"minecraft:bolt",material:"minecraft:diamond"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 守護者の胸当てを作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
