execute store result score #sold shop run clear @s minecraft:oak_log[custom_data={nexoria_item:"oak_log"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 4
execute if score #sold shop matches 1.. run tellraw @s {"text":"オーク原木を1個売却しました。（+4G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"オーク原木を持っていません。","color":"red"}
