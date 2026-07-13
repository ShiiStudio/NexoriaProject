scoreboard players set @s shop 0
execute if score @s Gold matches 140.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 140
execute if score @s shop matches 1 run give @s minecraft:chainmail_boots[custom_name='{"text":"衛兵のブーツ","color":"green","italic":false}',custom_data={nexoria_armor:"guard_boots",hp:4},attribute_modifiers=[{id:"guard_boots_hp",type:"minecraft:generic.max_health",amount:4,operation:"add_value",slot:"feet"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 衛兵のブーツを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：140G","color":"red"}
