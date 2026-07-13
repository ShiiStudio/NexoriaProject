scoreboard players set @s shop 0
execute if score @s Gold matches 1050.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 1050
execute if score @s shop matches 1 run give @s minecraft:iron_sword[custom_name='{"text":"隊長の剣","color":"blue","italic":false}',custom_data={nexoria_weapon:"captain_sword",atk:9},attribute_modifiers=[{id:"captain_sword_atk",type:"minecraft:generic.attack_damage",amount:9,operation:"add_value",slot:"mainhand"},{id:"captain_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 隊長の剣を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：1050G","color":"red"}
