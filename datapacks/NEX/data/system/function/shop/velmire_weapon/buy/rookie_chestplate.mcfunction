scoreboard players set @s shop 0
execute if score @s Gold matches 180.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 180
execute if score @s shop matches 1 run give @s minecraft:leather_chestplate[custom_name='{"text":"新兵の胸当て","color":"green","italic":false}',custom_data={nexoria_armor:"rookie_chestplate",hp:6},attribute_modifiers=[{id:"rookie_chestplate_hp",type:"minecraft:generic.max_health",amount:6,operation:"add_value",slot:"chest"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 新兵の胸当てを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：180G","color":"red"}
