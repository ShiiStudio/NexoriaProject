execute store result score #sold shop run clear @s minecraft:diamond_leggings[custom_data={nexoria_armor:"guardian_shop_leggings"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 425
execute if score #sold shop matches 1.. run tellraw @s {"text":"守護者の脚甲を1個売却しました。（+425G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"守護者の脚甲を持っていません。","color":"red"}
