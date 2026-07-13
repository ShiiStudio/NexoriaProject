scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 10.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:heart_of_the_sea[custom_data={nexoria_item:"guardian_crystal"}] 0
execute unless score #mat1 shop matches 2.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"deep_spike"}] 0
execute unless score #mat2 shop matches 6.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 10
execute if score #craft shop matches 1 run clear @s minecraft:heart_of_the_sea[custom_data={nexoria_item:"guardian_crystal"}] 2
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"deep_spike"}] 6
execute if score #craft shop matches 1 run give @s minecraft:diamond_helmet[custom_name='{"text":"守護者の兜","color":"blue","italic":false}',custom_data={nexoria_armor:"guardian_helmet",hp:12},attribute_modifiers=[{id:"guardian_helmet_hp",type:"minecraft:generic.max_health",amount:12,operation:"add_value",slot:"head"}],unbreakable={},trim={pattern:"minecraft:bolt",material:"minecraft:diamond"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 守護者の兜を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
