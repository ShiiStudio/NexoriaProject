scoreboard players add @s xp 20
scoreboard players add @s Gold 8
give @s minecraft:prismarine_crystals[minecraft:custom_name='{"text":"海晶","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"sea_crystal"}] 1
execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:prismarine_shard[minecraft:custom_name='{"text":"深海の棘","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"deep_spike"}] 1
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\nガーディアンを倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+20xp\n+8Gold\n\n◆ ドロップ\n・海晶","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・深海の棘","color":"blue"}]
advancement revoke @s only system:guardian
function system:quest/add/guardian
function system:quest/add/ice