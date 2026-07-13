tag @a remove magic_caster
tag @s add magic_caster
scoreboard players remove @s Mana 90
function system:quest/add/magic

execute as @e[tag=enemy,tag=zokuseinasi,distance=..6] run damage @s 12 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=enemy,tag=fire,distance=..6] run damage @s 12 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=enemy,tag=thunder,distance=..6] run damage @s 12 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=enemy,tag=ice,distance=..6] run damage @s 15 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute as @e[tag=enemy,tag=nature,distance=..6] run damage @s 9 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]

# 基準吸収量4HP。有利な氷は即時4HP+再生で1HP、不利な自然は再生で3HP
execute as @e[tag=enemy,tag=zokuseinasi,distance=..6] run effect give @a[tag=magic_caster,limit=1,sort=nearest] minecraft:instant_health 1 0 true
execute as @e[tag=enemy,tag=fire,distance=..6] run effect give @a[tag=magic_caster,limit=1,sort=nearest] minecraft:instant_health 1 0 true
execute as @e[tag=enemy,tag=thunder,distance=..6] run effect give @a[tag=magic_caster,limit=1,sort=nearest] minecraft:instant_health 1 0 true
execute as @e[tag=enemy,tag=ice,distance=..6] run effect give @a[tag=magic_caster,limit=1,sort=nearest] minecraft:instant_health 1 0 true
execute as @e[tag=enemy,tag=ice,distance=..6] run effect give @a[tag=magic_caster,limit=1,sort=nearest] minecraft:regeneration 60t 0 true
execute as @e[tag=enemy,tag=nature,distance=..6] run effect give @a[tag=magic_caster,limit=1,sort=nearest] minecraft:regeneration 160t 0 true

particle minecraft:electric_spark ~ ~1 ~ 3 1 3 0.08 120 force
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..24] ~ ~ ~ 0.8 1.5
tag @s remove magic_caster
