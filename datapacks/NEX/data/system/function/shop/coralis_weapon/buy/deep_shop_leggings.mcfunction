scoreboard players set @s shop 0
execute if score @s Gold matches 680.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 680
execute if score @s shop matches 1 run give @s minecraft:diamond_leggings[custom_name='{"text":"深海の脚甲","color":"blue","italic":false}',custom_data={nexoria_armor:"deep_shop_leggings",hp:16},attribute_modifiers=[{id:"deep_shop_leggings_hp",type:"minecraft:generic.max_health",amount:16,operation:"add_value",slot:"legs"}],unbreakable={},trim={pattern:"minecraft:coast",material:"minecraft:lapis"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 深海の脚甲を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：680G","color":"red"}
