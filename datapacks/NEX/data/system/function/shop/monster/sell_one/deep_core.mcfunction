execute store result score #sold shop run clear @s minecraft:nether_star[custom_data={nexoria_item:"deep_core"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 480
execute if score #sold shop matches 1.. run tellraw @s {"text":"深海の核を1個売却しました。（+480G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"深海の核を持っていません。","color":"red"}
