scoreboard players set @s shop 0
execute if score @s Gold matches 160.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 160
execute if score @s shop matches 1 run give @s minecraft:iron_helmet[custom_name='{"text":"衛兵の兜","color":"green","italic":false}',custom_data={nexoria_armor:"guard_helmet",hp:4},attribute_modifiers=[{id:"guard_helmet_hp",type:"minecraft:generic.max_health",amount:4,operation:"add_value",slot:"head"}],unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 衛兵の兜を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：160G","color":"red"}
