# event: skeleton
execute if score @s q_active matches 3 unless score @s q_clear matches 1 run scoreboard players add @s q_progress 1
execute if score @s q_active matches 10 unless score @s q_clear matches 1 run scoreboard players add @s q_progress 1
execute if score @s q_active matches 14 unless score @s q_clear matches 1 run scoreboard players add @s q_progress 1
function system:quest/check
