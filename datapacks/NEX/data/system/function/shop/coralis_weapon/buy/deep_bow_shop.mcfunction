scoreboard players set @s shop 0
execute if score @s Gold matches 1300.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 1300
execute if score @s shop matches 1 run give @s minecraft:bow[custom_name='{"text":"深海の弓","color":"blue","italic":false}',custom_data={nexoria_weapon:"deep_bow_shop"},enchantments={levels:{"minecraft:infinity":1,"minecraft:power":3}},unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 深海の弓を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：1300G","color":"red"}
