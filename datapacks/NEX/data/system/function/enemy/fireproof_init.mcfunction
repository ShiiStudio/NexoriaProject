# 通常時は外部の炎や溶岩で燃えない
effect give @s minecraft:fire_resistance infinite 0 true
data merge entity @s {Fire:0s}
tag @s add enemy_fireproof
tag @s remove init_fireproof
