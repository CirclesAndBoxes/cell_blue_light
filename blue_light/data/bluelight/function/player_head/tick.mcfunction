# Ran as, at a player tagged bluel.player_head
scoreboard players operation #id scratch = @s bluel.id
execute anchored eyes positioned ^ ^ ^ as @e[type=block_display,tag=bluel.head_display] if score @s bluel.id = #id scratch run tp @s ~ ~ ~
