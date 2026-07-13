execute store result score #count shop run clear @s minecraft:spider_eye[custom_data={nexoria_item:"arachne_fang"}]
scoreboard players operation #gain shop = #count shop
scoreboard players set #price shop 80
scoreboard players operation #gain shop *= #price shop
scoreboard players operation @s Gold += #gain shop
execute if score #count shop matches 1.. run tellraw @s [{"text":"アラクネの毒牙を ","color":"green"},{"score":{"name":"#count","objective":"shop"}},{"text":" 個売却しました。（+"},{"score":{"name":"#gain","objective":"shop"}},{"text":"G）"}]
execute unless score #count shop matches 1.. run tellraw @s {"text":"アラクネの毒牙を持っていません。","color":"red"}
