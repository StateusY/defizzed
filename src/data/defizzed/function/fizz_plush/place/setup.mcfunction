# FROM defizzed:fizz_plush/place/main

# tag player
tag @s add defizzed.threw_fizz

# start raycast
scoreboard players set $raycast_distance cnk.dummy 0
execute store result score $reach cnk.dummy run attribute @s minecraft:block_interaction_range get 10
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function defizzed:fizz_plush/place/ray

# remove throwing tag
tag @s remove defizzed.threw_fizz
