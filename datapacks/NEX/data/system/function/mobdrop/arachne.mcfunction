scoreboard players add @s xp 150
scoreboard players add @s Gold 80
give @s minecraft:spider_eye[minecraft:custom_name='{"text":"アラクネの毒牙","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"arachne_fang"}] 1
execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:string[minecraft:custom_name='{"text":"女王蜘蛛の糸","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"queen_spider_thread"}] 1
execute if score #drop rpg_tmp matches 96..100 run give @s minecraft:fermented_spider_eye[minecraft:custom_name='{"text":"アラクネの毒核","color":"gold","italic":false}',minecraft:custom_data={nexoria_item:"arachne_poison_core"}] 1
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\n毒母蜘蛛 アラクネを倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+150xp\n+80Gold\n\n◆ ドロップ\n・アラクネの毒牙","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・女王蜘蛛の糸","color":"blue"}]
execute if score #drop rpg_tmp matches 96..100 run tellraw @s [{"text":"★ アラクネの毒核","color":"gold"}]
advancement revoke @s only system:arachne
function system:quest/add/nature