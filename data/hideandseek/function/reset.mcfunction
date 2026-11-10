# run by OP or console
# should reset and bring back the game from any state into idle state

# ENTER START COORDINATES AT BOTTOM OF FILE

scoreboard players set @a hideandseek_internal 0
scoreboard players set duration hideandseek_internal 0

data remove storage hideandseek:state hiding
data remove storage hideandseek:state seeking
data modify storage hideandseek:state stop_func set value ""

execute as @a run function hideandseek:remobolise

advancement grant @a only hideandseek:found
gamemode adventure @a
effect clear @a
gamerule pvp false

title @a reset

kill @e[type=minecraft:mannequin]

schedule clear hideandseek:countdown_wrapper

# XXX IMPORTANT XXX
# Enter coordinates of starting point below (replace '0 64 0')
teleport @a 0 64 0
