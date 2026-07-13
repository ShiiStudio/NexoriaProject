execute store result score @s q_progress run clear @s minecraft:coal[minecraft:custom_data={nexoria_item:"low_coal"}] 0
execute if score @s q_progress matches 32.. run scoreboard players set @s q_progress 32
