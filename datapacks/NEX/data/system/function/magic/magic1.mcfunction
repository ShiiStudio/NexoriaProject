tag @a remove magic_caster
tag @s add magic_caster
tag @e[tag=fire_hit_done] remove fire_hit_done

scoreboard players remove @s Mana 60
function system:quest/add/magic
playsound minecraft:item.firecharge.use player @s ~ ~ ~ 1 1

# 直線10マス。同じ敵には1回だけ命中
execute positioned ^ ^ ^1 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute positioned ^ ^ ^1 as @e[tag=enemy,tag=!fire_hit_done,distance=..2] run function system:magic/fire_hit
execute positioned ^ ^ ^2 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute positioned ^ ^ ^2 as @e[tag=enemy,tag=!fire_hit_done,distance=..2] run function system:magic/fire_hit
execute positioned ^ ^ ^3 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute positioned ^ ^ ^3 as @e[tag=enemy,tag=!fire_hit_done,distance=..2] run function system:magic/fire_hit
execute positioned ^ ^ ^4 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute positioned ^ ^ ^4 as @e[tag=enemy,tag=!fire_hit_done,distance=..2] run function system:magic/fire_hit
execute positioned ^ ^ ^5 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute positioned ^ ^ ^5 as @e[tag=enemy,tag=!fire_hit_done,distance=..2] run function system:magic/fire_hit
execute positioned ^ ^ ^6 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute positioned ^ ^ ^6 as @e[tag=enemy,tag=!fire_hit_done,distance=..2] run function system:magic/fire_hit
execute positioned ^ ^ ^7 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute positioned ^ ^ ^7 as @e[tag=enemy,tag=!fire_hit_done,distance=..2] run function system:magic/fire_hit
execute positioned ^ ^ ^8 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute positioned ^ ^ ^8 as @e[tag=enemy,tag=!fire_hit_done,distance=..2] run function system:magic/fire_hit
execute positioned ^ ^ ^9 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute positioned ^ ^ ^9 as @e[tag=enemy,tag=!fire_hit_done,distance=..2] run function system:magic/fire_hit
execute positioned ^ ^ ^10 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 8
execute positioned ^ ^ ^10 as @e[tag=enemy,tag=!fire_hit_done,distance=..2] run function system:magic/fire_hit

tag @e[tag=fire_hit_done] remove fire_hit_done
tag @s remove magic_caster
