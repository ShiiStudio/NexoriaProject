scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 10.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:iron_nugget[custom_data={nexoria_item:"old_iron"}] 0
execute unless score #mat1 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:bone[custom_data={nexoria_item:"rotten_bone"}] 0
execute unless score #mat2 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 10
execute if score #craft shop matches 1 run clear @s minecraft:iron_nugget[custom_data={nexoria_item:"old_iron"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:bone[custom_data={nexoria_item:"rotten_bone"}] 8
execute if score #craft shop matches 1 run give @s minecraft:chainmail_leggings[custom_name='{"text":"騎士の脚甲","color":"blue","italic":false}',custom_data={nexoria_armor:"knight_leggings",hp:11},attribute_modifiers=[{id:"knight_leggings_hp",type:"minecraft:generic.max_health",amount:11,operation:"add_value",slot:"legs"}],unbreakable={}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 騎士の脚甲を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
