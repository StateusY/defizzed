advancement revoke @s only defizzed:hit_fizz_plush

# scoreboard players set $hit_defizzed_plush_check cnk.dummy 0

tag @s add defizzed.hit_fizz_plush
execute as @e[type=minecraft:interaction,tag=defizzed.fizz_plush_interaction,nbt={attack:{}},distance=..20] run function defizzed:fizz_plush/hit/on_interaction
tag @s remove defizzed.hit_fizz_plush