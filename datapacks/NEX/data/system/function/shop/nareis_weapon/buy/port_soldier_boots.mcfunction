scoreboard players set @s shop 0
execute if score @s Gold matches 300.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 300
execute if score @s shop matches 1 run give @s minecraft:iron_boots[custom_name='{"text":"港兵のブーツ","color":"blue","italic":false}',custom_data={nexoria_armor:"port_soldier_boots",hp:8},attribute_modifiers=[{id:"port_soldier_boots_hp",type:"minecraft:generic.max_health",amount:8,operation:"add_value",slot:"feet"}],unbreakable={},trim={pattern:"minecraft:coast",material:"minecraft:diamond"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 港兵のブーツを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：300G","color":"red"}
