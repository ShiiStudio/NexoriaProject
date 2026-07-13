scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"captain_emblem"}] 0
execute unless score #mat1 shop matches 2.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 0
execute unless score #mat2 shop matches 6.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:echo_shard[custom_data={nexoria_item:"captain_emblem"}] 2
execute if score #craft shop matches 1 run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 6
execute if score #craft shop matches 1 run give @s minecraft:iron_helmet[custom_name='{"text":"隊長の兜","color":"blue","italic":false}',custom_data={nexoria_armor:"captain_helmet",hp:10},attribute_modifiers=[{id:"captain_helmet_hp",type:"minecraft:generic.max_health",amount:10,operation:"add_value",slot:"head"}],unbreakable={},trim={pattern:"minecraft:sentry",material:"minecraft:copper"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 隊長の兜を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
