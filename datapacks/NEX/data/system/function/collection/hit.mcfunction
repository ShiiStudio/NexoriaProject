# attack情報を消す
data remove entity @s attack

# 木
execute if entity @s[tag=collection_oak] run function system:collection/hit_wood
execute if entity @s[tag=collection_spruce] run function system:collection/hit_wood

# 鉱石
execute if entity @s[tag=collection_coal] run function system:collection/hit_ore
execute if entity @s[tag=collection_iron] run function system:collection/hit_ore

# HP0以下なら破壊
execute if score @s collection_hp matches ..0 run function system:collection/break