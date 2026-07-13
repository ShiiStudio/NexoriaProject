scoreboard players set @s shop 0
execute if score @s Gold matches 420.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 420
execute if score @s shop matches 1 run give @s minecraft:iron_helmet[custom_name='{"text":"隊長の兜","color":"blue","italic":false}',custom_data={nexoria_armor:"captain_shop_helmet",hp:10},attribute_modifiers=[{id:"captain_shop_helmet_hp",type:"minecraft:generic.max_health",amount:10,operation:"add_value",slot:"head"}],unbreakable={},trim={pattern:"minecraft:sentry",material:"minecraft:copper"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 隊長の兜を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：420G","color":"red"}
