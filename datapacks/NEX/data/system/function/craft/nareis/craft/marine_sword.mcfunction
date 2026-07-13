scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 14.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"captain_emblem"}] 0
execute unless score #mat1 shop matches 3.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:prismarine_crystals[custom_data={nexoria_item:"sea_crystal"}] 0
execute unless score #mat2 shop matches 12.. run scoreboard players set #craft shop 0
execute store result score #mat3 shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 0
execute unless score #mat3 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 14
execute if score #craft shop matches 1 run clear @s minecraft:echo_shard[custom_data={nexoria_item:"captain_emblem"}] 3
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_crystals[custom_data={nexoria_item:"sea_crystal"}] 12
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 8
execute if score #craft shop matches 1 run give @s minecraft:iron_sword[custom_name='{"text":"海兵の剣","color":"blue","italic":false}',custom_data={nexoria_weapon:"marine_sword",atk:10},attribute_modifiers=[{id:"marine_sword_atk",type:"minecraft:generic.attack_damage",amount:10,operation:"add_value",slot:"mainhand"},{id:"marine_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 海兵の剣を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
