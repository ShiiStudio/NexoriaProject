scoreboard players add @s xp 50
scoreboard players add @s Gold 25

give @s minecraft:echo_shard[minecraft:custom_name='{"text":"隊長の紋章","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"captain_emblem"}] 1

execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:iron_nugget[minecraft:custom_name='{"text":"古びた鉄片","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"old_iron"}] 1
execute if score #drop rpg_tmp matches 96..100 run give @s minecraft:trial_key[minecraft:custom_name='{"text":"隊長の勲章","color":"gold","italic":false}',minecraft:custom_data={nexoria_item:"captain_medal"}] 1

tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\n古鎧の隊長を倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+50xp\n+25Gold\n\n◆ ドロップ\n・隊長の紋章","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・古びた鉄片","color":"blue"}]
execute if score #drop rpg_tmp matches 96..100 run tellraw @s [{"text":"★ 隊長の勲章","color":"gold"}]
advancement revoke @s only system:captain
function system:quest/add/captain
function system:quest/add/none