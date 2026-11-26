advancement revoke @s only defizzed:interact_rack

tag @s add defizzed.interact_fizz_rack
execute as @n[type=minecraft:interaction,tag=defizzed.fizz_rack_interaction,nbt={interaction:{}},distance=..20] run function defizzed:fizz_rack/interact/on_interaction
tag @s remove defizzed.interact_fizz_rack