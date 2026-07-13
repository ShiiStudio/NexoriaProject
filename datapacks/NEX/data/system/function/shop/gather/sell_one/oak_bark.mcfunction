execute store result score #sold shop run clear @s minecraft:paper[custom_data={nexoria_item:"oak_bark"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 8
execute if score #sold shop matches 1.. run tellraw @s {"text":"オーク樹皮を1個売却しました。（+8G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"オーク樹皮を持っていません。","color":"red"}
