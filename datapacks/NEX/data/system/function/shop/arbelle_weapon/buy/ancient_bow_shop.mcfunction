scoreboard players set @s shop 0
execute if score @s Gold matches 700.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 700
execute if score @s shop matches 1 run give @s minecraft:bow[custom_name='{"text":"古代の弓","color":"blue","italic":false}',custom_data={nexoria_weapon:"ancient_bow_shop"},enchantments={levels:{"minecraft:infinity":1,"minecraft:power":1}},unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 古代の弓を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：700G","color":"red"}
