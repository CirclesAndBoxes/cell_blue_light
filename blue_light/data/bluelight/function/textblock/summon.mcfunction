# Macro: summons a blank text display panel of width x height blocks, centered on (x, y, z)
# Usage: function bluelight:textblock/summon {x:0.5, y:65, z:0.5, yaw:0, pitch:0, width:4, height:2}
#   x, y, z        center of the panel (numbers, or "~" / "~1" for relative coordinates)
#   yaw, pitch     rotation of the panel (yaw 0 faces south, pitch -90 faces up)
#   width, height  size of the panel in blocks

# A text display showing " " has a background of 5x10 font pixels (0.125 x 0.25 blocks). Its bottom edge
# sits on the entity's origin, and its center is 0.5px right of it. Scale by (8*width, 4*height) and
# shift by (-0.1*width, -0.5*height) so the panel is width x height blocks and centered on the entity.
$data modify storage bluelight:textblock args set value {x:"$(x)",y:"$(y)",z:"$(z)",yaw:$(yaw),pitch:$(pitch),width:$(width),height:$(height)}
execute store result storage bluelight:textblock args.scale_x float 0.008 run data get storage bluelight:textblock args.width 1000
execute store result storage bluelight:textblock args.scale_y float 0.004 run data get storage bluelight:textblock args.height 1000
execute store result storage bluelight:textblock args.offset_x float -0.0001 run data get storage bluelight:textblock args.width 1000
execute store result storage bluelight:textblock args.offset_y float -0.0005 run data get storage bluelight:textblock args.height 1000

function bluelight:textblock/summon_apply with storage bluelight:textblock args
