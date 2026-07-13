execute as @e[tag=nexo_pet,tag=!pet_ancient_allay] if score @s pet_owner = #owner pet_id run kill @s

scoreboard players set #found pet_found 0
execute as @e[tag=nexo_pet,tag=pet_ancient_allay] if score @s pet_owner = #owner pet_id run scoreboard players set #found pet_found 1

execute if score #found pet_found matches 0 run summon parrot ~ ~1 ~ {NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["nexo_pet","pet_ancient_allay","pet_new"]}
execute if score #found pet_found matches 0 run scoreboard players operation @e[tag=pet_new,limit=1,sort=nearest] pet_owner = @s pet_id
execute if score #found pet_found matches 0 run scoreboard players set @e[tag=pet_new,limit=1,sort=nearest] pet_timer 0
execute if score #found pet_found matches 0 run tag @e[tag=pet_new,limit=1,sort=nearest] remove pet_new

execute as @e[tag=nexo_pet,tag=pet_ancient_allay] if score @s pet_owner = #owner pet_id run scoreboard players add @s pet_timer 2

# 5秒ごとに回復。バニラだと完全に3ハート固定は難しいので、約3ハート回復の再生にする
execute as @e[tag=nexo_pet,tag=pet_ancient_allay,scores={pet_timer=100..}] if score @s pet_owner = #owner pet_id run effect give @a[tag=pet_owner_current,limit=1] minecraft:regeneration 4 2 true
execute as @e[tag=nexo_pet,tag=pet_ancient_allay,scores={pet_timer=100..}] if score @s pet_owner = #owner pet_id run scoreboard players set @s pet_timer 0

execute as @e[tag=nexo_pet,tag=pet_ancient_allay] if score @s pet_owner = #owner pet_id run tp @s ^0.8 ^1.2 ^-1.2
