scoreboard players set @s shop 0
execute if score @s Gold matches 1100.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 1100
execute if score @s shop matches 1 run give @s minecraft:diamond_chestplate[custom_name='{"text":"守護者の胸当て","color":"blue","italic":false}',custom_data={nexoria_armor:"guardian_shop_chestplate",hp:26},attribute_modifiers=[{id:"guardian_shop_chestplate_hp",type:"minecraft:generic.max_health",amount:26,operation:"add_value",slot:"chest"}],unbreakable={},trim={pattern:"minecraft:bolt",material:"minecraft:diamond"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 守護者の胸当てを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：1100G","color":"red"}
