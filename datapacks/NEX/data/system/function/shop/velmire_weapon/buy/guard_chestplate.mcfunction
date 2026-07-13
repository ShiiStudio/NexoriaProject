scoreboard players set @s shop 0
execute if score @s Gold matches 360.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 360
execute if score @s shop matches 1 run give @s minecraft:iron_chestplate[custom_name='{"text":"衛兵の胸当て","color":"green","italic":false}',custom_data={nexoria_armor:"guard_chestplate",hp:10},attribute_modifiers=[{id:"guard_chestplate_hp",type:"minecraft:generic.max_health",amount:10,operation:"add_value",slot:"chest"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 衛兵の胸当てを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：360G","color":"red"}
