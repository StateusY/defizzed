execute on target unless entity @s[tag=defizzed.hit_fizz_rack] run return fail

data remove entity @s attack
execute as @n[type=item_display,tag=defizzed.fizz_rack] at @s run function defizzed:fizz_rack/hit/on_display