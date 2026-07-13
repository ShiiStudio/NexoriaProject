scoreboard players set #craft shop 1
execute store result score #mat0 shop run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 0
execute unless score #mat0 shop matches 16.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:amethyst_shard[custom_data={nexoria_item:"ancient_guardian_fragment"}] 0
execute unless score #mat1 shop matches 6.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 0
execute unless score #mat2 shop matches 8.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run clear @s minecraft:iron_ingot[custom_data={nexoria_material:"iron_ingot"}] 16
execute if score #craft shop matches 1 run clear @s minecraft:amethyst_shard[custom_data={nexoria_item:"ancient_guardian_fragment"}] 6
execute if score #craft shop matches 1 run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 8
execute if score #craft shop matches 1 run give @s minecraft:iron_chestplate[custom_name='{"text":"古代の胸当て","color":"blue","italic":false}',custom_data={nexoria_armor:"ancient_chestplate",hp:20},attribute_modifiers=[{id:"ancient_chestplate_hp",type:"minecraft:generic.max_health",amount:20,operation:"add_value",slot:"chest"}],unbreakable={},trim={pattern:"minecraft:ward",material:"minecraft:amethyst"}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 古代の胸当てを作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
