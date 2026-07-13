scoreboard players set @s shop 0
execute if score @s Gold matches 80.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 80
execute if score @s shop matches 1 run give @s minecraft:leather_helmet[custom_name='{"text":"新兵の兜","color":"green","italic":false}',custom_data={nexoria_armor:"rookie_helmet",hp:2},attribute_modifiers=[{id:"rookie_helmet_hp",type:"minecraft:generic.max_health",amount:2,operation:"add_value",slot:"head"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 新兵の兜を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：80G","color":"red"}
