#初参加プレイヤーの処理
scoreboard players set @a[tag=!nothatusanka] Gold 100
team join player @a[tag=!nothatusanka]
tag @a[tag=!nothatusanka] add rpg_recalc
tag @a[tag=!nothatusanka] add nothatusanka

#funcitonの実行
function system:level/level
function system:spawn
function system:inventory
function system:collection/tick
function system:performance/tick
function system:tick_add_shop_craft
function system:quest/tick

# 火属性魔法で燃えている敵以外は、実際に着火した時だけ消火
execute as @e[tag=enemy,tag=!magic_burning] if predicate system:is_on_fire run data merge entity @s {Fire:0s}

# 火属性魔法の燃焼タイマー
scoreboard players remove @e[tag=enemy,tag=magic_burning,scores={calc=1..}] calc 1
execute as @e[tag=enemy,tag=magic_burning,scores={calc=0}] run function system:magic/fire_restore

#Manaの処理
execute as @a run execute if score @s Mana < @s Maxmana at @s run scoreboard players add @s Mana 1

#魔法の処理
execute as @a[scores={use_book=1..,Mana=..79}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"fire2"}] run tellraw @s {"text":"Manaが足りません。必要：80","color":"aqua"}
execute as @a[scores={use_book=1..,Mana=..99}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"ice2"}] run tellraw @s {"text":"Manaが足りません。必要：100","color":"aqua"}
execute as @a[scores={use_book=1..,Mana=..89}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"thunder2"}] run tellraw @s {"text":"Manaが足りません。必要：90","color":"aqua"}
execute as @a[scores={use_book=1..,Mana=..69}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"nature2"}] run tellraw @s {"text":"Manaが足りません。必要：70","color":"aqua"}
execute as @a[scores={use_book=1..,Mana=..59}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"tenka"}] run tellraw @s {"text":"Manaが足りません。必要：60","color":"aqua"}
execute as @a[scores={use_book=1..,Mana=..39}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"shokuhyo"}] run tellraw @s {"text":"Manaが足りません。必要：40","color":"aqua"}
execute as @a[scores={use_book=1..,Mana=..49}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"touka"}] run tellraw @s {"text":"Manaが足りません。必要：50","color":"aqua"}
execute as @a[scores={use_book=1..,Mana=..34}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"tensho"}] run tellraw @s {"text":"Manaが足りません。必要：35","color":"aqua"}
execute as @a[scores={use_book=1..,Mana=60..}] at @s anchored eyes if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"tenka"}] run function system:magic/magic1
execute as @a[scores={use_book=1..,Mana=40..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"shokuhyo"}] run function system:magic/magic2
execute as @a[scores={use_book=1..,Mana=50..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"touka"}] run function system:magic/magic4
execute as @a[scores={use_book=1..,Mana=35..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"tensho"}] run function system:magic/magic3
execute as @a[scores={use_book=1..,Mana=80..}] at @s anchored eyes if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"fire2"}] run function system:magic/magic5
execute as @a[scores={use_book=1..,Mana=100..}] at @s anchored eyes if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"ice2"}] run function system:magic/magic6
execute as @a[scores={use_book=1..,Mana=90..}] at @s anchored eyes if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"thunder2"}] run function system:magic/magic7
execute as @a[scores={use_book=1..,Mana=70..}] at @s anchored eyes if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[custom_data={magic:"nature2"}] run function system:magic/magic8
scoreboard players set @a[scores={use_book=1..}] use_book 0

#アクセサリーの処理
execute as @a if items entity @s hotbar.* minecraft:gold_nugget[custom_data~{accessory:"mana_ring"}] if score @s Mana < @s Maxmana run scoreboard players add @s Mana 1

#レベル処理
execute as @a[scores={level=..-1}] run scoreboard players set @s level 0
execute as @a[scores={level=..-1}] run scoreboard players set @s xp 0
execute as @a[scores={level=..-1}] run scoreboard players set @s nextxp 50

#敵のスキル
function system:skill/skill1
function system:skill/skill2
function system:skill/skill3
function system:skill/skill4
function system:skill/skill5
function system:skill/skill6

#BGM処理
execute as @a[tag=bgm_active] at @s run function system:bgm/player_tick
