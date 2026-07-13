execute store result score #count shop run clear @s minecraft:echo_shard[custom_data={nexoria_item:"captain_emblem"}]
scoreboard players operation #gain shop = #count shop
scoreboard players set #price shop 90
scoreboard players operation #gain shop *= #price shop
scoreboard players operation @s Gold += #gain shop
execute if score #count shop matches 1.. run tellraw @s [{"text":"隊長の紋章を ","color":"green"},{"score":{"name":"#count","objective":"shop"}},{"text":" 個売却しました。（+"},{"score":{"name":"#gain","objective":"shop"}},{"text":"G）"}]
execute unless score #count shop matches 1.. run tellraw @s {"text":"隊長の紋章を持っていません。","color":"red"}
