execute store result score #sold shop run clear @s minecraft:heart_of_the_sea[custom_data={nexoria_item:"guardian_crystal"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 120
execute if score #sold shop matches 1.. run tellraw @s {"text":"守護者の海晶を1個売却しました。（+120G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"守護者の海晶を持っていません。","color":"red"}
