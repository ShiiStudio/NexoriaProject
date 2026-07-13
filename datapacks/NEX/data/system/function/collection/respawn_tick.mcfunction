# 復活待ちは1秒ごとに更新するため、20tick分まとめて減算
execute as @e[type=minecraft:interaction,tag=collection,tag=collection_inactive,scores={collection_respawn=20..}] run scoreboard players remove @s collection_respawn 20
execute as @e[type=minecraft:interaction,tag=collection,tag=collection_inactive,scores={collection_respawn=1..19}] run scoreboard players set @s collection_respawn 0

# タイマーが終わった採集ポイントを復活
execute as @e[type=minecraft:interaction,tag=collection,tag=collection_inactive,scores={collection_respawn=0}] at @s run function system:collection/respawn
