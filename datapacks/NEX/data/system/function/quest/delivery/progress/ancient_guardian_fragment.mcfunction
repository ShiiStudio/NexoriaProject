execute store result score @s q_progress run clear @s minecraft:amethyst_shard[minecraft:custom_data={nexoria_item:"ancient_guardian_fragment"}] 0
execute if score @s q_progress matches 5.. run scoreboard players set @s q_progress 5
