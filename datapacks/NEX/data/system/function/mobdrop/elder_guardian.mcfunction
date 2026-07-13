scoreboard players add @s xp 70
scoreboard players add @s Gold 35

give @s minecraft:heart_of_the_sea[minecraft:custom_name='{"text":"守護者の海晶","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"guardian_crystal"}] 1

execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:prismarine_shard[minecraft:custom_name='{"text":"深海の棘","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"deep_spike"}] 1
execute if score #drop rpg_tmp matches 96..100 run give @s minecraft:nether_star[minecraft:custom_name='{"text":"深海の核","color":"gold","italic":false}',minecraft:custom_data={nexoria_item:"deep_core"}] 1

tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\n深海の守護者を倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+70xp\n+35Gold\n\n◆ ドロップ\n・守護者の海晶","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・深海の棘","color":"blue"}]
execute if score #drop rpg_tmp matches 96..100 run tellraw @s [{"text":"★ 深海の核","color":"gold"}]
advancement revoke @s only system:elder_guardian
function system:quest/add/elder_guardian
function system:quest/add/ice