execute as @e[type=item_display,tag=defizzed.fizz_head,tag=defizzed.powered] run function defizzed:fizz_head/blink_check
execute as @a if score @s defizzed.place_plush matches 1.. run function defizzed:fizz_plush/place/main
