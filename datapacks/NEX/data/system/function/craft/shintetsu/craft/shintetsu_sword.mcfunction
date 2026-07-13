scoreboard players set #craft shop 1
execute unless score @s Gold matches 5000.. run scoreboard players set #craft shop 0
execute store result score #mat0 shop run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 0
execute unless score #mat0 shop matches 20.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat1 shop matches 32.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 0
execute unless score #mat2 shop matches 16.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run scoreboard players remove @s Gold 5000
execute if score #craft shop matches 1 run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 20
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 32
execute if score #craft shop matches 1 run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 16
execute if score #craft shop matches 1 run give @s minecraft:iron_sword[custom_name='{"text":"神鉄の剣","color":"gold","italic":false}',custom_data={nexoria_weapon:"shintetsu_sword",atk:20},attribute_modifiers=[{id:"shintetsu_sword_atk",type:"minecraft:generic.attack_damage",amount:20,operation:"add_value",slot:"mainhand"},{id:"shintetsu_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={},enchantments={levels:{"minecraft:unbreaking":1}}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 神鉄の剣を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
