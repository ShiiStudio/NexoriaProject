scoreboard players set #craft shop 1
execute unless score @s Gold matches 2500.. run scoreboard players set #craft shop 0
execute store result score #mat0 shop run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 0
execute unless score #mat0 shop matches 8.. run scoreboard players set #craft shop 0
execute store result score #mat1 shop run clear @s minecraft:amethyst_shard[custom_data={nexoria_item:"ancient_guardian_fragment"}] 0
execute unless score #mat1 shop matches 6.. run scoreboard players set #craft shop 0
execute if score #craft shop matches 1 run scoreboard players remove @s Gold 2500
execute if score #craft shop matches 1 run clear @s minecraft:netherite_ingot[custom_data={nexoria_material:"shintetsu_ingot"}] 8
execute if score #craft shop matches 1 run clear @s minecraft:amethyst_shard[custom_data={nexoria_item:"ancient_guardian_fragment"}] 6
execute if score #craft shop matches 1 run give @s minecraft:iron_helmet[custom_name='{"text":"神鉄の兜","color":"gold","italic":false}',custom_data={nexoria_armor:"shintetsu_helmet",hp:20},attribute_modifiers=[{id:"shintetsu_helmet_hp",type:"minecraft:generic.max_health",amount:20,operation:"add_value",slot:"head"}],unbreakable={},trim={pattern:"minecraft:flow",material:"minecraft:gold"},enchantments={levels:{"minecraft:unbreaking":1}}] 1
execute if score #craft shop matches 1 run tellraw @s {"text":"✔ 神鉄の兜を作成しました。","color":"green"}
execute unless score #craft shop matches 1 run tellraw @s {"text":"素材またはGoldが足りません。","color":"red"}
