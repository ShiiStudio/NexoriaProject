# 殴られた採集ポイントを処理
execute as @e[type=minecraft:interaction,tag=collection,tag=collection_active] at @s if data entity @s attack run function system:collection/hit
