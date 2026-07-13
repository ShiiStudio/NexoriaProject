scoreboard players set @s shop 0
execute if score @s Gold matches 180.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 180
execute if score @s shop matches 1 run give @s minecraft:bow[custom_name='{"text":"狩人の弓","color":"green","italic":false}',custom_data={nexoria_weapon:"hunter_bow_shop"},enchantments={levels:{"minecraft:infinity":1}},unbreakable={}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 狩人の弓を購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：180G","color":"red"}
