scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 16.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:heart_of_the_sea[custom_data={nexoria_item:"guardian_crystal"}] 0
execute unless score #mat1 shop matches 3.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"deep_spike"}] 0
execute unless score #mat2 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 16
execute if score #craft shop matches 1 run clear @s minecraft:heart_of_the_sea[custom_data={nexoria_item:"guardian_crystal"}] 3
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"deep_spike"}] 8
execute if score #craft shop matches 1 run give @s minecraft:diamond_leggings[custom_name='{"text":"守護者の脚甲","color":"blue","italic":false}',custom_data={nexoria_armor:"guardian_leggings",hp:19},attribute_modifiers=[{id:"guardian_leggings_hp",type:"minecraft:generic.max_health",amount:19,operation:"add_value",slot:"legs"}],unbreakable={},trim={pattern:"minecraft:bolt",material:"minecraft:diamond"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 守護者の脚甲を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
