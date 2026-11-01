# FROM defizzed:place_fizz_plush

# check for fizz_plush in hand
execute unless items entity @s weapon.mainhand poisonous_potato[minecraft:custom_data~{defizzed:{id:"fizz_plush"}}] run return 0

# if shifting, just equip/unequip fizz
execute if entity @s[predicate=cnk:sneaking] run return run function defizzed:fizz_plush/equip/toggle_equip

advancement revoke @s only defizzed:place_fizz_plush

# clear iris settings
data remove storage cnk.iris:settings TargetEntities
data remove storage cnk.iris:settings Whitelist
data remove storage cnk.iris:settings MaxRecursionDepth
data remove storage cnk.iris:settings Callback
data remove storage cnk.iris:settings Blacklist

# raycast with iris
data merge storage cnk.iris:settings {TargetEntities:false,MaxRecursionDepth:16,Blacklist:"#defizzed:ignore_collision"}
execute store result score $max_distance cnk.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance cnk.dummy run function cnk.iris:get_target
execute if score $distance cnk.dummy matches 0 run return 0
execute unless score $distance cnk.dummy <= $max_distance cnk.dummy at @n[type=minecraft:marker, tag=cnk.iris.targeted_block] run return 0

# make a helper item_display that that move towards the player (markers done have facing directions)
summon item_display ~ ~ ~ {UUID:[I;-681154397,645809957,-1484653974,-923729236]}
execute as d76668a3-267e-4725-a781-fa6ac8f102ac run function cnk.iris:set_coordinates/main
execute at d76668a3-267e-4725-a781-fa6ac8f102ac facing entity @s feet run tp d76668a3-267e-4725-a781-fa6ac8f102ac ^ ^0.05 ^0.1
execute at d76668a3-267e-4725-a781-fa6ac8f102ac run function defizzed:fizz_plush/place/land

