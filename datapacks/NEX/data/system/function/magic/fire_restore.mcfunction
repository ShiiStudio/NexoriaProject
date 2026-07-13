# 燃焼終了後は通常の耐火状態へ戻す
effect give @s minecraft:fire_resistance infinite 0 true
data merge entity @s {Fire:0s}
scoreboard players reset @s calc
tag @s add enemy_fireproof
tag @s remove magic_burning
