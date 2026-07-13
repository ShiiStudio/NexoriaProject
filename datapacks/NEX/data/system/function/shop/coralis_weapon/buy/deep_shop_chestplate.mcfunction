scoreboard players set @s shop 0
execute if score @s Gold matches 900.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 900
execute if score @s shop matches 1 run give @s minecraft:diamond_chestplate[custom_name='{"text":"深海の胸当て","color":"blue","italic":false}',custom_data={nexoria_armor:"deep_shop_chestplate",hp:22},attribute_modifiers=[{id:"deep_shop_chestplate_hp",type:"minecraft:generic.max_health",amount:22,operation:"add_value",slot:"chest"}],unbreakable={},trim={pattern:"minecraft:coast",material:"minecraft:lapis"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 深海の胸当てを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：900G","color":"red"}
