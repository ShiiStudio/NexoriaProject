execute store result score #q3 q_daily run random value 1..42
execute if score #q3 q_daily = #q1 q_daily run function system:quest/random/q3
execute if score #q3 q_daily = #q2 q_daily run function system:quest/random/q3
