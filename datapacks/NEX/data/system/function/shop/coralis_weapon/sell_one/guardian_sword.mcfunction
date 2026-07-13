execute store result score #sold shop run clear @s minecraft:diamond_sword[custom_data={nexoria_weapon:"guardian_sword"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 750
execute if score #sold shop matches 1.. run tellraw @s {"text":"守護者の剣を1個売却しました。（+750G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"守護者の剣を持っていません。","color":"red"}
