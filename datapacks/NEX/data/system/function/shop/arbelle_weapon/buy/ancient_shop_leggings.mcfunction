scoreboard players set @s shop 0
execute if score @s Gold matches 500.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 500
execute if score @s shop matches 1 run give @s minecraft:iron_leggings[custom_name='{"text":"古代の脚甲","color":"blue","italic":false}',custom_data={nexoria_armor:"ancient_shop_leggings",hp:13},attribute_modifiers=[{id:"ancient_shop_leggings_hp",type:"minecraft:generic.max_health",amount:13,operation:"add_value",slot:"legs"}],unbreakable={},trim={pattern:"minecraft:ward",material:"minecraft:amethyst"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 古代の脚甲を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：500G","color":"red"}
