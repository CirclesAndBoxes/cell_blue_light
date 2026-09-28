# Ran as, at the player
# Clear any display already linked to this player so repeated starts don't stack
execute if entity @s[tag=bluel.player_head] run function bluelight:player_head/end

# Give the player a unique id if they don't have one yet
execute unless score @s bluel.id matches 1.. run scoreboard players add #next bluel.id 1
execute unless score @s bluel.id matches 1.. run scoreboard players operation @s bluel.id = #next bluel.id

tag @s add bluel.player_head

# Six thin planes forming the faces of a 2x2x2 box centered on the head (each 0.01 thick, inset into the box)
# Bottom (-y) / Top (+y)
summon block_display ~ ~ ~ {Tags:["bluel.head_display","init"],block_state:{Name:"minecraft:blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-1f],scale:[2f,0.01f,2f]}}
summon block_display ~ ~ ~ {Tags:["bluel.head_display","init"],block_state:{Name:"minecraft:blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0.99f,-1f],scale:[2f,0.01f,2f]}}
# West (-x) / East (+x)
summon block_display ~ ~ ~ {Tags:["bluel.head_display","init"],block_state:{Name:"minecraft:blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-1f],scale:[0.01f,2f,2f]}}
summon block_display ~ ~ ~ {Tags:["bluel.head_display","init"],block_state:{Name:"minecraft:blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.99f,-1f,-1f],scale:[0.01f,2f,2f]}}
# North (-z) / South (+z)
summon block_display ~ ~ ~ {Tags:["bluel.head_display","init"],block_state:{Name:"minecraft:blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,-1f],scale:[2f,2f,0.01f]}}
summon block_display ~ ~ ~ {Tags:["bluel.head_display","init"],block_state:{Name:"minecraft:blue_stained_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,-1f,0.99f],scale:[2f,2f,0.01f]}}
scoreboard players operation @e[type=block_display,tag=init] bluel.id = @s bluel.id


tag @e[type=block_display,tag=init] remove init
