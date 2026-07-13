execute store result score #sold shop run clear @s minecraft:paper[custom_data={nexoria_item:"spruce_bark"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 15
execute if score #sold shop matches 1.. run tellraw @s {"text":"トウヒ樹皮を1個売却しました。（+15G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"トウヒ樹皮を持っていません。","color":"red"}
