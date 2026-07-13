execute store result score #sold shop run clear @s minecraft:white_wool[custom_data={nexoria_item:"old_cloth"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 2
execute if score #sold shop matches 1.. run tellraw @s {"text":"古びた布を1個売却しました。（+2G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"古びた布を持っていません。","color":"red"}
