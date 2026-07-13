# 採集ポイントの復活待ち
function system:collection/respawn_tick

# 手動召喚などで初期化されていない敵だけを補完
execute as @e[tag=enemy,tag=!enemy_fireproof,tag=!magic_burning] run function system:enemy/fireproof_init

# バニラのクラフト・経験値・BGMを抑制
recipe take @a *
xp set @a 0 levels
xp set @a 0 points
stopsound @a music
