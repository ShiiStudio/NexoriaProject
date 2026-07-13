scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 12.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"captain_emblem"}] 0
execute unless score #mat1 shop matches 2.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 0
execute unless score #mat2 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat3 shop run clear @s minecraft:spruce_log[custom_data={nexoria_item:"spruce_log"}] 0
execute unless score #mat3 shop matches 16.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 12
execute if score #craft shop matches 1 run clear @s minecraft:echo_shard[custom_data={nexoria_item:"captain_emblem"}] 2
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:spruce_log[custom_data={nexoria_item:"spruce_log"}] 16
execute if score #craft shop matches 1 run give @s minecraft:bow[custom_name='{"text":"港兵の弓","color":"blue","italic":false}',custom_data={nexoria_weapon:"port_bow"},enchantments={levels:{"minecraft:infinity":1,"minecraft:power":2}},unbreakable={}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 港兵の弓を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
