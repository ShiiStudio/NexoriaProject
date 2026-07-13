# 共通の間隔タイマー
scoreboard players add #perf2 calc 1
scoreboard players add #perf5 calc 1
scoreboard players add #perf10 calc 1
scoreboard players add #perf20 calc 1

# 2tick：ペット
execute if score #perf2 calc matches 2.. run function system:pet/tick
execute if score #perf2 calc matches 2.. run scoreboard players set #perf2 calc 0

# 5tick：採集表示
execute if score #perf5 calc matches 5.. run function system:collection/display
execute if score #perf5 calc matches 5.. run scoreboard players set #perf5 calc 0

# 10tick：低頻度プレイヤー処理
execute if score #perf10 calc matches 10.. run function system:performance/ten_tick
execute if score #perf10 calc matches 10.. run scoreboard players set #perf10 calc 0

# 20tick：低頻度保守処理
execute if score #perf20 calc matches 20.. run function system:performance/twenty_tick
execute if score #perf20 calc matches 20.. run scoreboard players set #perf20 calc 0
