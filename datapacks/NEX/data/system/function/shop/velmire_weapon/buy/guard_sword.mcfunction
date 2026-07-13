scoreboard players set @s shop 0
execute if score @s Gold matches 250.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 250
execute if score @s shop matches 1 run give @s minecraft:stone_sword[custom_name='{"text":"衛兵の剣","color":"green","italic":false}',custom_data={nexoria_weapon:"guard_sword",atk:4},attribute_modifiers=[{id:"guard_sword_atk",type:"minecraft:generic.attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{id:"guard_sword_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 衛兵の剣を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：250G","color":"red"}
