execute store result score #sold shop run clear @s minecraft:nether_star[custom_data={nexoria_item:"ancient_thunder_core"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 500
execute if score #sold shop matches 1.. run tellraw @s {"text":"古代守護者の雷核を1個売却しました。（+500G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"古代守護者の雷核を持っていません。","color":"red"}
