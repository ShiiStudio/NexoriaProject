execute if score @s q_active matches 0 run tellraw @s {"text":"キャンセルできるクエストがありません。","color":"dark_green"}
execute if score @s q_active matches 0 run function system:quest/npc
execute unless score @s q_active matches 0 if score @s q_clear matches 1 run tellraw @s {"text":"達成済みクエストはキャンセルできません。報酬を受け取ってください。","color":"dark_green"}
execute unless score @s q_active matches 0 if score @s q_clear matches 1 run function system:quest/npc
execute unless score @s q_active matches 0 unless score @s q_clear matches 1 run function system:quest/cancel_do
