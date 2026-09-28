# Macro, ran at the spot where the beam hits the ground
# Summons a beam of blue stained glass from here up past the top of the world
# Usage: function bluelight:block/start {radius:2}
#   radius  half the beam's width in blocks, so the beam is 2*radius wide

# 512 blocks tall so it clears the top of the world (y 384) even from the bottom (y -128).
# Shifted by -radius on x and z so the beam is centered on the entity, which it spins around.
# teleport_duration smooths out the spin applied by bluelight:block/tick.
$summon block_display ~ ~ ~ {Tags:["bluel.beam","init"],block_state:{Name:"minecraft:blue_stained_glass"},brightness:{sky:15,block:15},view_range:10f,teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-$(radius)f,0f,-$(radius)f],scale:[1f,256f,1f]}}

# Macros can't do math, so the width (2*radius) is set through storage
$data modify storage bluelight:block radius set value $(radius)
execute store result entity @n[type=block_display,tag=init] transformation.scale[0] float 0.002 run data get storage bluelight:block radius 1000
execute store result entity @n[type=block_display,tag=init] transformation.scale[2] float 0.002 run data get storage bluelight:block radius 1000

tag @n[type=block_display,tag=init] remove init
