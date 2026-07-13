scoreboard players add @s xp 10
scoreboard players add @s Gold 4
give @s minecraft:bone[minecraft:custom_name='{"text":"骨片","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"bone_fragment"}] 1
execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:bone_block[minecraft:custom_name='{"text":"丈夫な骨","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"strong_bone"}] 1
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\nスケルトンを倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+10xp\n+4Gold\n\n◆ ドロップ\n・骨片","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・丈夫な骨","color":"blue"}]
advancement revoke @s only system:skeleton
function system:quest/add/skeleton
function system:quest/add/nature