scoreboard players set @s shop 0
execute if score @s Gold matches 300.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 300
execute if score @s shop matches 1 run give @s minecraft:chainmail_leggings[custom_name='{"text":"衛兵の脚甲","color":"green","italic":false}',custom_data={nexoria_armor:"guard_leggings",hp:7},attribute_modifiers=[{id:"guard_leggings_hp",type:"minecraft:generic.max_health",amount:7,operation:"add_value",slot:"legs"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 衛兵の脚甲を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：300G","color":"red"}
