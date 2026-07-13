execute store result score @s q_progress run clear @s minecraft:white_wool[minecraft:custom_data={nexoria_item:"old_cloth"}] 0
execute if score @s q_progress matches 32.. run scoreboard players set @s q_progress 32
