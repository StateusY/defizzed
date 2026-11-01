advancement revoke @s only defizzed:interact_fizz_plush

# scoreboard players set $interact_defizzed_plush_check cnk.dummy 0

tag @s add defizzed.interact_fizz_plush
execute as @e[type=minecraft:interaction,tag=defizzed.fizz_plush_interaction,nbt={interaction:{}},distance=..20] run function defizzed:fizz_plush/interact/on_interaction
tag @s remove defizzed.interact_fizz_plush