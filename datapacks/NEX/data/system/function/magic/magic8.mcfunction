tag @a remove magic_caster
tag @s add magic_caster
scoreboard players remove @s Mana 70
function system:quest/add/magic

execute positioned ^ ^ ^4 as @e[tag=enemy,tag=zokuseinasi,distance=..4] run damage @s 3 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute positioned ^ ^ ^4 as @e[tag=enemy,tag=ice,distance=..4] run damage @s 3 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute positioned ^ ^ ^4 as @e[tag=enemy,tag=nature,distance=..4] run damage @s 3 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute positioned ^ ^ ^4 as @e[tag=enemy,tag=thunder,distance=..4] run damage @s 3.75 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute positioned ^ ^ ^4 as @e[tag=enemy,tag=fire,distance=..4] run damage @s 2.25 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]

execute positioned ^ ^ ^4 as @e[tag=enemy,tag=zokuseinasi,distance=..4] run effect give @s minecraft:poison 5 1 true
execute positioned ^ ^ ^4 as @e[tag=enemy,tag=ice,distance=..4] run effect give @s minecraft:poison 5 1 true
execute positioned ^ ^ ^4 as @e[tag=enemy,tag=nature,distance=..4] run effect give @s minecraft:poison 5 1 true
execute positioned ^ ^ ^4 as @e[tag=enemy,tag=thunder,distance=..4] run effect give @s minecraft:poison 125t 1 true
execute positioned ^ ^ ^4 as @e[tag=enemy,tag=fire,distance=..4] run effect give @s minecraft:poison 75t 1 true
tag @s remove magic_caster

particle minecraft:spore_blossom_air ^ ^1 ^4 2 1 2 0.05 100 force
playsound minecraft:block.grass.break master @a[distance=..16] ~ ~ ~ 1 0.8
