execute if score @s q2_done matches 1 run function system:quest/npc/q2_done
execute unless score @s q2_done matches 1 if score @s q_slot matches 2 if score @s q_clear matches 1 run function system:quest/npc/q2_clear
execute unless score @s q2_done matches 1 if score @s q_slot matches 2 unless score @s q_clear matches 1 run function system:quest/npc/q2_active
execute unless score @s q2_done matches 1 unless score @s q_slot matches 2 run function system:quest/npc/q2_open
