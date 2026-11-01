# FROM defizzed:fizz_plush/place/ray

# kill the initial thrown item
kill @n[type=item,tag=defizzed.fizz_thrown]

# rotation stuff that prob doesnt matter
data modify storage cnk:temp rotation set value 0

# SFX and particles
playsound defizzed:item.plush.squeak neutral @a ~ ~ ~ 1 1
particle minecraft:item{item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"defizzed:fizz_plush_block"}}} ~ ~ ~ 0.15 0.1 0.15 0.1 10

# place plush
function defizzed:fizz_plush/macro with storage cnk:temp

# alter the position and rotation of the plush based on surrounding blocks
execute as @n[type=item_display,tag=defizzed.fizz_plush,distance=..1] run function defizzed:fizz_plush/place/modify