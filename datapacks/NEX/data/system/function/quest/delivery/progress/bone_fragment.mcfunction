execute store result score @s q_progress run clear @s minecraft:bone[minecraft:custom_data={nexoria_item:"bone_fragment"}] 0
execute if score @s q_progress matches 32.. run scoreboard players set @s q_progress 32
