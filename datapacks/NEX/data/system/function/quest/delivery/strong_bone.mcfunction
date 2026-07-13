execute store result score #has q_tmp run clear @s minecraft:bone_block[minecraft:custom_data={nexoria_item:"strong_bone"}] 0
execute if score #has q_tmp matches 16.. run clear @s minecraft:bone_block[minecraft:custom_data={nexoria_item:"strong_bone"}] 16
execute if score #has q_tmp matches 16.. run scoreboard players set @s q_progress 16
execute if score #has q_tmp matches 16.. run function system:quest/check
execute if score #has q_tmp matches 16.. run tellraw @s {"text":"丈夫な骨16個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 16.. run tellraw @s {"text":"素材が足りません：丈夫な骨16個納品","color":"dark_green"}
function system:quest/npc
