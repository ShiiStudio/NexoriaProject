scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 12.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 0
execute unless score #mat1 shop matches 10.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"deep_spike"}] 0
execute unless score #mat2 shop matches 6.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 12
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 10
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"deep_spike"}] 6
execute if score #craft shop matches 1 run give @s minecraft:diamond_leggings[custom_name='{"text":"深海の脚甲","color":"green","italic":false}',custom_data={nexoria_armor:"deep_leggings",hp:16},attribute_modifiers=[{id:"deep_leggings_hp",type:"minecraft:generic.max_health",amount:16,operation:"add_value",slot:"legs"}],unbreakable={},trim={pattern:"minecraft:coast",material:"minecraft:lapis"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 深海の脚甲を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
