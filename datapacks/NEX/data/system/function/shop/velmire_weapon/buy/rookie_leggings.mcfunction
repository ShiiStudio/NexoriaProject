scoreboard players set @s shop 0
execute if score @s Gold matches 150.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 150
execute if score @s shop matches 1 run give @s minecraft:leather_leggings[custom_name='{"text":"新兵の脚甲","color":"green","italic":false}',custom_data={nexoria_armor:"rookie_leggings",hp:4},attribute_modifiers=[{id:"rookie_leggings_hp",type:"minecraft:generic.max_health",amount:4,operation:"add_value",slot:"legs"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 新兵の脚甲を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：150G","color":"red"}
