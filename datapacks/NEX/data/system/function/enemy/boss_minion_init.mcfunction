# ボス召喚雑魚専用。通常敵の報酬タグは付けない
execute if entity @s[tag=minion_spider] run attribute @s minecraft:generic.max_health base set 10
execute if entity @s[tag=minion_spider] run attribute @s minecraft:generic.attack_damage base set 5
execute if entity @s[tag=minion_spider] run attribute @s minecraft:generic.movement_speed base set 0.32
execute if entity @s[tag=minion_spider] run data merge entity @s {Health:10.0f}

execute if entity @s[tag=minion_sword] run attribute @s minecraft:generic.max_health base set 25
execute if entity @s[tag=minion_sword] run attribute @s minecraft:generic.attack_damage base set 7
execute if entity @s[tag=minion_sword] run attribute @s minecraft:generic.movement_speed base set 0.23
execute if entity @s[tag=minion_sword] run data merge entity @s {Health:25.0f}

execute if entity @s[tag=minion_skeleton] run attribute @s minecraft:generic.max_health base set 15
execute if entity @s[tag=minion_skeleton] run attribute @s minecraft:generic.movement_speed base set 0.25
execute if entity @s[tag=minion_skeleton] run data merge entity @s {Health:15.0f}

tag @s remove init_boss_minion
