# FROM defizzed:fizz_plush/place/setup
# FROM defizzed:fizz_plush/place/ray

# detect block collisions
execute unless block ~ ~ ~ #defizzed:ignore_collision positioned ^ ^ ^-0.1 run return run function defizzed:fizz_plush/place/land

# increment raycast distance
scoreboard players add $raycast_distance cnk.dummy 1

# check for max distance exceeded
execute if score $raycast_distance cnk.dummy < $reach cnk.dummy positioned ^ ^ ^0.1 run return run function defizzed:fizz_plush/place/ray