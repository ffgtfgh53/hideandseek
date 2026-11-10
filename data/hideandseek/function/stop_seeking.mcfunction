# in case ended early
schedule clear hideandseek:countdown_wrapper
advancement grant @a only hideandseek:found
gamerule pvp false

data remove storage hideandseek:state seeking

# spectate winner(s)
execute as @a[scores={hideandseek_internal=1}] at @s run function hideandseek:mark_found

gamemode spectator @a

# tp to the nearest hiding mannequin
execute as @a run tp @s @n[type=minecraft:mannequin]

title @a times 0s 20s 0s
title @a actionbar "You are in spectatator"

schedule function hideandseek:reset 20s