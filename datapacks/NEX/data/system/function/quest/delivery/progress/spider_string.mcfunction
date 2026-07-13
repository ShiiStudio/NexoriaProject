execute store result score @s q_progress run clear @s minecraft:string[minecraft:custom_data={nexoria_item:"spider_string"}] 0
execute if score @s q_progress matches 32.. run scoreboard players set @s q_progress 32
