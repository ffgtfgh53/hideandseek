$summon minecraft:mannequin ~ ~ ~ {profile: {id: $(UUID)}, Rotation: $(Rotation)}
execute at @s run effect give @e[type=mannequin, distance=..2] minecraft:glowing infinite