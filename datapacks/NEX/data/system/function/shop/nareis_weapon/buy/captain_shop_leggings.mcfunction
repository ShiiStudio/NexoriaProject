scoreboard players set @s shop 0
execute if score @s Gold matches 680.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 680
execute if score @s shop matches 1 run give @s minecraft:iron_leggings[custom_name='{"text":"隊長の脚甲","color":"blue","italic":false}',custom_data={nexoria_armor:"captain_shop_leggings",hp:16},attribute_modifiers=[{id:"captain_shop_leggings_hp",type:"minecraft:generic.max_health",amount:16,operation:"add_value",slot:"legs"}],unbreakable={},trim={pattern:"minecraft:sentry",material:"minecraft:copper"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 隊長の脚甲を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：680G","color":"red"}
