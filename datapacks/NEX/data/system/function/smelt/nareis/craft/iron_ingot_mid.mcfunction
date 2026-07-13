scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_block[custom_data={nexoria_item:"high_iron"}] 0
execute unless score #mat0 shop matches 2.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:coal[custom_data={nexoria_item:"low_coal"}] 0
execute unless score #mat1 shop matches 1.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_block[custom_data={nexoria_item:"high_iron"}] 2
execute if score #craft shop matches 1 run clear @s minecraft:coal[custom_data={nexoria_item:"low_coal"}] 1
execute if score #craft shop matches 1 run give @s minecraft:iron_ingot[custom_name='{"text":"鉄インゴット","color":"green","italic":false}',custom_data={nexoria_material:"iron_ingot"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 鉄インゴットを加工しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
