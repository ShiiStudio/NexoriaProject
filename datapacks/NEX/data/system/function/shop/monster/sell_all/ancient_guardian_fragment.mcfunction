execute store result score #count shop run clear @s minecraft:amethyst_shard[custom_data={nexoria_item:"ancient_guardian_fragment"}]
scoreboard players operation #gain shop = #count shop
scoreboard players set #price shop 110
scoreboard players operation #gain shop *= #price shop
scoreboard players operation @s Gold += #gain shop
execute if score #count shop matches 1.. run tellraw @s [{"text":"古代守護者の破片を ","color":"green"},{"score":{"name":"#count","objective":"shop"}},{"text":" 個売却しました。（+"},{"score":{"name":"#gain","objective":"shop"}},{"text":"G）"}]
execute unless score #count shop matches 1.. run tellraw @s {"text":"古代守護者の破片を持っていません。","color":"red"}
