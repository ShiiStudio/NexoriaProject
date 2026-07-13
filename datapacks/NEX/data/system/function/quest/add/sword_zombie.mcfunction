# event: sword_zombie
execute if score @s q_active matches 2 unless score @s q_clear matches 1 run scoreboard players add @s q_progress 1
execute if score @s q_active matches 9 unless score @s q_clear matches 1 run scoreboard players add @s q_progress 1
execute if score @s q_active matches 14 unless score @s q_clear matches 1 run scoreboard players add @s q_progress 1
function system:quest/check
