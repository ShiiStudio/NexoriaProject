execute if score @s q3_done matches 1 run function system:quest/npc/q3_done
execute unless score @s q3_done matches 1 if score @s q_slot matches 3 if score @s q_clear matches 1 run function system:quest/npc/q3_clear
execute unless score @s q3_done matches 1 if score @s q_slot matches 3 unless score @s q_clear matches 1 run function system:quest/npc/q3_active
execute unless score @s q3_done matches 1 unless score @s q_slot matches 3 run function system:quest/npc/q3_open
