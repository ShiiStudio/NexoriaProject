scoreboard players set @s shop 0
execute if score @s Gold matches 20.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 20
execute if score @s shop matches 1 run give @s minecraft:bread[custom_name='{"text":"パン","color":"green","italic":false}',custom_data={nexoria_food:"bread"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ パンを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：20G","color":"red"}
