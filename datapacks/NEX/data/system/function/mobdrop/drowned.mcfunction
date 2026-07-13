scoreboard players add @s xp 10
scoreboard players add @s Gold 4
give @s minecraft:light_blue_wool[minecraft:custom_name='{"text":"濡れた布","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"wet_cloth"}] 1
execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:prismarine_shard[minecraft:custom_name='{"text":"海晶片","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"sea_fragment"}] 1
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\nドラウンドを倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+10xp\n+4Gold\n\n◆ ドロップ\n・濡れた布","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・海晶片","color":"blue"}]
advancement revoke @s only system:drowned
function system:quest/add/drowned
function system:quest/add/ice