scoreboard players set @s shop 0
execute if score @s Gold matches 850.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 850
execute if score @s shop matches 1 run give @s minecraft:diamond_leggings[custom_name='{"text":"守護者の脚甲","color":"blue","italic":false}',custom_data={nexoria_armor:"guardian_shop_leggings",hp:19},attribute_modifiers=[{id:"guardian_shop_leggings_hp",type:"minecraft:generic.max_health",amount:19,operation:"add_value",slot:"legs"}],unbreakable={},trim={pattern:"minecraft:bolt",material:"minecraft:diamond"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 守護者の脚甲を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：850G","color":"red"}
