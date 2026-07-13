execute store result score #sold shop run clear @s minecraft:bone[custom_data={nexoria_item:"rotten_bone"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 10
execute if score #sold shop matches 1.. run tellraw @s {"text":"腐食した骨を1個売却しました。（+10G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"腐食した骨を持っていません。","color":"red"}
