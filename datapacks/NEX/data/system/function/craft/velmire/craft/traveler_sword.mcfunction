scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:oak_log[custom_data={nexoria_item:"oak_log"}] 0
execute unless score #mat1 shop matches 16.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:bone[custom_data={nexoria_item:"bone_fragment"}] 0
execute unless score #mat2 shop matches 10.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:oak_log[custom_data={nexoria_item:"oak_log"}] 16
execute if score #craft shop matches 1 run clear @s minecraft:bone[custom_data={nexoria_item:"bone_fragment"}] 10
execute if score #craft shop matches 1 run give @s minecraft:iron_sword[custom_name='{"text":"旅人の剣","color":"green","italic":false}',custom_data={nexoria_weapon:"traveler_sword",atk:5},attribute_modifiers=[{id:"traveler_sword_atk",type:"minecraft:generic.attack_damage",amount:5,operation:"add_value",slot:"mainhand"},{id:"traveler_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 旅人の剣を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
