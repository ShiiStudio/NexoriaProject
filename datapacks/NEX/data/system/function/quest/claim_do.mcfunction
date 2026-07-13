execute if score @s q_active matches 1 run function system:quest/reward/star2
execute if score @s q_active matches 2 run function system:quest/reward/star2
execute if score @s q_active matches 3 run function system:quest/reward/star2
execute if score @s q_active matches 4 run function system:quest/reward/star2
execute if score @s q_active matches 5 run function system:quest/reward/star3
execute if score @s q_active matches 6 run function system:quest/reward/star4
execute if score @s q_active matches 7 run function system:quest/reward/star4
execute if score @s q_active matches 8 run function system:quest/reward/star4
execute if score @s q_active matches 9 run function system:quest/reward/star3
execute if score @s q_active matches 10 run function system:quest/reward/star3
execute if score @s q_active matches 11 run function system:quest/reward/star3
execute if score @s q_active matches 12 run function system:quest/reward/star3
execute if score @s q_active matches 13 run function system:quest/reward/star3
execute if score @s q_active matches 14 run function system:quest/reward/star4
execute if score @s q_active matches 15 run function system:quest/reward/star3
execute if score @s q_active matches 16 run function system:quest/reward/star4
execute if score @s q_active matches 17 run function system:quest/reward/star5
execute if score @s q_active matches 18 run function system:quest/reward/star5
execute if score @s q_active matches 19 run function system:quest/reward/star1
execute if score @s q_active matches 20 run function system:quest/reward/star2
execute if score @s q_active matches 21 run function system:quest/reward/star2
execute if score @s q_active matches 22 run function system:quest/reward/star3
execute if score @s q_active matches 23 run function system:quest/reward/star2
execute if score @s q_active matches 24 run function system:quest/reward/star3
execute if score @s q_active matches 25 run function system:quest/reward/star3
execute if score @s q_active matches 26 run function system:quest/reward/star4
execute if score @s q_active matches 27 run function system:quest/reward/star1
execute if score @s q_active matches 28 run function system:quest/reward/star1
execute if score @s q_active matches 29 run function system:quest/reward/star2
execute if score @s q_active matches 30 run function system:quest/reward/star2
execute if score @s q_active matches 31 run function system:quest/reward/star3
execute if score @s q_active matches 32 run function system:quest/reward/star3
execute if score @s q_active matches 33 run function system:quest/reward/star3
execute if score @s q_active matches 34 run function system:quest/reward/star3
execute if score @s q_active matches 35 run function system:quest/reward/star3
execute if score @s q_active matches 36 run function system:quest/reward/star3
execute if score @s q_active matches 37 run function system:quest/reward/star4
execute if score @s q_active matches 38 run function system:quest/reward/star4
execute if score @s q_active matches 39 run function system:quest/reward/star4
execute if score @s q_active matches 40 run function system:quest/reward/star5
execute if score @s q_active matches 41 run function system:quest/reward/star2
execute if score @s q_active matches 42 run function system:quest/reward/star2
execute if score @s q_slot matches 1 run scoreboard players set @s q1_done 1
execute if score @s q_slot matches 2 run scoreboard players set @s q2_done 1
execute if score @s q_slot matches 3 run scoreboard players set @s q3_done 1
scoreboard players set @s q_active 0
scoreboard players set @s q_progress 0
scoreboard players set @s q_clear 0
scoreboard players set @s q_slot 0
function system:quest/npc
