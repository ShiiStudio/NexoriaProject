tag @a remove magic_caster
tag @s add magic_caster
scoreboard players remove @s Mana 35
function system:quest/add/magic

playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 0.7 1.6
playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 0.8 1.2

# 詠唱者周囲の全体エフェクト
particle minecraft:electric_spark ~ ~1 ~ 3 1 3 0.2 80
particle minecraft:end_rod ~ ~1 ~ 3 0.5 3 0.05 40

# ヒットした敵の座標で火花を散らすエフェクト（属性に関わらず共通）
execute at @s as @e[tag=enemy,distance=..7] run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.6 0.3 0.1 20

# ==========================================
# 属性別の相性ダメージ判定（thunder を追加）
# ==========================================
execute at @s as @e[tag=enemy,tag=ice,distance=..7] run damage @s 6.25 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute at @s as @e[tag=enemy,tag=nature,distance=..7] run damage @s 3.75 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute at @s as @e[tag=enemy,tag=fire,distance=..7] run damage @s 5 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute at @s as @e[tag=enemy,tag=thunder,distance=..7] run damage @s 5 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
execute at @s as @e[tag=enemy,tag=zokuseinasi,distance=..7] run damage @s 5 minecraft:player_attack by @a[tag=magic_caster,limit=1,sort=nearest]
tag @s remove magic_caster
