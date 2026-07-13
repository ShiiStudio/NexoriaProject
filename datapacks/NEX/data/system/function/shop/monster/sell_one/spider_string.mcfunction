execute store result score #sold shop run clear @s minecraft:string[custom_data={nexoria_item:"spider_string"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 4
execute if score #sold shop matches 1.. run tellraw @s {"text":"クモの糸を1個売却しました。（+4G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"クモの糸を持っていません。","color":"red"}
