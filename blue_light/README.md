# Blue Light

A Minecraft Java Edition 26.2 data pack with visual effects built from display entities and particles.

## Installation

1. Copy the `blue_light` folder into your world's `datapacks` folder.
2. Run `/reload` in game.

## Features

### Laser beam (`block`)

A spinning blue glass laser beam that rises 256 blocks from a point.

**Summon**
```mcfunction
function bluelight:block/start {radius:<blocks>}
```

**Example**
```mcfunction
/execute at @s run function bluelight:block/start {radius:2}
```

**End**
```mcfunction
/execute at @s run function bluelight:block/end_nearest
```

### Particle area (`particle_area`)

Sonic boom particles at random spots on the ground within 10 blocks of a point.

**Summon**
```mcfunction
function bluelight:particle_area/start_centered
```

**Example**
```mcfunction
/execute at @s run function bluelight:particle_area/start_centered
```

**End**
```mcfunction
/kill @e[type=marker,tag=bluel.circular]
```

### Text block (`textblock`)

A flat, semi-transparent blue panel with a set center, rotation and size in blocks.

**Summon**
```mcfunction
function bluelight:textblock/summon {x:<x>, y:<y>, z:<z>, yaw:<yaw>, pitch:<pitch>, width:<blocks>, height:<blocks>}
```

**Example**
```mcfunction
/function bluelight:textblock/summon {x:0.5, y:66, z:0.5, yaw:0, pitch:0, width:4, height:2}
```

**End**
```mcfunction
/kill @e[type=text_display,tag=bluel.textblock]
```
