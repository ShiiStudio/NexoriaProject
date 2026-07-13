execute store result score #count shop run clear @s minecraft:heart_of_the_sea[custom_data={nexoria_item:"guardian_crystal"}]
scoreboard players operation #gain shop = #count shop
scoreboard players set #price shop 120
scoreboard players operation #gain shop *= #price shop
scoreboard players operation @s Gold += #gain shop
execute if score #count shop matches 1.. run tellraw @s [{"text":"守護者の海晶を ","color":"green"},{"score":{"name":"#count","objective":"shop"}},{"text":" 個売却しました。（+"},{"score":{"name":"#gain","objective":"shop"}},{"text":"G）"}]
execute unless score #count shop matches 1.. run tellraw @s {"text":"守護者の海晶を持っていません。","color":"red"}
