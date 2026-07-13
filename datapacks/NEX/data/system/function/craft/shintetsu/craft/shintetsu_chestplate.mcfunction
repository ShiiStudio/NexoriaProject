scoreboard players set #craft shop 1
execute unless score @s Gold matches 6000.. run scoreboard players set #craft shop 0
execute store result score #mat0 shop run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 0
execute unless score #mat0 shop matches 20.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:amethyst_shard[custom_data={nexoria_item:"ancient_guardian_fragment"}] 0
execute unless score #mat1 shop matches 10.. run scoreboard players set #craft shop 0
execute store result score #mat2 shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 0
execute unless score #mat2 shop matches 12.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run scoreboard players remove @s Gold 6000
execute if score #craft shop matches 1 run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 20
execute if score #craft shop matches 1 run clear @s minecraft:amethyst_shard[custom_data={nexoria_item:"ancient_guardian_fragment"}] 10
execute if score #craft shop matches 1 run clear @s minecraft:echo_shard[custom_data={nexoria_item:"ancient_magic_shard"}] 12
execute if score #craft shop matches 1 run give @s minecraft:iron_chestplate[custom_name='{"text":"神鉄の胸当て","color":"gold","italic":false}',custom_data={nexoria_armor:"shintetsu_chestplate",hp:40},attribute_modifiers=[{id:"shintetsu_chestplate_hp",type:"minecraft:generic.max_health",amount:40,operation:"add_value",slot:"chest"}],unbreakable={},trim={pattern:"minecraft:flow",material:"minecraft:gold"},enchantments={levels:{"minecraft:unbreaking":1}}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 神鉄の胸当てを作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
