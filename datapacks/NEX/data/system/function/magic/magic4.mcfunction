scoreboard players remove @s Mana 50
function system:quest/add/magic
execute as @a[distance=..4] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1
execute as @a[distance=..4] at @s run effect give @s instant_health 1 1 true
particle composter ~ ~ ~ 4 4 4 1 100