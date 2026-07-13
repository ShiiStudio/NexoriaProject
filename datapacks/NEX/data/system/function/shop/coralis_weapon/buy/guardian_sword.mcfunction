scoreboard players set @s shop 0
execute if score @s Gold matches 1500.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 1500
execute if score @s shop matches 1 run give @s minecraft:diamond_sword[custom_name='{"text":"守護者の剣","color":"blue","italic":false}',custom_data={nexoria_weapon:"guardian_sword",atk:11},attribute_modifiers=[{id:"guardian_sword_atk",type:"minecraft:generic.attack_damage",amount:11,operation:"add_value",slot:"mainhand"},{id:"guardian_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 守護者の剣を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：1500G","color":"red"}
