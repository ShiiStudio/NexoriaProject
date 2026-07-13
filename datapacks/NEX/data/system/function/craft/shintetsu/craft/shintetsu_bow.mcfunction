scoreboard players set #craft shop 1
execute unless score @s Gold matches 5000.. run scoreboard players set #craft shop 0
execute store result score #mat0 shop run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 0
execute unless score #mat0 shop matches 18.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat1 shop matches 24.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:string[custom_data={nexoria_item:"queen_spider_thread"}] 0
execute unless score #mat2 shop matches 16.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run scoreboard players remove @s Gold 5000
execute if score #craft shop matches 1 run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 18
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 24
execute if score #craft shop matches 1 run clear @s minecraft:string[custom_data={nexoria_item:"queen_spider_thread"}] 16
execute if score #craft shop matches 1 run give @s minecraft:bow[custom_name='{"text":"神鉄の弓","color":"gold","italic":false}',custom_data={nexoria_weapon:"shintetsu_bow"},enchantments={levels:{"minecraft:infinity":1,"minecraft:power":5}},unbreakable={}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 神鉄の弓を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
