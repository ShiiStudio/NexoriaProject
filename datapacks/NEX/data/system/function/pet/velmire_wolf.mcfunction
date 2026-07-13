execute as @e[tag=nexo_pet,tag=!pet_velmire_wolf] if score @s pet_owner = #owner pet_id run kill @s

scoreboard players set #found pet_found 0
execute as @e[tag=nexo_pet,tag=pet_velmire_wolf] if score @s pet_owner = #owner pet_id run scoreboard players set #found pet_found 1

execute if score #found pet_found matches 0 run summon wolf ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["nexo_pet","pet_velmire_wolf","pet_new"]}
execute if score #found pet_found matches 0 run scoreboard players operation @e[tag=pet_new,limit=1,sort=nearest] pet_owner = @s pet_id
execute if score #found pet_found matches 0 run scoreboard players set @e[tag=pet_new,limit=1,sort=nearest] pet_timer 0
execute if score #found pet_found matches 0 run tag @e[tag=pet_new,limit=1,sort=nearest] remove pet_new

execute as @e[tag=nexo_pet,tag=pet_velmire_wolf] if score @s pet_owner = #owner pet_id run scoreboard players add @s pet_timer 2

# 1. 12マス以内に敵がいたら、その敵の場所にテレポートする
execute as @e[tag=nexo_pet,tag=pet_velmire_wolf,scores={pet_timer=40..}] at @s if score @s pet_owner = #owner pet_id at @s if entity @e[tag=enemy,distance=..12,limit=1,sort=nearest] run tp @s @e[tag=enemy,distance=..12,limit=1,sort=nearest]

# 2. 1.6マス以内の敵に2ダメージを与える
execute as @e[tag=nexo_pet,tag=pet_velmire_wolf,scores={pet_timer=40..}] at @s if score @s pet_owner = #owner pet_id run execute as @e[tag=enemy,distance=..1.6,limit=1,sort=nearest] run damage @s 2 minecraft:player_attack by @a[tag=pet_owner_current,limit=1]

# 3. タイマーをリセットする (これによって次の1tickの間、pet_timerは0になる)
execute as @e[tag=nexo_pet,tag=pet_velmire_wolf,scores={pet_timer=40..}] if score @s pet_owner = #owner pet_id run scoreboard players set @s pet_timer 0

# 【修正】普段は後ろについてくる（タイマーが0の瞬間＝攻撃したtickはテレポートをスキップする）
execute as @e[tag=nexo_pet,tag=pet_velmire_wolf,scores={pet_timer=10..}] if score @s pet_owner = #owner pet_id run tp @s ^-0.8 ^ ^-1.2
