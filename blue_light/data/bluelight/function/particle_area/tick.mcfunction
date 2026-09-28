# Ran as, at a bluel.circular marker
execute unless score @s bluel.particle_radius matches 1.. run return fail

# Number of random blocks that get a particle each tick
scoreboard players set #count scratch 10

scoreboard players operation #r2 scratch = @s bluel.particle_radius
scoreboard players operation #r2 scratch *= #r2 scratch
execute store result storage particle_area r int 1 run scoreboard players get @s bluel.particle_radius

function bluelight:particle_area/pick with storage particle_area
