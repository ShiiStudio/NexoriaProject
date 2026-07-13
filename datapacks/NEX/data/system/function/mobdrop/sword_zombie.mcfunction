scoreboard players add @s xp 8
scoreboard players add @s Gold 3
give @s minecraft:white_wool[minecraft:custom_name='{"text":"古びた布","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"old_cloth"}] 1
execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:iron_nugget[minecraft:custom_name='{"text":"錆びた鉄片","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"rusted_iron"}] 1
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\nソードゾンビを倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+8xp\n+3Gold\n\n◆ ドロップ\n・古びた布","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・錆びた鉄片","color":"blue"}]
advancement revoke @s only system:sword_zombie
function system:quest/add/sword_zombie
function system:quest/add/none