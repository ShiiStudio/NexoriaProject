scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:spider_eye[custom_data={nexoria_item:"arachne_fang"}] 0
execute unless score #mat1 shop matches 4.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 0
execute unless score #mat2 shop matches 4.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:spider_eye[custom_data={nexoria_item:"arachne_fang"}] 4
execute if score #craft shop matches 1 run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 4
execute if score #craft shop matches 1 run give @s minecraft:iron_boots[custom_name='{"text":"古代のブーツ","color":"blue","italic":false}',custom_data={nexoria_armor:"ancient_boots",hp:9},attribute_modifiers=[{id:"ancient_boots_hp",type:"minecraft:generic.max_health",amount:9,operation:"add_value",slot:"feet"}],unbreakable={},trim={pattern:"minecraft:ward",material:"minecraft:amethyst"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 古代のブーツを作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
