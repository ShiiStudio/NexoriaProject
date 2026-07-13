scoreboard objectives add q_daily dummy
scoreboard objectives add q_active dummy
scoreboard objectives add q_progress dummy
scoreboard objectives add q_clear dummy
scoreboard objectives add q_slot dummy
scoreboard objectives add q1_done dummy
scoreboard objectives add q2_done dummy
scoreboard objectives add q3_done dummy
scoreboard objectives add q_tmp dummy
scoreboard objectives add q_ui trigger
scoreboard players set #q1 q_daily 0
scoreboard players set #q2 q_daily 0
scoreboard players set #q3 q_daily 0
tellraw @s {"text":"Nexoria Quest setup 完了","color":"dark_green"}
