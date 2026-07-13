scoreboard players set @s shop 0
execute if score @s Gold matches 520.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 520
execute if score @s shop matches 1 run give @s minecraft:diamond_helmet[custom_name='{"text":"守護者の兜","color":"blue","italic":false}',custom_data={nexoria_armor:"guardian_shop_helmet",hp:12},attribute_modifiers=[{id:"guardian_shop_helmet_hp",type:"minecraft:generic.max_health",amount:12,operation:"add_value",slot:"head"}],unbreakable={},trim={pattern:"minecraft:bolt",material:"minecraft:diamond"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 守護者の兜を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：520G","color":"red"}
