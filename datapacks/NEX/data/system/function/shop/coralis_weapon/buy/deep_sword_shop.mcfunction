scoreboard players set @s shop 0
execute if score @s Gold matches 1200.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 1200
execute if score @s shop matches 1 run give @s minecraft:diamond_sword[custom_name='{"text":"深海の剣","color":"blue","italic":false}',custom_data={nexoria_weapon:"deep_sword_shop",atk:10},attribute_modifiers=[{id:"deep_sword_shop_atk",type:"minecraft:generic.attack_damage",amount:10,operation:"add_value",slot:"mainhand"},{id:"deep_sword_shop_speed",type:"minecraft:generic.attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 深海の剣を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：1200G","color":"red"}
