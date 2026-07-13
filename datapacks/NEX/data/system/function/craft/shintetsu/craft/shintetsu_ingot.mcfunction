scoreboard players set #craft shop 1
execute unless score @s Gold matches 500.. run scoreboard players set #craft shop 0
execute store result score #mat0 shop run clear @s minecraft:nether_star[custom_data={nexoria_item:"ancient_thunder_core"}] 0
execute unless score #mat0 shop matches 1.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:netherite_scrap[custom_data={nexoria_item:"dead_knight_soul_fragment"}] 0
execute unless score #mat1 shop matches 1.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run scoreboard players remove @s Gold 500
execute if score #craft shop matches 1 run clear @s minecraft:nether_star[custom_data={nexoria_item:"ancient_thunder_core"}] 1
execute if score #craft shop matches 1 run clear @s minecraft:netherite_scrap[custom_data={nexoria_item:"dead_knight_soul_fragment"}] 1
execute if score #craft shop matches 1 run give @s minecraft:netherite_ingot[custom_name='{"text":"神鉄インゴット","color":"gold","italic":false}',custom_data={nexoria_material:"shintetsu_ingot"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 神鉄インゴットを加工しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
