scoreboard players remove @s Mana 80
function system:quest/add/magic
effect give @s minecraft:strength 5 3 true
effect give @s minecraft:speed 5 1 true
particle minecraft:flame ~ ~1 ~ 0.6 0.8 0.6 0.05 60 force
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 1.2