scoreboard players set @s shop 0
execute if score @s Gold matches 180.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 180
execute if score @s shop matches 1 run give @s minecraft:chainmail_boots[custom_name='{"text":"傭兵のブーツ","color":"green","italic":false}',custom_data={nexoria_armor:"mercenary_boots",hp:6},attribute_modifiers=[{id:"mercenary_boots_hp",type:"minecraft:generic.max_health",amount:6,operation:"add_value",slot:"feet"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 傭兵のブーツを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：180G","color":"red"}
