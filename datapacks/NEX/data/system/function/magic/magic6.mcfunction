tag @a remove magic_caster
tag @s add magic_caster
tag @e[tag=ice2_target] remove ice2_target

scoreboard players remove @s Mana 100
function system:quest/add/magic

# 着弾地点から最も近い敵1体を先に確定
execute positioned ^ ^1 ^5 run tag @e[tag=enemy,distance=..2,limit=1,sort=nearest] add ice2_target

execute as @e[tag=ice2_target,tag=zokuseinasi] run damage @s 28 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=ice2_target,tag=ice] run damage @s 28 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=ice2_target,tag=nature] run damage @s 28 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=ice2_target,tag=fire] run damage @s 35 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=ice2_target,tag=thunder] run damage @s 21 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]

execute as @e[tag=ice2_target,tag=zokuseinasi] run effect give @s minecraft:slowness 5 2 true
execute as @e[tag=ice2_target,tag=ice] run effect give @s minecraft:slowness 5 2 true
execute as @e[tag=ice2_target,tag=nature] run effect give @s minecraft:slowness 5 2 true
execute as @e[tag=ice2_target,tag=fire] run effect give @s minecraft:slowness 125t 2 true
execute as @e[tag=ice2_target,tag=thunder] run effect give @s minecraft:slowness 75t 2 true

execute positioned ^ ^1 ^5 run particle minecraft:snowflake ~ ~ ~ 0.8 0.8 0.8 0.03 80 force
execute positioned ^ ^1 ^5 run playsound minecraft:block.glass.break master @a[distance=..20] ~ ~ ~ 1 0.8

tag @e[tag=ice2_target] remove ice2_target
tag @s remove magic_caster
