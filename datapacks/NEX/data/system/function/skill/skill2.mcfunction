# 古鎧の隊長：12秒サイクル
execute as @e[tag=captain] run scoreboard players add @s timer2 1

# 2.0秒 予告：前方重斬り
execute as @e[tag=captain,scores={timer2=40}] at @s run particle minecraft:sweep_attack ^ ^1 ^2 0.8 0.4 1.5 0.02 20 force
execute as @e[tag=captain,scores={timer2=40}] at @s run playsound minecraft:item.trident.throw master @a[distance=..16] ~ ~ ~ 0.8 0.6

# 3.0秒 前方重斬り
execute as @e[tag=captain,scores={timer2=60}] at @s positioned ^ ^ ^2 run execute as @a[distance=..3] run damage @s 7 minecraft:mob_attack by @e[tag=captain,distance=..5,limit=1,sort=nearest]
execute as @e[tag=captain,scores={timer2=60}] at @s run particle minecraft:crit ^ ^1 ^2 0.8 0.5 1.5 0.05 35 force
execute as @e[tag=captain,scores={timer2=60}] at @s run playsound minecraft:entity.player.attack.strong master @a[distance=..16] ~ ~ ~ 1 0.7

# 5.0秒 予告：盾の衝撃
execute as @e[tag=captain,scores={timer2=100}] at @s run particle minecraft:ash ~ ~1 ~ 4 0.3 4 0.02 70 force
execute as @e[tag=captain,scores={timer2=100}] at @s run playsound minecraft:block.anvil.land master @a[distance=..16] ~ ~ ~ 0.6 1.5

# 6.0秒 盾の衝撃（近距離範囲）
execute as @e[tag=captain,scores={timer2=120}] at @s run execute as @a[distance=..5] run damage @s 5 minecraft:mob_attack by @e[tag=captain,distance=..6,limit=1,sort=nearest]
execute as @e[tag=captain,scores={timer2=120}] at @s run execute as @a[distance=..5] run effect give @s minecraft:slowness 2 1 true
execute as @e[tag=captain,scores={timer2=120}] at @s run particle minecraft:poof ~ ~0.3 ~ 3 0.2 3 0.06 90 force

# 8.0秒 予告：処刑の一撃（最も近い1人）
execute as @e[tag=captain,scores={timer2=160}] at @s run execute as @a[distance=..8,limit=1,sort=nearest] at @s run particle minecraft:dust{color:[0.8f,0.1f,0.1f],scale:1.2f} ~ ~0.2 ~ 0.7 0.1 0.7 0.02 45 force
execute as @e[tag=captain,scores={timer2=160}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..16] ~ ~ ~ 0.8 0.7

# 9.0秒 処刑の一撃
execute as @e[tag=captain,scores={timer2=180}] at @s run execute as @a[distance=..8,limit=1,sort=nearest] run damage @s 9 minecraft:mob_attack by @e[tag=captain,distance=..8,limit=1,sort=nearest]
execute as @e[tag=captain,scores={timer2=180}] at @s run execute as @a[distance=..8,limit=1,sort=nearest] at @s run particle minecraft:crit ~ ~1 ~ 0.8 1 0.8 0.08 50 force

execute as @e[tag=captain,scores={timer2=240..}] run scoreboard players set @s timer2 0
