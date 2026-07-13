scoreboard players add @s xp 5
scoreboard players add @s Gold 2
give @s minecraft:white_wool[minecraft:custom_name='{"text":"古びた布","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"old_cloth"}] 1
execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:bone[minecraft:custom_name='{"text":"腐食した骨","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"rotten_bone"}] 1
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\nゾンビを倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+5xp\n+2Gold\n\n◆ ドロップ\n・古びた布","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・腐食した骨","color":"blue"}]
advancement revoke @s only system:zombie
function system:quest/add/zombie
function system:quest/add/none