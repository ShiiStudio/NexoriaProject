# --- 掃除 ---
tag @e[tag=check_target] remove check_target
tag @e[tag=ice_hit_done] remove ice_hit_done
tag @a remove magic_caster
tag @s add magic_caster

# --- マナ消費 ---
scoreboard players remove @s Mana 40
function system:quest/add/magic
playsound minecraft:block.glass.break player @s ~ ~ ~ 1 1.3
playsound minecraft:block.powder_snow.place player @s ~ ~ ~ 1 0.8

# --- 判定・演出 ---
execute at @s anchored eyes positioned ^-1 ^-1 ^1 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^-1 ^1 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^-1 ^2 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^-1 ^2 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^-1 ^3 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^-1 ^3 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^-1 ^4 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^-1 ^4 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^-1 ^5 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^-1 ^5 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^-1 ^6 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^-1 ^6 run tag @e[tag=enemy,distance=..1.5] add check_target

execute at @s anchored eyes positioned ^ ^-1 ^1 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^-1 ^1 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^-1 ^2 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^-1 ^2 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^-1 ^3 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^-1 ^3 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^-1 ^4 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^-1 ^4 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^-1 ^5 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^-1 ^5 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^-1 ^6 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^-1 ^6 run tag @e[tag=enemy,distance=..1.5] add check_target

execute at @s anchored eyes positioned ^1 ^-1 ^1 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^-1 ^1 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^-1 ^2 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^-1 ^2 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^-1 ^3 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^-1 ^3 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^-1 ^4 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^-1 ^4 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^-1 ^5 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^-1 ^5 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^-1 ^6 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^-1 ^6 run tag @e[tag=enemy,distance=..1.5] add check_target

execute at @s anchored eyes positioned ^-1 ^0 ^1 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^0 ^1 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^0 ^2 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^0 ^2 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^0 ^3 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^0 ^3 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^0 ^4 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^0 ^4 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^0 ^5 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^0 ^5 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^0 ^6 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^0 ^6 run tag @e[tag=enemy,distance=..1.5] add check_target

execute at @s anchored eyes positioned ^ ^0 ^1 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^0 ^1 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^0 ^2 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^0 ^2 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^0 ^3 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^0 ^3 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^0 ^4 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^0 ^4 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^0 ^5 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^0 ^5 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^0 ^6 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^0 ^6 run tag @e[tag=enemy,distance=..1.5] add check_target

execute at @s anchored eyes positioned ^1 ^0 ^1 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^0 ^1 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^0 ^2 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^0 ^2 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^0 ^3 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^0 ^3 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^0 ^4 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^0 ^4 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^0 ^5 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^0 ^5 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^0 ^6 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^0 ^6 run tag @e[tag=enemy,distance=..1.5] add check_target

execute at @s anchored eyes positioned ^-1 ^1 ^1 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^1 ^1 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^1 ^2 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^1 ^2 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^1 ^3 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^1 ^3 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^1 ^4 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^1 ^4 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^1 ^5 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^1 ^5 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^-1 ^1 ^6 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^-1 ^1 ^6 run tag @e[tag=enemy,distance=..1.5] add check_target

execute at @s anchored eyes positioned ^ ^1 ^1 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^1 ^1 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^1 ^2 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^1 ^2 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^1 ^3 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^1 ^3 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^1 ^4 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^1 ^4 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^1 ^5 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^1 ^5 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^ ^1 ^6 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^ ^1 ^6 run tag @e[tag=enemy,distance=..1.5] add check_target

execute at @s anchored eyes positioned ^1 ^1 ^1 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^1 ^1 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^1 ^2 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^1 ^2 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^1 ^3 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^1 ^3 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^1 ^4 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^1 ^4 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^1 ^5 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^1 ^5 run tag @e[tag=enemy,distance=..1.5] add check_target
execute at @s anchored eyes positioned ^1 ^1 ^6 run particle minecraft:snowflake ~ ~ ~ 0 0 0 0 1
execute at @s anchored eyes positioned ^1 ^1 ^6 run tag @e[tag=enemy,distance=..1.5] add check_target
# --- ダメージ・鈍足・弱体化 ---
execute as @e[tag=check_target,tag=fire] run damage @s 3.75 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=check_target,tag=fire] run effect give @s minecraft:slowness 75t 2 true
execute as @e[tag=check_target,tag=fire] run effect give @s minecraft:weakness 75t 0 true

execute as @e[tag=check_target,tag=thunder] run damage @s 2.25 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=check_target,tag=thunder] run effect give @s minecraft:slowness 45t 2 true
execute as @e[tag=check_target,tag=thunder] run effect give @s minecraft:weakness 45t 0 true

execute as @e[tag=check_target,tag=nature] run damage @s 3 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=check_target,tag=nature] run effect give @s minecraft:slowness 3 2 true
execute as @e[tag=check_target,tag=nature] run effect give @s minecraft:weakness 3 0 true

execute as @e[tag=check_target,tag=ice] run damage @s 3 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=check_target,tag=ice] run effect give @s minecraft:slowness 3 2 true
execute as @e[tag=check_target,tag=ice] run effect give @s minecraft:weakness 3 0 true

execute as @e[tag=check_target,tag=zokuseinasi] run damage @s 3 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=check_target,tag=zokuseinasi] run effect give @s minecraft:slowness 3 2 true
execute as @e[tag=check_target,tag=zokuseinasi] run effect give @s minecraft:weakness 3 0 true

# --- 掃除 ---
tag @e[tag=check_target] remove check_target
tag @s remove magic_caster
