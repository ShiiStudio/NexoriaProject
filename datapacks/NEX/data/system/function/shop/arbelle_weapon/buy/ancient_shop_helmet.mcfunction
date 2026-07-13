scoreboard players set @s shop 0
execute if score @s Gold matches 300.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 300
execute if score @s shop matches 1 run give @s minecraft:iron_helmet[custom_name='{"text":"古代の兜","color":"blue","italic":false}',custom_data={nexoria_armor:"ancient_shop_helmet",hp:8},attribute_modifiers=[{id:"ancient_shop_helmet_hp",type:"minecraft:generic.max_health",amount:8,operation:"add_value",slot:"head"}],unbreakable={},trim={pattern:"minecraft:ward",material:"minecraft:amethyst"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 古代の兜を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：300G","color":"red"}
