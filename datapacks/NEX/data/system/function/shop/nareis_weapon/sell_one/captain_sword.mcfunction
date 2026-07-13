execute store result score #sold shop run clear @s minecraft:iron_sword[custom_data={nexoria_weapon:"captain_sword"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 525
execute if score #sold shop matches 1.. run tellraw @s {"text":"隊長の剣を1個売却しました。（+525G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"隊長の剣を持っていません。","color":"red"}
