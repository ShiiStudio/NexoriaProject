scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 12.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:amethyst_shard[custom_data={nexoria_item:"ancient_guardian_fragment"}] 0
execute unless score #mat1 shop matches 4.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:string[custom_data={nexoria_item:"queen_spider_thread"}] 0
execute unless score #mat2 shop matches 6.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 12
execute if score #craft shop matches 1 run clear @s minecraft:amethyst_shard[custom_data={nexoria_item:"ancient_guardian_fragment"}] 4
execute if score #craft shop matches 1 run clear @s minecraft:string[custom_data={nexoria_item:"queen_spider_thread"}] 6
execute if score #craft shop matches 1 run give @s minecraft:iron_leggings[custom_name='{"text":"古代の脚甲","color":"blue","italic":false}',custom_data={nexoria_armor:"ancient_leggings",hp:14},attribute_modifiers=[{id:"ancient_leggings_hp",type:"minecraft:generic.max_health",amount:14,operation:"add_value",slot:"legs"}],unbreakable={},trim={pattern:"minecraft:ward",material:"minecraft:amethyst"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 古代の脚甲を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
