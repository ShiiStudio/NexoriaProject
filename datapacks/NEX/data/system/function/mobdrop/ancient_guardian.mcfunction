scoreboard players add @s xp 500
scoreboard players add @s Gold 300
give @s minecraft:amethyst_shard[minecraft:custom_name='{"text":"古代守護者の破片","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"ancient_guardian_fragment"}] 1
execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:echo_shard[minecraft:custom_name='{"text":"古代の魔力片","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"ancient_magic_shard"}] 1
execute if score #drop rpg_tmp matches 96..100 run give @s minecraft:nether_star[minecraft:custom_name='{"text":"古代守護者の雷核","color":"gold","italic":false}',minecraft:custom_data={nexoria_item:"ancient_thunder_core"}] 1
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\n古代の守護者を倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+500xp\n+300Gold\n\n◆ ドロップ\n・古代守護者の破片","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・古代の魔力片","color":"blue"}]
execute if score #drop rpg_tmp matches 96..100 run tellraw @s [{"text":"★ 古代守護者の雷核","color":"gold"}]
advancement revoke @s only system:ancient_guardian
function system:quest/add/none