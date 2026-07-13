execute store result score #sold shop run clear @s minecraft:iron_leggings[custom_data={nexoria_armor:"captain_shop_leggings"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 340
execute if score #sold shop matches 1.. run tellraw @s {"text":"隊長の脚甲を1個売却しました。（+340G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"隊長の脚甲を持っていません。","color":"red"}
