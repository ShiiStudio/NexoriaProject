# event: craft
execute if score @s q_active matches 41 unless score @s q_clear matches 1 run scoreboard players add @s q_progress 1
function system:quest/check
