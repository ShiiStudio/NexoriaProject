scoreboard players set @s shop 0
execute if score @s Gold matches 420.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 420
execute if score @s shop matches 1 run give @s minecraft:diamond_boots[custom_name='{"text":"深海のブーツ","color":"blue","italic":false}',custom_data={nexoria_armor:"deep_shop_boots",hp:10},attribute_modifiers=[{id:"deep_shop_boots_hp",type:"minecraft:generic.max_health",amount:10,operation:"add_value",slot:"feet"}],unbreakable={},trim={pattern:"minecraft:coast",material:"minecraft:lapis"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 深海のブーツを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：420G","color":"red"}
