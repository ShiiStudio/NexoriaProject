execute store result score #count shop run clear @s minecraft:diamond_chestplate[custom_data={nexoria_armor:"deep_shop_chestplate"}]
scoreboard players operation #gain shop = #count shop
scoreboard players set #price shop 450
scoreboard players operation #gain shop *= #price shop
scoreboard players operation @s Gold += #gain shop
execute if score #count shop matches 1.. run tellraw @s [{"text":"深海の胸当てを ","color":"green"},{"score":{"name":"#count","objective":"shop"}},{"text":" 個売却しました。（+"},{"score":{"name":"#gain","objective":"shop"}},{"text":"G）"}]
execute unless score #count shop matches 1.. run tellraw @s {"text":"深海の胸当てを持っていません。","color":"red"}
