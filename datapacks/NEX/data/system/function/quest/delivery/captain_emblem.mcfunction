execute store result score #has q_tmp run clear @s minecraft:echo_shard[minecraft:custom_data={nexoria_item:"captain_emblem"}] 0
execute if score #has q_tmp matches 8.. run clear @s minecraft:echo_shard[minecraft:custom_data={nexoria_item:"captain_emblem"}] 8
execute if score #has q_tmp matches 8.. run scoreboard players set @s q_progress 8
execute if score #has q_tmp matches 8.. run function system:quest/check
execute if score #has q_tmp matches 8.. run tellraw @s {"text":"隊長の紋章8個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 8.. run tellraw @s {"text":"素材が足りません：隊長の紋章8個納品","color":"dark_green"}
function system:quest/npc
