execute store result score @s q_progress run clear @s minecraft:echo_shard[minecraft:custom_data={nexoria_item:"captain_emblem"}] 0
execute if score @s q_progress matches 8.. run scoreboard players set @s q_progress 8
