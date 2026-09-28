# Macro, called by bluelight:textblock/summon with the computed scale and offset
# Text must stay " ": the scale and offset math in summon.mcfunction depends on its exact size
$summon text_display $(x) $(y) $(z) {Tags:["bluel.textblock"],text:" ",background:1996488896,billboard:"fixed",Rotation:[$(yaw)f,$(pitch)f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[$(offset_x)f,$(offset_y)f,0f],scale:[$(scale_x)f,$(scale_y)f,1f]}}
