scoreboard players set @s shop 0
execute if score @s Gold matches 10.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 10
execute if score @s shop matches 1 run give @s minecraft:apple[custom_name='{"text":"りんご","color":"green","italic":false}',custom_data={nexoria_food:"apple"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ りんごを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：10G","color":"red"}
