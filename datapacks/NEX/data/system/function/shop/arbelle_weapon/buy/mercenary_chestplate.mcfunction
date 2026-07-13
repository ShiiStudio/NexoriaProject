scoreboard players set @s shop 0
execute if score @s Gold matches 400.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 400
execute if score @s shop matches 1 run give @s minecraft:iron_chestplate[custom_name='{"text":"傭兵の胸当て","color":"green","italic":false}',custom_data={nexoria_armor:"mercenary_chestplate",hp:14},attribute_modifiers=[{id:"mercenary_chestplate_hp",type:"minecraft:generic.max_health",amount:14,operation:"add_value",slot:"chest"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 傭兵の胸当てを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：400G","color":"red"}
