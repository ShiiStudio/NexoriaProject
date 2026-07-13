execute store result score #sold shop run clear @s minecraft:prismarine_shard[custom_data={nexoria_item:"sea_fragment"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 15
execute if score #sold shop matches 1.. run tellraw @s {"text":"海晶片を1個売却しました。（+15G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"海晶片を持っていません。","color":"red"}
