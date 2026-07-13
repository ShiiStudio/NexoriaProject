# =========================
# RPG Level System Tick
# =========================

# =========================
# 初期化
# =========================
execute as @a[tag=!rpg_init] run scoreboard players set @s level 1
execute as @a[tag=!rpg_init] run scoreboard players set @s xp 0
execute as @a[tag=!rpg_init] run scoreboard players set @s maxhp 20
execute as @a[tag=!rpg_init] run scoreboard players set @s Mana 100
execute as @a[tag=!rpg_init] run scoreboard players set @s Maxmana 105
execute as @a[tag=!rpg_init] run scoreboard players set @s reqxp 110
execute as @a[tag=!rpg_init] run scoreboard players set @s nextxp 110
execute as @a[tag=!rpg_init] run tag @s add rpg_recalc
execute as @a[tag=!rpg_init] run tag @s add rpg_init

# =========================
# レベルアップ判定
# =========================
tag @a remove rpg_lvup

execute as @a if score @s xp >= @s reqxp if score @s level matches ..999 run tag @s add rpg_lvup

execute as @a[tag=rpg_lvup] run scoreboard players operation @s xp -= @s reqxp
execute as @a[tag=rpg_lvup] run scoreboard players add @s level 1
execute as @a[tag=rpg_lvup] run tag @s add rpg_recalc
execute as @a[tag=rpg_lvup] run title @s title {"text":"Level Up!","color":"gold","bold":true}
execute as @a[tag=rpg_lvup] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1

tag @a[tag=rpg_lvup] remove rpg_lvup

# =========================
# 再計算
# =========================

# reqxp = level*100 + level^2*10
execute as @a[tag=rpg_recalc] run scoreboard players operation @s temp1 = @s level
execute as @a[tag=rpg_recalc] run scoreboard players operation @s temp1 *= @s level
execute as @a[tag=rpg_recalc] run scoreboard players operation @s temp1 *= #10 calc

execute as @a[tag=rpg_recalc] run scoreboard players operation @s reqxp = @s level
execute as @a[tag=rpg_recalc] run scoreboard players operation @s reqxp *= #100 calc
execute as @a[tag=rpg_recalc] run scoreboard players operation @s reqxp += @s temp1

execute as @a[tag=rpg_recalc] if score @s level matches 1000.. run scoreboard players set @s reqxp 2147483647

# HP = 20 + floor(level/10)*2
execute as @a[tag=rpg_recalc] run scoreboard players operation @s maxhp = @s level
execute as @a[tag=rpg_recalc] run scoreboard players operation @s maxhp /= #10 calc
execute as @a[tag=rpg_recalc] run scoreboard players operation @s maxhp *= #2 calc
execute as @a[tag=rpg_recalc] run scoreboard players add @s maxhp 20

# Maxmana = 100 + level*5
execute as @a[tag=rpg_recalc] run scoreboard players operation @s Maxmana = @s level
execute as @a[tag=rpg_recalc] run scoreboard players operation @s Maxmana *= #5 calc
execute as @a[tag=rpg_recalc] run scoreboard players add @s Maxmana 100

# atk100 = 100 + level*25
# 実際の攻撃力 = atk100 * 0.01
execute as @a[tag=rpg_recalc] run scoreboard players operation @s atk100 = @s level
execute as @a[tag=rpg_recalc] run scoreboard players operation @s atk100 *= #25 calc
execute as @a[tag=rpg_recalc] run scoreboard players add @s atk100 100

# attribute反映
execute as @a[tag=rpg_recalc] at @s run function system:level/apply_attr_prepare

# Mana上限補正
execute as @a if score @s Mana > @s Maxmana run scoreboard players operation @s Mana = @s Maxmana

# 再計算終了
tag @a[tag=rpg_recalc] remove rpg_recalc

# =========================
# NextLvXP 表示用計算
# =========================

# nextxp = reqxp - xp
execute as @a run scoreboard players operation @s nextxp = @s reqxp
execute as @a run scoreboard players operation @s nextxp -= @s xp
execute as @a if score @s nextxp matches ..0 run scoreboard players set @s nextxp 0

# =========================
# Actionbar
# =========================
execute as @a run title @s actionbar [{"text":"[Lv.","color":"gold"},{"score":{"name":"*","objective":"level"},"color":"gold"},{"text":" NextLvXP ","color":"gold"},{"score":{"name":"*","objective":"nextxp"},"color":"gold"},{"text":"] ","color":"gold"},{"selector":"@s","color":"green"},{"text":" Mana ","color":"aqua"},{"score":{"name":"*","objective":"Mana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"*","objective":"Maxmana"},"color":"aqua"},{"text":" 所持金:","color":"gold"},{"score":{"name":"*","objective":"Gold"},"color":"gold"},{"text":"Gold","color":"gold"}]
