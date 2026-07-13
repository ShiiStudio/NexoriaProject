scoreboard players set @s shop 0
execute if score @s Gold matches 400.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 400
execute if score @s shop matches 1 run give @s minecraft:iron_sword[custom_name='{"text":"傭兵の剣","color":"green","italic":false}',custom_data={nexoria_weapon:"mercenary_sword",atk:6},attribute_modifiers=[{id:"mercenary_sword_atk",type:"minecraft:generic.attack_damage",amount:6,operation:"add_value",slot:"mainhand"},{id:"mercenary_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 傭兵の剣を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：400G","color":"red"}
