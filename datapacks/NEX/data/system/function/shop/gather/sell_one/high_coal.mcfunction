execute store result score #sold shop run clear @s minecraft:coal_block[custom_data={nexoria_item:"high_coal"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 18
execute if score #sold shop matches 1.. run tellraw @s {"text":"高純度石炭を1個売却しました。（+18G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"高純度石炭を持っていません。","color":"red"}
