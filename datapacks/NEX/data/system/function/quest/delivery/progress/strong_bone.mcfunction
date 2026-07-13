execute store result score @s q_progress run clear @s minecraft:bone_block[minecraft:custom_data={nexoria_item:"strong_bone"}] 0
execute if score @s q_progress matches 16.. run scoreboard players set @s q_progress 16
