# FROM defizzed:fizz_plush/place

$summon item_display ~ ~ ~ {Tags:["cnk.in_partial","defizzed.fizz_plush","cnk.block","smithed.block","smithed.entity","smithed.strict"$(extra_tags)],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.01f,1.01f,1.01f],translation:[0.0f,$(plush_shift)f,0.0f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_name":"minecraft:barrier","minecraft:item_model":"defizzed:fizz_plush_block","minecraft:custom_data":{"$jade:stack":{"id":"defizzed:fizz_plush"}},"minecraft:custom_model_data":{flags:[false]}}},Rotation:[$(rotation),$(rotation_y)],Passengers:\
    [\
        {id:"minecraft:interaction",Tags:["defizzed.fizz_plush_interaction","smithed.block","smithed.entity","smithed.strict"],height:$(plush_height),width:0.35}\
    ]}