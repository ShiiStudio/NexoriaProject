execute store result score @s q_progress run clear @s minecraft:heart_of_the_sea[minecraft:custom_data={nexoria_item:"guardian_crystal"}] 0
execute if score @s q_progress matches 8.. run scoreboard players set @s q_progress 8
