scoreboard players enable @a q_ui
execute as @e[type=minecraft:interaction,tag=quest_npc] on target run function system:quest/npc
execute as @e[type=minecraft:interaction,tag=quest_npc] run data remove entity @s interaction
execute as @a[scores={q_ui=1}] run function system:quest/accept1
execute as @a[scores={q_ui=2}] run function system:quest/accept2
execute as @a[scores={q_ui=3}] run function system:quest/accept3
execute as @a[scores={q_ui=4}] run function system:quest/delivery/check
execute as @a[scores={q_ui=5}] run function system:quest/claim
execute as @a[scores={q_ui=6}] run function system:quest/cancel
execute as @a[scores={q_ui=7}] run function system:quest/npc
scoreboard players set @a[scores={q_ui=1..}] q_ui 0
