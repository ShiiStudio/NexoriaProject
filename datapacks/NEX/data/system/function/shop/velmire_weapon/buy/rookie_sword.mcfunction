scoreboard players set @s shop 0
execute if score @s Gold matches 100.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 100
execute if score @s shop matches 1 run give @s minecraft:wooden_sword[custom_name='{"text":"新兵の剣","color":"green","italic":false}',custom_data={nexoria_weapon:"rookie_sword",atk:2},attribute_modifiers=[{id:"rookie_sword_atk",type:"minecraft:generic.attack_damage",amount:2,operation:"add_value",slot:"mainhand"},{id:"rookie_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 新兵の剣を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：100G","color":"red"}
