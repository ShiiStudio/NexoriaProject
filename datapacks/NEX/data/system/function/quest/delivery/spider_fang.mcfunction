execute store result score #has q_tmp run clear @s minecraft:spider_eye[minecraft:custom_data={nexoria_item:"spider_fang"}] 0
execute if score #has q_tmp matches 16.. run clear @s minecraft:spider_eye[minecraft:custom_data={nexoria_item:"spider_fang"}] 16
execute if score #has q_tmp matches 16.. run scoreboard players set @s q_progress 16
execute if score #has q_tmp matches 16.. run function system:quest/check
execute if score #has q_tmp matches 16.. run tellraw @s {"text":"クモの牙16個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 16.. run tellraw @s {"text":"素材が足りません：クモの牙16個納品","color":"dark_green"}
function system:quest/npc
