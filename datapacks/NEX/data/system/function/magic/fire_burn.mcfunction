# 火属性魔法の燃焼中だけ耐火を切る
effect clear @s minecraft:fire_resistance
# 基本4秒、火→地は1.25倍、火→氷は0.75倍
data merge entity @s {Fire:80s}
scoreboard players set @s calc 80
execute if entity @s[tag=nature] run data merge entity @s {Fire:100s}
execute if entity @s[tag=nature] run scoreboard players set @s calc 100
execute if entity @s[tag=ice] run data merge entity @s {Fire:60s}
execute if entity @s[tag=ice] run scoreboard players set @s calc 60
tag @s add magic_burning
