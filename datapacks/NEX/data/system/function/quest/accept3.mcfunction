scoreboard players add @s q_active 0
scoreboard players add @s q3_done 0
execute unless score @s q_active matches 0 run tellraw @s {"text":"同時に複数個受注できません。","color":"dark_green"}
execute unless score @s q_active matches 0 run function system:quest/npc
execute if score @s q3_done matches 1 run tellraw @s {"text":"このデイリーは完了済みです。","color":"dark_green"}
execute if score @s q3_done matches 1 run function system:quest/npc
execute if score @s q_active matches 0 unless score @s q3_done matches 1 run function system:quest/accept/internal3
