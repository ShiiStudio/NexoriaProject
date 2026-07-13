scoreboard players set @s shop 0
execute if score @s Gold matches 300.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 300
execute if score @s shop matches 1 run give @s minecraft:bone[custom_name='{"text":"Velmireウルフ","color":"blue","italic":false}',custom_data={nexoria_pet:"velmire_wolf"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ Velmireウルフを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：300G","color":"red"}
