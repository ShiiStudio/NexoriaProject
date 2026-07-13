function system:magic/fire_burn
execute if entity @s[tag=nature] run damage @s 18.75 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute if entity @s[tag=ice] run damage @s 11.25 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute if entity @s[tag=thunder] run damage @s 15 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute if entity @s[tag=fire] run damage @s 15 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute if entity @s[tag=zokuseinasi] run damage @s 15 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
tag @s add fire_hit_done
