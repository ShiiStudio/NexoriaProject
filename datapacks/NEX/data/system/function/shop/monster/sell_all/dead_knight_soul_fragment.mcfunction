execute store result score #count shop run clear @s minecraft:netherite_scrap[custom_data={nexoria_item:"dead_knight_soul_fragment"}]
scoreboard players operation #gain shop = #count shop
scoreboard players set #price shop 420
scoreboard players operation #gain shop *= #price shop
scoreboard players operation @s Gold += #gain shop
execute if score #count shop matches 1.. run tellraw @s [{"text":"亡者騎士の魂片を ","color":"green"},{"score":{"name":"#count","objective":"shop"}},{"text":" 個売却しました。（+"},{"score":{"name":"#gain","objective":"shop"}},{"text":"G）"}]
execute unless score #count shop matches 1.. run tellraw @s {"text":"亡者騎士の魂片を持っていません。","color":"red"}
