summon minecraft:interaction ~ ~ ~ {width:1.2f,height:1.5f,response:1b,Tags:["collection","collection_active","collection_oak","collection_new"]}
scoreboard players set @e[type=minecraft:interaction,tag=collection_new,limit=1,sort=nearest] collection_hp 3
tag @e[type=minecraft:interaction,tag=collection_new,limit=1,sort=nearest] remove collection_new
summon minecraft:armor_stand ~ ~1 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,CustomNameVisible:1b,Tags:["collection_display","collection_oak"],CustomName:'{"text":"HP 3/3","color":"green"}'}
say オーク採集ポイントを召喚しました
