# プレイヤーID付与
execute as @a unless score @s pet_id matches 1.. run function system:pet/init_player

# プレイヤーごとにペット処理
execute as @a at @s run function system:pet/player_tick