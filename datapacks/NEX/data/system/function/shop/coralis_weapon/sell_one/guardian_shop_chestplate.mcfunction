execute store result score #sold shop run clear @s minecraft:diamond_chestplate[custom_data={nexoria_armor:"guardian_shop_chestplate"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 550
execute if score #sold shop matches 1.. run tellraw @s {"text":"守護者の胸当てを1個売却しました。（+550G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"守護者の胸当てを持っていません。","color":"red"}
