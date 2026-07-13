execute store result score #sold shop run clear @s minecraft:leather_chestplate[custom_data={nexoria_armor:"rookie_chestplate"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 90
execute if score #sold shop matches 1.. run tellraw @s {"text":"新兵の胸当てを1個売却しました。（+90G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"新兵の胸当てを持っていません。","color":"red"}
