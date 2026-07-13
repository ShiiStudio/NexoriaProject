scoreboard players set @s q_active 0
scoreboard players set @s q_progress 0
scoreboard players set @s q_clear 0
scoreboard players set @s q_slot 0
tellraw @s {"text":"クエストをキャンセルしました。","color":"dark_green"}
function system:quest/npc
