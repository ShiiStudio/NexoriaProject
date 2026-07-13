execute store result score #sold shop run clear @s minecraft:spider_eye[custom_data={nexoria_item:"spider_fang"}] 1
execute if score #sold shop matches 1.. run scoreboard players add @s Gold 12
execute if score #sold shop matches 1.. run tellraw @s {"text":"クモの牙を1個売却しました。（+12G）","color":"green"}
execute unless score #sold shop matches 1.. run tellraw @s {"text":"クモの牙を持っていません。","color":"red"}
