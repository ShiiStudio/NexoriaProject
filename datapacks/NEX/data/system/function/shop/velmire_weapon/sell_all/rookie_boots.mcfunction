execute store result score #count shop run clear @s minecraft:leather_boots[custom_data={nexoria_armor:"rookie_boots"}]
scoreboard players operation #gain shop = #count shop
scoreboard players set #price shop 35
scoreboard players operation #gain shop *= #price shop
scoreboard players operation @s Gold += #gain shop
execute if score #count shop matches 1.. run tellraw @s [{"text":"新兵のブーツを ","color":"green"},{"score":{"name":"#count","objective":"shop"}},{"text":" 個売却しました。（+"},{"score":{"name":"#gain","objective":"shop"}},{"text":"G）"}]
execute unless score #count shop matches 1.. run tellraw @s {"text":"新兵のブーツを持っていません。","color":"red"}
