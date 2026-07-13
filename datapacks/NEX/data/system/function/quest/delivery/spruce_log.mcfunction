execute store result score #has q_tmp run clear @s minecraft:spruce_log[minecraft:custom_data={nexoria_item:"spruce_log"}] 0
execute if score #has q_tmp matches 64.. run clear @s minecraft:spruce_log[minecraft:custom_data={nexoria_item:"spruce_log"}] 64
execute if score #has q_tmp matches 64.. run scoreboard players set @s q_progress 64
execute if score #has q_tmp matches 64.. run function system:quest/check
execute if score #has q_tmp matches 64.. run tellraw @s {"text":"トウヒ原木64個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 64.. run tellraw @s {"text":"素材が足りません：トウヒ原木64個納品","color":"dark_green"}
function system:quest/npc
