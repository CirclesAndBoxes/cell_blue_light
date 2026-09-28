# Ran as the player
scoreboard players operation #id scratch = @s bluel.id
execute as @e[type=block_display,tag=bluel.head_display] if score @s bluel.id = #id scratch run kill @s

tag @s remove bluel.player_head
