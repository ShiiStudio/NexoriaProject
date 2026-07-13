data remove storage rpg:stats attr

execute store result storage rpg:stats attr.hp double 1 run scoreboard players get @s maxhp
execute store result storage rpg:stats attr.atk double 0.01 run scoreboard players get @s atk100

data get storage rpg:stats attr

function system:level/apply_attr with storage rpg:stats attr