execute store result score #sold shop run clear @s minecraft:coal[custom_data={nexoria_item:"low_coal"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 10
execute if score #sold shop matches 1.. run tellraw @s {"text":"低純度石炭を1個売却しました。（+10G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"低純度石炭を持っていません。","color":"red"}
