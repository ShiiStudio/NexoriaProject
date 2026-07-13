scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 4.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:bone[custom_data={nexoria_item:"bone_fragment"}] 0
execute unless score #mat1 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 4
execute if score #craft shop matches 1 run clear @s minecraft:bone[custom_data={nexoria_item:"bone_fragment"}] 8
execute if score #craft shop matches 1 run give @s minecraft:leather_helmet[custom_name='{"text":"旅人の兜","color":"green","italic":false}',custom_data={nexoria_armor:"traveler_helmet",hp:5},attribute_modifiers=[{id:"traveler_helmet_hp",type:"minecraft:generic.max_health",amount:5,operation:"add_value",slot:"head"}],unbreakable={}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 旅人の兜を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
