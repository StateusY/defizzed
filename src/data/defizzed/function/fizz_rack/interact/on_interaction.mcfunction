execute on target unless entity @s[tag=defizzed.interact_fizz_rack] run return fail

data remove entity @s interaction
execute as @n[type=item_display,tag=defizzed.fizz_rack] at @s run function defizzed:fizz_rack/interact/on_display