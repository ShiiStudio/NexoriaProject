execute store result score #sold shop run clear @s minecraft:iron_chestplate[custom_data={nexoria_armor:"guard_chestplate"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 180
execute if score #sold shop matches 1.. run tellraw @s {"text":"衛兵の胸当てを1個売却しました。（+180G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"衛兵の胸当てを持っていません。","color":"red"}
