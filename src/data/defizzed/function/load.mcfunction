# pack loaded message
tellraw @a [{translate: "defizzed.pack_mark","color": "white","font": "defizzed:tooltip","italic": false},{translate:"defizzed.loaded", "font":"minecraft:default"}]

scoreboard players set $constant cnk.dummy 180

# set 10t clock
schedule function defizzed:10t 10t