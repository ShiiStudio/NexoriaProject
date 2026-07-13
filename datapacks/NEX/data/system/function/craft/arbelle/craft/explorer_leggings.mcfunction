scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:spider_eye[custom_data={nexoria_item:"spider_fang"}] 0
execute unless score #mat1 shop matches 6.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:bone[custom_data={nexoria_item:"strong_bone"}] 0
execute unless score #mat2 shop matches 4.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:spider_eye[custom_data={nexoria_item:"spider_fang"}] 6
execute if score #craft shop matches 1 run clear @s minecraft:bone[custom_data={nexoria_item:"strong_bone"}] 4
execute if score #craft shop matches 1 run give @s minecraft:leather_leggings[custom_name='{"text":"探索者の脚甲","color":"green","italic":false}',custom_data={nexoria_armor:"explorer_leggings",hp:11},attribute_modifiers=[{id:"explorer_leggings_hp",type:"minecraft:generic.max_health",amount:11,operation:"add_value",slot:"legs"}],unbreakable={},trim={pattern:"minecraft:sentry",material:"minecraft:copper"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 探索者の脚甲を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
