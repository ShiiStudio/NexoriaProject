# event: spider_dungeon
execute if score @s q_active matches 15 unless score @s q_clear matches 1 run scoreboard players add @s q_progress 1
execute if score @s q_active matches 18 unless score @s q_clear matches 1 run scoreboard players add @s q_progress 1
function system:quest/check
