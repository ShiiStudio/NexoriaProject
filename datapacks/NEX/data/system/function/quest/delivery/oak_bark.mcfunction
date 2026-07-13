execute store result score #has q_tmp run clear @s minecraft:paper[minecraft:custom_data={nexoria_item:"oak_bark"}] 0
execute if score #has q_tmp matches 16.. run clear @s minecraft:paper[minecraft:custom_data={nexoria_item:"oak_bark"}] 16
execute if score #has q_tmp matches 16.. run scoreboard players set @s q_progress 16
execute if score #has q_tmp matches 16.. run function system:quest/check
execute if score #has q_tmp matches 16.. run tellraw @s {"text":"オーク樹皮16個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 16.. run tellraw @s {"text":"素材が足りません：オーク樹皮16個納品","color":"dark_green"}
function system:quest/npc
