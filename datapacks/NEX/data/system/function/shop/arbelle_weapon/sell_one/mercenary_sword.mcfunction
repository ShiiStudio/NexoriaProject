execute store result score #sold shop run clear @s minecraft:iron_sword[custom_data={nexoria_weapon:"mercenary_sword"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 200
execute if score #sold shop matches 1.. run tellraw @s {"text":"傭兵の剣を1個売却しました。（+200G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"傭兵の剣を持っていません。","color":"red"}
