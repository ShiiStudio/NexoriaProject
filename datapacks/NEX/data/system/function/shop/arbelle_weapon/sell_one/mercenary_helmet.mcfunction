execute store result score #sold shop run clear @s minecraft:chainmail_helmet[custom_data={nexoria_armor:"mercenary_helmet"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 90
execute if score #sold shop matches 1.. run tellraw @s {"text":"傭兵の兜を1個売却しました。（+90G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"傭兵の兜を持っていません。","color":"red"}
