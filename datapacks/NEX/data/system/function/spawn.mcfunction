# =========================
# 通常敵スポーン
# =========================

# ゾンビ HP20
execute as @e[tag=enemy_zombie,scores={spawncount=1..}] run scoreboard players remove @s spawncount 1
execute as @e[tag=enemy_zombie,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon zombie ~ ~ ~ {Tags:["enemy","zombie","zokuseinasi","init_zombie"],CustomName:'[{"text":"[無] ","color":"gray"},{"text":"ゾンビ","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=enemy_zombie,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 1200
execute as @e[tag=init_zombie] run function system:enemy/fireproof_init
execute as @e[tag=init_zombie] run attribute @s minecraft:generic.max_health base set 20
execute as @e[tag=init_zombie] run attribute @s minecraft:generic.attack_damage base set 4
execute as @e[tag=init_zombie] run attribute @s minecraft:generic.movement_speed base set 0.20
execute as @e[tag=init_zombie] run data merge entity @s {Health:20.0f}
execute as @e[tag=init_zombie] run tag @s remove init_zombie

# ソードゾンビ HP25
execute as @e[tag=enemy_sword_zombie,scores={spawncount=1..}] run scoreboard players remove @s spawncount 1
execute as @e[tag=enemy_sword_zombie,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon zombie ~ ~ ~ {Tags:["enemy","sword_zombie","zokuseinasi","init_sword_zombie"],CustomName:'[{"text":"[無] ","color":"gray"},{"text":"ソードゾンビ","color":"white"}]',CustomNameVisible:1b,HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b},{}]}
execute as @e[tag=enemy_sword_zombie,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 1200
execute as @e[tag=init_sword_zombie] run function system:enemy/fireproof_init
execute as @e[tag=init_sword_zombie] run attribute @s minecraft:generic.max_health base set 25
execute as @e[tag=init_sword_zombie] run attribute @s minecraft:generic.attack_damage base set 7
execute as @e[tag=init_sword_zombie] run attribute @s minecraft:generic.movement_speed base set 0.23
execute as @e[tag=init_sword_zombie] run data merge entity @s {Health:25.0f}
execute as @e[tag=init_sword_zombie] run tag @s remove init_sword_zombie

# スケルトン HP15
execute as @e[tag=enemy_skeleton,scores={spawncount=1..}] run scoreboard players remove @s spawncount 1
execute as @e[tag=enemy_skeleton,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon skeleton ~ ~ ~ {Tags:["enemy","skeleton","nature","init_skeleton"],CustomName:'[{"text":"[地] ","color":"green"},{"text":"スケルトン","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=enemy_skeleton,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 1200
execute as @e[tag=init_skeleton] run function system:enemy/fireproof_init
execute as @e[tag=init_skeleton] run attribute @s minecraft:generic.max_health base set 15
execute as @e[tag=init_skeleton] run attribute @s minecraft:generic.movement_speed base set 0.25
execute as @e[tag=init_skeleton] run data merge entity @s {Health:15.0f}
execute as @e[tag=init_skeleton] run tag @s remove init_skeleton

# クモ HP10
execute as @e[tag=enemy_spider,scores={spawncount=1..}] run scoreboard players remove @s spawncount 1
execute as @e[tag=enemy_spider,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon spider ~ ~ ~ {Tags:["enemy","spider","nature","init_spider"],CustomName:'[{"text":"[地] ","color":"green"},{"text":"クモ","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=enemy_spider,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 1200
execute as @e[tag=init_spider] run function system:enemy/fireproof_init
execute as @e[tag=init_spider] run attribute @s minecraft:generic.max_health base set 10
execute as @e[tag=init_spider] run attribute @s minecraft:generic.attack_damage base set 5
execute as @e[tag=init_spider] run attribute @s minecraft:generic.movement_speed base set 0.32
execute as @e[tag=init_spider] run data merge entity @s {Health:10.0f}
execute as @e[tag=init_spider] run tag @s remove init_spider

# ドラウンド HP15
execute as @e[tag=enemy_drowned,scores={spawncount=1..}] run scoreboard players remove @s spawncount 1
execute as @e[tag=enemy_drowned,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon drowned ~ ~ ~ {Tags:["enemy","drowned","ice","init_drowned"],CustomName:'[{"text":"[氷] ","color":"aqua"},{"text":"ドラウンド","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=enemy_drowned,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 1200
execute as @e[tag=init_drowned] run function system:enemy/fireproof_init
execute as @e[tag=init_drowned] run attribute @s minecraft:generic.max_health base set 15
execute as @e[tag=init_drowned] run attribute @s minecraft:generic.attack_damage base set 6
execute as @e[tag=init_drowned] run attribute @s minecraft:generic.movement_speed base set 0.25
execute as @e[tag=init_drowned] run data merge entity @s {Health:15.0f}
execute as @e[tag=init_drowned] run tag @s remove init_drowned

# ガーディアン HP20
execute as @e[tag=enemy_guardian,scores={spawncount=1..}] run scoreboard players remove @s spawncount 1
execute as @e[tag=enemy_guardian,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon guardian ~ ~ ~ {Tags:["enemy","guardian","ice","init_guardian"],CustomName:'[{"text":"[氷] ","color":"aqua"},{"text":"ガーディアン","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=enemy_guardian,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 1200
execute as @e[tag=init_guardian] run function system:enemy/fireproof_init
execute as @e[tag=init_guardian] run attribute @s minecraft:generic.max_health base set 20
execute as @e[tag=init_guardian] run data merge entity @s {Health:20.0f}
execute as @e[tag=init_guardian] run tag @s remove init_guardian

# =========================
# ボススポーン
# =========================

# 古鎧の隊長 HP75
execute as @e[tag=enemy_captain,scores={spawncount=1..}] run scoreboard players remove @s spawncount 1
execute as @e[tag=enemy_captain,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon zombie ~ ~ ~ {Tags:["enemy","boss","captain","zokuseinasi","init_captain"],CustomName:'[{"text":"[無] ","color":"gray"},{"text":"古鎧の隊長","color":"white"}]',CustomNameVisible:1b,HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:leather_helmet",Count:1b}]}
execute as @e[tag=enemy_captain,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 3600
execute as @e[tag=init_captain] run function system:enemy/fireproof_init
execute as @e[tag=init_captain] run attribute @s minecraft:generic.max_health base set 75
execute as @e[tag=init_captain] run attribute @s minecraft:generic.attack_damage base set 12
execute as @e[tag=init_captain] run attribute @s minecraft:generic.movement_speed base set 0.22
execute as @e[tag=init_captain] run data merge entity @s {Health:75.0f}
execute as @e[tag=init_captain] run tag @s remove init_captain

# 深海の守護者 HP100
execute as @e[tag=enemy_elder_guardian,scores={spawncount=1..}] run scoreboard players remove @s spawncount 1
execute as @e[tag=enemy_elder_guardian,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon elder_guardian ~ ~ ~ {Tags:["enemy","boss","elder_guardian","ice","init_elder_guardian"],CustomName:'[{"text":"[氷] ","color":"aqua"},{"text":"深海の守護者","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=enemy_elder_guardian,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 3600
execute as @e[tag=init_elder_guardian] run function system:enemy/fireproof_init
execute as @e[tag=init_elder_guardian] run attribute @s minecraft:generic.max_health base set 100
execute as @e[tag=init_elder_guardian] run data merge entity @s {Health:100.0f}
execute as @e[tag=init_elder_guardian] run tag @s remove init_elder_guardian

# 毒母蜘蛛 アラクネ HP250
execute as @e[tag=enemy_arachne,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon spider ~ ~ ~ {Tags:["enemy","boss","arachne","nature","init_arachne"],CustomName:'[{"text":"[地] ","color":"green"},{"text":"毒母蜘蛛 アラクネ","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=enemy_arachne,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 1
execute as @e[tag=init_arachne] run function system:enemy/fireproof_init
execute as @e[tag=init_arachne] run attribute @s minecraft:generic.max_health base set 250
execute as @e[tag=init_arachne] run attribute @s minecraft:generic.attack_damage base set 10
execute as @e[tag=init_arachne] run attribute @s minecraft:generic.movement_speed base set 0.34
execute as @e[tag=init_arachne] run data merge entity @s {Health:250.0f}
execute as @e[tag=init_arachne] run tag @s remove init_arachne

# 亡者の騎士 HP500
execute as @e[tag=enemy_dead_knight,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon zombie ~ ~ ~ {Tags:["enemy","boss","dead_knight","zokuseinasi","init_dead_knight"],CustomName:'[{"text":"[無] ","color":"gray"},{"text":"亡者の騎士","color":"white"}]',CustomNameVisible:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}]}
execute as @e[tag=enemy_dead_knight,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 1
execute as @e[tag=init_dead_knight] run function system:enemy/fireproof_init
execute as @e[tag=init_dead_knight] run attribute @s minecraft:generic.max_health base set 500
execute as @e[tag=init_dead_knight] run attribute @s minecraft:generic.attack_damage base set 16
execute as @e[tag=init_dead_knight] run attribute @s minecraft:generic.movement_speed base set 0.27
execute as @e[tag=init_dead_knight] run data merge entity @s {Health:500.0f}
execute as @e[tag=init_dead_knight] run tag @s remove init_dead_knight

# 古代の守護者 HP1000
execute as @e[tag=enemy_ancient_guardian,scores={spawncount=0}] at @s if entity @a[distance=..5] run summon ravager ~ ~ ~ {Tags:["enemy","boss","ancient_guardian","ancient_p1","zokuseinasi","ancient_init"],CustomName:'[{"text":"[無] ","color":"gray"},{"text":"古代の守護者","color":"white"}]',CustomNameVisible:1b}
execute as @e[tag=enemy_ancient_guardian,scores={spawncount=0}] at @s if entity @a[distance=..5] run scoreboard players set @s spawncount 1
execute as @e[tag=ancient_init] run function system:enemy/fireproof_init
execute as @e[tag=ancient_init] run attribute @s minecraft:generic.max_health base set 1000
execute as @e[tag=ancient_init] run attribute @s minecraft:generic.attack_damage base set 22
execute as @e[tag=ancient_init] run attribute @s minecraft:generic.movement_speed base set 0.23
execute as @e[tag=ancient_init] run data merge entity @s {Health:1000.0f}
execute as @e[tag=ancient_init] run scoreboard players set @s phase 0
execute as @e[tag=ancient_init] run scoreboard players set @s timer6 0
execute as @e[tag=ancient_init] run scoreboard players set @s hp 1000
execute as @e[tag=ancient_init] run tag @s remove ancient_init
