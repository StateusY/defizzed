# FROM defizzed:switch

playsound defizzed:item.plush.squeak block @a ~ ~ ~ 1 1

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=smithed.block,distance=..0.1] at @s run return run loot spawn ~ ~ ~ loot defizzed:fizz_plush

data modify storage cnk:temp rotation set value 0

execute store result storage cnk:temp rotation int 0.1 run scoreboard players get $rotation cnk.dummy


function defizzed:fizz_plush/macro with storage cnk:temp
