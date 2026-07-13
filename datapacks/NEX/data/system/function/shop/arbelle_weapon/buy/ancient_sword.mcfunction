scoreboard players set @s shop 0
execute if score @s Gold matches 750.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 750
execute if score @s shop matches 1 run give @s minecraft:iron_sword[custom_name='{"text":"古代の剣","color":"blue","italic":false}',custom_data={nexoria_weapon:"ancient_sword",atk:8},attribute_modifiers=[{id:"ancient_sword_atk",type:"minecraft:generic.attack_damage",amount:8,operation:"add_value",slot:"mainhand"},{id:"ancient_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 古代の剣を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：750G","color":"red"}
