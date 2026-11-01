# pack loaded message
tellraw @a [{translate: "defizzed.pack_mark","color": "white","font": "defizzed:tooltip","italic": false},{translate:"defizzed.loaded", "font":"minecraft:default"}]

# scores
scoreboard objectives add defizzed.place_plush minecraft.used:minecraft.carrot_on_a_stick


# set 10t clock
schedule function defizzed:10t 10t