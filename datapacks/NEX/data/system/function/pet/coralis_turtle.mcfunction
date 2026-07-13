execute as @e[tag=nexo_pet,tag=!pet_coralis_turtle] if score @s pet_owner = #owner pet_id run kill @s

scoreboard players set #found pet_found 0
execute as @e[tag=nexo_pet,tag=pet_coralis_turtle] if score @s pet_owner = #owner pet_id run scoreboard players set #found pet_found 1

execute if score #found pet_found matches 0 run summon turtle ~ ~ ~ {NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["nexo_pet","pet_coralis_turtle","pet_new"]}
execute if score #found pet_found matches 0 run scoreboard players operation @e[tag=pet_new,limit=1,sort=nearest] pet_owner = @s pet_id
execute if score #found pet_found matches 0 run scoreboard players set @e[tag=pet_new,limit=1,sort=nearest] pet_timer 0
execute if score #found pet_found matches 0 run tag @e[tag=pet_new,limit=1,sort=nearest] remove pet_new

# 持ってる間ずっと水中呼吸
effect give @s minecraft:water_breathing 2 0 true

execute as @e[tag=nexo_pet,tag=pet_coralis_turtle] if score @s pet_owner = #owner pet_id run scoreboard players add @s pet_timer 2

# 10秒ごとに2秒間耐性2
execute as @e[tag=nexo_pet,tag=pet_coralis_turtle,scores={pet_timer=200..}] if score @s pet_owner = #owner pet_id run effect give @a[tag=pet_owner_current,limit=1] minecraft:resistance 2 2 true
execute as @e[tag=nexo_pet,tag=pet_coralis_turtle,scores={pet_timer=200..}] if score @s pet_owner = #owner pet_id run scoreboard players set @s pet_timer 0

execute as @e[tag=nexo_pet,tag=pet_coralis_turtle] if score @s pet_owner = #owner pet_id run tp @s ^0.8 ^ ^-1.2
