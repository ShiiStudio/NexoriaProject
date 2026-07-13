scoreboard players set @s shop 0
execute if score @s Gold matches 850.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 850
execute if score @s shop matches 1 run give @s minecraft:iron_sword[custom_name='{"text":"港衛兵の剣","color":"blue","italic":false}',custom_data={nexoria_weapon:"port_guard_sword",atk:8},attribute_modifiers=[{id:"port_guard_sword_atk",type:"minecraft:generic.attack_damage",amount:8,operation:"add_value",slot:"mainhand"},{id:"port_guard_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 港衛兵の剣を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：850G","color":"red"}
