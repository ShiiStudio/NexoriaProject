execute at @s positioned ^ ^ ^1 run summon minecraft:villager ~ ~ ~ {Tags:["quest_npc_visual","quest_npc_new"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{type:"minecraft:plains",profession:"minecraft:none",level:1},Offers:{Recipes:[]},CustomNameVisible:0b}
data modify entity @e[tag=quest_npc_new,limit=1,sort=nearest,distance=..3] Rotation set from entity @s Rotation
tag @e[tag=quest_npc_new,limit=1,sort=nearest,distance=..3] remove quest_npc_new
execute at @s positioned ^ ^ ^1 run summon minecraft:interaction ~ ~ ~ {width:1.4f,height:2.1f,response:1b,Tags:["quest_npc"]}
execute at @s positioned ^ ^2 ^1 run summon minecraft:text_display ~ ~ ~ {Tags:["quest_npc_name"],billboard:"center",text:'{"text":"デイリークエスト案内人","color":"dark_green","bold":true}',background:0,shadow:1b}
say デイリークエスト案内人を召喚しました
