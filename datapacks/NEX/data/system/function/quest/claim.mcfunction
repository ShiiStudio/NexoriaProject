execute if score @s q_active matches 0 run tellraw @s {"text":"受注中のデイリーがありません。","color":"dark_green"}
execute if score @s q_active matches 0 run function system:quest/npc
execute unless score @s q_active matches 0 unless score @s q_clear matches 1 run tellraw @s {"text":"まだ達成していません。","color":"dark_green"}
execute unless score @s q_active matches 0 unless score @s q_clear matches 1 run function system:quest/npc
execute unless score @s q_active matches 0 if score @s q_clear matches 1 run function system:quest/claim_do
