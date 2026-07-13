execute at @s positioned ^ ^ ^1 run summon minecraft:villager ~ ~ ~ {Tags:["shop_npc_visual","gather_shop_npc_visual","shop_new"],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,VillagerData:{type:"minecraft:plains",profession:"minecraft:toolsmith",level:5},Offers:{Recipes:[]},CustomNameVisible:0b}
data modify entity @e[tag=shop_new,limit=1,sort=nearest,distance=..3] Rotation set from entity @s Rotation
tag @e[tag=shop_new,limit=1,sort=nearest,distance=..3] remove shop_new
execute at @s positioned ^ ^ ^1 run summon minecraft:interaction ~ ~ ~ {width:1.4f,height:2.1f,response:1b,Tags:["shop_npc","gather_shop"]}
execute at @s positioned ^ ^2 ^1 run summon minecraft:text_display ~ ~ ~ {Tags:["shop_npc_name","gather_shop_npc_name"],billboard:"center",text:'{"text":"Aster採集ショップ","color":"dark_green","bold":true}',background:0,shadow:1b}
say Aster採集ショップを召喚しました
