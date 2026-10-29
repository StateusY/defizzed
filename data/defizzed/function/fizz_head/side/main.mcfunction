data modify storage cnk:temp fizz_head.rotation set from entity @s Rotation[0]

execute if data storage cnk:temp fizz_head{rotation:180.0f} run data modify storage cnk:temp fizz_head.direction set value "north"
execute if data storage cnk:temp fizz_head{rotation:270.0f} run data modify storage cnk:temp fizz_head.direction set value "east"
execute if data storage cnk:temp fizz_head{rotation:0.0f} run data modify storage cnk:temp fizz_head.direction set value "south"
execute if data storage cnk:temp fizz_head{rotation:90.0f} run data modify storage cnk:temp fizz_head.direction set value "west"

function defizzed:fizz_head/side/macro with storage cnk:temp fizz_head
return 1