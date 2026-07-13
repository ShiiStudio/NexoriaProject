scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 0
execute unless score #mat1 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:iron_nugget[custom_data={nexoria_item:"old_iron"}] 0
execute unless score #mat2 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:iron_nugget[custom_data={nexoria_item:"old_iron"}] 8
execute if score #craft shop matches 1 run give @s minecraft:gold_nugget[custom_name='{"text":"魔力の指輪","color":"blue","italic":false}',custom_data={accessory:"mana_ring"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 魔力の指輪を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
