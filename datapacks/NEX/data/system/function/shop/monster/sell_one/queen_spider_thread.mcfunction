execute store result score #sold shop run clear @s minecraft:string[custom_data={nexoria_item:"queen_spider_thread"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 45
execute if score #sold shop matches 1.. run tellraw @s {"text":"女王蜘蛛の糸を1個売却しました。（+45G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"女王蜘蛛の糸を持っていません。","color":"red"}
