execute store result score #sold shop run clear @s minecraft:light_blue_wool[custom_data={nexoria_item:"wet_cloth"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 5
execute if score #sold shop matches 1.. run tellraw @s {"text":"濡れた布を1個売却しました。（+5G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"濡れた布を持っていません。","color":"red"}
