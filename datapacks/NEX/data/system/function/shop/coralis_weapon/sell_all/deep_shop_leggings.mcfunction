execute store result score #count shop run clear @s minecraft:diamond_leggings[custom_data={nexoria_armor:"deep_shop_leggings"}]
scoreboard players operation #gain shop = #count shop
scoreboard players set #price shop 340
scoreboard players operation #gain shop *= #price shop
scoreboard players operation @s Gold += #gain shop
execute if score #count shop matches 1.. run tellraw @s [{"text":"深海の脚甲を ","color":"green"},{"score":{"name":"#count","objective":"shop"}},{"text":" 個売却しました。（+"},{"score":{"name":"#gain","objective":"shop"}},{"text":"G）"}]
execute unless score #count shop matches 1.. run tellraw @s {"text":"深海の脚甲を持っていません。","color":"red"}
