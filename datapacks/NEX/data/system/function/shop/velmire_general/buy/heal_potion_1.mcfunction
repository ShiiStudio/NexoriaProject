scoreboard players set @s shop 0
execute if score @s Gold matches 80.. run scoreboard players set @s shop 1
execute if score @s shop matches 1 run scoreboard players remove @s Gold 80
execute if score @s shop matches 1 run give @s minecraft:potion[potion_contents={custom_effects:[{id:"minecraft:instant_health",amplifier:3,duration:1}]},custom_name='{"text":"治癒のポーション IVS","color":"green","italic":false}',custom_data={nexoria_item:"heal_potion_1"}] 1
execute if score @s shop matches 1 run tellraw @s {"text":"✔ 治癒のポーション IVを購入しました。","color":"green"}
execute unless score @s shop matches 1 run tellraw @s {"text":"Goldが足りません。必要：80G","color":"red"}
