execute store result score #has q_tmp run clear @s minecraft:raw_iron[minecraft:custom_data={nexoria_item:"low_iron_ore"}] 0
execute if score #has q_tmp matches 32.. run clear @s minecraft:raw_iron[minecraft:custom_data={nexoria_item:"low_iron_ore"}] 32
execute if score #has q_tmp matches 32.. run scoreboard players set @s q_progress 32
execute if score #has q_tmp matches 32.. run function system:quest/check
execute if score #has q_tmp matches 32.. run tellraw @s {"text":"低純度鉄鉱石32個納品を納品しました。","color":"gold"}
execute unless score #has q_tmp matches 32.. run tellraw @s {"text":"素材が足りません：低純度鉄鉱石32個納品","color":"dark_green"}
function system:quest/npc
