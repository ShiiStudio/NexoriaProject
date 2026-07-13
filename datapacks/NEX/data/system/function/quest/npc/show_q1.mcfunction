execute if score @s q1_done matches 1 run function system:quest/npc/q1_done
execute unless score @s q1_done matches 1 if score @s q_slot matches 1 if score @s q_clear matches 1 run function system:quest/npc/q1_clear
execute unless score @s q1_done matches 1 if score @s q_slot matches 1 unless score @s q_clear matches 1 run function system:quest/npc/q1_active
execute unless score @s q1_done matches 1 unless score @s q_slot matches 1 run function system:quest/npc/q1_open
