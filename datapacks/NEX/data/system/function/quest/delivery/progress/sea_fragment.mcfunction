execute store result score @s q_progress run clear @s minecraft:prismarine_shard[minecraft:custom_data={nexoria_item:"sea_fragment"}] 0
execute if score @s q_progress matches 16.. run scoreboard players set @s q_progress 16
