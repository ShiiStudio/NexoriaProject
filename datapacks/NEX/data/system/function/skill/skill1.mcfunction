# クモ timer1加算
execute as @e[tag=spider] run scoreboard players add @s timer1 1

# 4秒ごとにジャンプ
execute as @e[tag=spider,scores={timer1=80..}] at @s if entity @a[distance=..6] run data merge entity @s {Motion:[0.0,0.45,0.0]}

# 近くにいたら鈍足
execute as @e[tag=spider,scores={timer1=80..}] at @s if entity @a[distance=..2.5] run effect give @a[distance=..2.5,limit=1,sort=nearest] minecraft:slowness 2 1 true

# 演出
execute as @e[tag=spider,scores={timer1=80..}] at @s run playsound minecraft:entity.spider.step master @a[distance=..12] ~ ~ ~ 1 1.3
execute as @e[tag=spider,scores={timer1=80..}] at @s run particle minecraft:poof ~ ~1 ~ 0.4 0.3 0.4 0.02 12 force

# リセット
execute as @e[tag=spider,scores={timer1=80..}] run scoreboard players set @s timer1 0