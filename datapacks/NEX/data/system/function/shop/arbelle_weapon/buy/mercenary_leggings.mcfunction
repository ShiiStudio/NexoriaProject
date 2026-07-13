scoreboard players set @s shop 0
execute if score @s Gold matches 300.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 300
execute if score @s shop matches 1 run give @s minecraft:chainmail_leggings[custom_name='{"text":"傭兵の脚甲","color":"green","italic":false}',custom_data={nexoria_armor:"mercenary_leggings",hp:10},attribute_modifiers=[{id:"mercenary_leggings_hp",type:"minecraft:generic.max_health",amount:10,operation:"add_value",slot:"legs"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 傭兵の脚甲を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：300G","color":"red"}
