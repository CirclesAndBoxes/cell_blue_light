# Ran at the marker, requires r. Picks a random block inside the circle and repeats #count times
$execute store result score #dx scratch run random value -$(r)..$(r)
$execute store result score #dz scratch run random value -$(r)..$(r)

# Points in the square but outside the circle are rerolled
scoreboard players operation #d2 scratch = #dx scratch
scoreboard players operation #d2 scratch *= #dx scratch
scoreboard players operation #dz2 scratch = #dz scratch
scoreboard players operation #dz2 scratch *= #dz scratch
scoreboard players operation #d2 scratch += #dz2 scratch
execute if score #d2 scratch > #r2 scratch run return run function bluelight:particle_area/pick with storage particle_area

execute store result storage particle_area dx int 1 run scoreboard players get #dx scratch
execute store result storage particle_area dz int 1 run scoreboard players get #dz scratch
function bluelight:particle_area/particle with storage particle_area

scoreboard players remove #count scratch 1
execute if score #count scratch matches 1.. run function bluelight:particle_area/pick with storage particle_area
