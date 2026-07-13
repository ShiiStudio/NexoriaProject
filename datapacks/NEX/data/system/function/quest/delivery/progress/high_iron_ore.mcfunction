execute store result score @s q_progress run clear @s minecraft:iron_block[minecraft:custom_data={nexoria_item:"high_iron_ore"}] 0
execute if score @s q_progress matches 8.. run scoreboard players set @s q_progress 8
