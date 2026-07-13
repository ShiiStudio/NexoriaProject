execute store result score #sold shop run clear @s minecraft:iron_chestplate[custom_data={nexoria_armor:"mercenary_chestplate"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 200
execute if score #sold shop matches 1.. run tellraw @s {"text":"傭兵の胸当てを1個売却しました。（+200G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"傭兵の胸当てを持っていません。","color":"red"}
