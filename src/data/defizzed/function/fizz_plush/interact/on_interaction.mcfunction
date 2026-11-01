execute on target unless entity @s[tag=defizzed.interact_fizz_plush] run return fail

# execute on target run function cnk:swing/mainhand

data remove entity @s interaction
execute on vehicle at @s run function defizzed:fizz_plush/interact/on_display