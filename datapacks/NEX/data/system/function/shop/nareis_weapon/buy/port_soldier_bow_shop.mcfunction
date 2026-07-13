scoreboard players set @s shop 0
execute if score @s Gold matches 900.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 900
execute if score @s shop matches 1 run give @s minecraft:bow[custom_name='{"text":"港兵の弓","color":"blue","italic":false}',custom_data={nexoria_weapon:"port_soldier_bow_shop"},enchantments={levels:{"minecraft:infinity":1,"minecraft:power":2}},unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 港兵の弓を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：900G","color":"red"}
