scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 18.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"deep_spike"}] 0
execute unless score #mat1 shop matches 10.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:heart_of_the_sea[custom_data={nexoria_item:"guardian_crystal"}] 0
execute unless score #mat2 shop matches 4.. run scoreboard players set #craft shop 0
execute store result score #mat3 shop run clear @s minecraft:nether_star[custom_data={nexoria_item:"deep_core"}] 0
execute unless score #mat3 shop matches 1.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 18
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"deep_spike"}] 10
execute if score #craft shop matches 1 run clear @s minecraft:heart_of_the_sea[custom_data={nexoria_item:"guardian_crystal"}] 4
execute if score #craft shop matches 1 run clear @s minecraft:nether_star[custom_data={nexoria_item:"deep_core"}] 1
execute if score #craft shop matches 1 run give @s minecraft:diamond_sword[custom_name='{"text":"深海の剣","color":"blue","italic":false}',custom_data={nexoria_weapon:"deep_sword",atk:12},attribute_modifiers=[{id:"deep_sword_atk",type:"minecraft:generic.attack_damage",amount:12,operation:"add_value",slot:"mainhand"},{id:"deep_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 深海の剣を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
