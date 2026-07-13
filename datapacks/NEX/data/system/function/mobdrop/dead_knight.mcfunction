scoreboard players add @s xp 250
scoreboard players add @s Gold 140
give @s minecraft:echo_shard[minecraft:custom_name='{"text":"亡者騎士の紋章","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"dead_knight_emblem"}] 1
execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:iron_nugget[minecraft:custom_name='{"text":"朽ちた騎士の鉄片","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"rusted_knight_iron"}] 1
execute if score #drop rpg_tmp matches 96..100 run give @s minecraft:netherite_scrap[minecraft:custom_name='{"text":"亡者騎士の魂片","color":"gold","italic":false}',minecraft:custom_data={nexoria_item:"dead_knight_soul_fragment"}] 1
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\n亡者の騎士を倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+250xp\n+140Gold\n\n◆ ドロップ\n・亡者騎士の紋章","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・朽ちた騎士の鉄片","color":"blue"}]
execute if score #drop rpg_tmp matches 96..100 run tellraw @s [{"text":"★ 亡者騎士の魂片","color":"gold"}]
advancement revoke @s only system:dead_knight
function system:quest/add/nature