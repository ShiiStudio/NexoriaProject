scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 10.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:string[custom_data={nexoria_item:"queen_spider_thread"}] 0
execute unless score #mat1 shop matches 6.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:white_wool[custom_data={nexoria_item:"old_cloth"}] 0
execute unless score #mat2 shop matches 10.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 10
execute if score #craft shop matches 1 run clear @s minecraft:string[custom_data={nexoria_item:"queen_spider_thread"}] 6
execute if score #craft shop matches 1 run clear @s minecraft:white_wool[custom_data={nexoria_item:"old_cloth"}] 10
execute if score #craft shop matches 1 run give @s minecraft:iron_chestplate[custom_name='{"text":"探索者の胸当て","color":"green","italic":false}',custom_data={nexoria_armor:"explorer_chestplate",hp:16},attribute_modifiers=[{id:"explorer_chestplate_hp",type:"minecraft:generic.max_health",amount:16,operation:"add_value",slot:"chest"}],unbreakable={},trim={pattern:"minecraft:sentry",material:"minecraft:copper"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 探索者の胸当てを作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
