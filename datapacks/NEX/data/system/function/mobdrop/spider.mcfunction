scoreboard players add @s xp 10
scoreboard players add @s Gold 4
give @s minecraft:string[minecraft:custom_name='{"text":"クモの糸","color":"green","italic":false}',minecraft:custom_data={nexoria_item:"spider_string"}] 1
execute store result score #drop rpg_tmp run random value 1..100
execute if score #drop rpg_tmp matches ..50 run give @s minecraft:spider_eye[minecraft:custom_name='{"text":"クモの牙","color":"blue","italic":false}',minecraft:custom_data={nexoria_item:"spider_fang"}] 1
tellraw @s [{"text":"━━━━━━━━━━━━━━━━━━\nクモを倒した！\n━━━━━━━━━━━━━━━━━━\n\n◆ 報酬\n+10xp\n+4Gold\n\n◆ ドロップ\n・クモの糸","color":"green"}]
execute if score #drop rpg_tmp matches ..50 run tellraw @s [{"text":"・クモの牙","color":"blue"}]
advancement revoke @s only system:spider
function system:quest/add/spider
function system:quest/add/nature