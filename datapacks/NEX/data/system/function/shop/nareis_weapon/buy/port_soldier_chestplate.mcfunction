scoreboard players set @s shop 0
execute if score @s Gold matches 650.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 650
execute if score @s shop matches 1 run give @s minecraft:iron_chestplate[custom_name='{"text":"港兵の胸当て","color":"blue","italic":false}',custom_data={nexoria_armor:"port_soldier_chestplate",hp:18},attribute_modifiers=[{id:"port_soldier_chestplate_hp",type:"minecraft:generic.max_health",amount:18,operation:"add_value",slot:"chest"}],unbreakable={},trim={pattern:"minecraft:coast",material:"minecraft:diamond"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 港兵の胸当てを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：650G","color":"red"}
