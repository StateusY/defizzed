advancement revoke @s only defizzed:hit_rack

tag @s add defizzed.hit_fizz_rack
execute as @n[type=minecraft:interaction,tag=defizzed.fizz_rack_interaction,nbt={attack:{}},distance=..20] run function defizzed:fizz_rack/hit/on_interaction
tag @s remove defizzed.hit_fizz_rack