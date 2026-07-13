execute store result score @s q_progress run clear @s minecraft:oak_log[minecraft:custom_data={nexoria_item:"oak_log"}] 0
execute if score @s q_progress matches 64.. run scoreboard players set @s q_progress 64
