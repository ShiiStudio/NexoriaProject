execute store result score #sold shop run clear @s minecraft:spider_eye[custom_data={nexoria_item:"arachne_fang"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 80
execute if score #sold shop matches 1.. run tellraw @s {"text":"アラクネの毒牙を1個売却しました。（+80G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"アラクネの毒牙を持っていません。","color":"red"}
