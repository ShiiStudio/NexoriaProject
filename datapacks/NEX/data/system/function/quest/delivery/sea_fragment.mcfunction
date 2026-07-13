execute store result score #has q_tmp run clear @s minecraft:prismarine_shard[minecraft:custom_data={nexoria_item:"sea_fragment"}] 0
execute if score #has q_tmp matches 16.. run clear @s minecraft:prismarine_shard[minecraft:custom_data={nexoria_item:"sea_fragment"}] 16
execute if score #has q_tmp matches 16.. run scoreboard players set @s q_progress 16
execute if score #has q_tmp matches 16.. run function system:quest/check
execute if score #has q_tmp matches 16.. run tellraw @s {"text":"海晶片16個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 16.. run tellraw @s {"text":"素材が足りません：海晶片16個納品","color":"dark_green"}
function system:quest/npc
