

execute as @a[tag=bluel.player_head] at @s run function bluelight:player_head/tick
execute as @e[type=marker,tag=bluel.circular] at @s run function bluelight:particle_area/tick
execute as @e[type=block_display,tag=bluel.beam] at @s run function bluelight:block/tick
