execute on target unless entity @s[tag=defizzed.hit_fizz_plush] run return fail

data remove entity @s attack
execute on vehicle at @s run function defizzed:fizz_plush/hit/on_display