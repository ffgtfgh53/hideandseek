data modify storage hideandseek:state seeking set value ""
data modify storage hideandseek:state stop_func set value "hideandseek:stop_seeking"
scoreboard players set duration hideandseek_internal 15

advancement revoke @a[scores={hideandseek_internal=1}] only hideandseek:found
gamerule pvp true

title @a[scores={hideandseek_internal=0}] title {"text": "Time to seek!", "color": "green"}
title @a[scores={hideandseek_internal=1}] title {"text": "Seekers are out...", "color": "red"}

execute as @a[scores={hideandseek_internal=0}] run function hideandseek:remobolise

function hideandseek:countdown_wrapper