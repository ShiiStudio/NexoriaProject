execute store result score #count shop run clear @s minecraft:nether_star[custom_data={nexoria_item:"deep_core"}]
scoreboard players operation #gain shop = #count shop
scoreboard players set #price shop 480
scoreboard players operation #gain shop *= #price shop
scoreboard players operation @s Gold += #gain shop
execute if score #count shop matches 1.. run tellraw @s [{"text":"深海の核を ","color":"green"},{"score":{"name":"#count","objective":"shop"}},{"text":" 個売却しました。（+"},{"score":{"name":"#gain","objective":"shop"}},{"text":"G）"}]
execute unless score #count shop matches 1.. run tellraw @s {"text":"深海の核を持っていません。","color":"red"}
