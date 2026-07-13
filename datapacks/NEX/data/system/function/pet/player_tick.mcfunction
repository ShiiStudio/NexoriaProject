# 自分のIDを一時保存
scoreboard players operation #owner pet_id = @s pet_id
tag @s add pet_owner_current

# ペットを持ってないなら自分のペットを消す
execute unless items entity @s weapon.offhand minecraft:bone[custom_data~{nexoria_pet:"velmire_wolf"}] unless items entity @s weapon.offhand minecraft:amethyst_shard[custom_data~{nexoria_pet:"ancient_allay"}] unless items entity @s weapon.offhand minecraft:turtle_scute[custom_data~{nexoria_pet:"coralis_turtle"}] run function system:pet/remove_own_pet

# Velmireペット
execute if items entity @s weapon.offhand minecraft:bone[custom_data~{nexoria_pet:"velmire_wolf"}] run function system:pet/velmire_wolf

# 古代神殿ペット
execute if items entity @s weapon.offhand minecraft:amethyst_shard[custom_data~{nexoria_pet:"ancient_allay"}] run function system:pet/ancient_allay

# Coralisペット
execute if items entity @s weapon.offhand minecraft:turtle_scute[custom_data~{nexoria_pet:"coralis_turtle"}] run function system:pet/coralis_turtle

tag @s remove pet_owner_current
