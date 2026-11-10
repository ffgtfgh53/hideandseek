data modify storage hideandseek:state hiding set value ""
data modify storage hideandseek:state stop_func set value "hideandseek:stop_hiding"
scoreboard players set duration hideandseek_internal 15

title @a reset

title @a[scores={hideandseek_internal=1}] title {"text": "Hide!", "color": "blue"}

effect give @a[scores={hideandseek_internal=0}] minecraft:blindness 180
title @a[scores={hideandseek_internal=0}] title {"text": "No peeking!", "color": "red"}
execute as @a[scores={hideandseek_internal=0}] run function hideandseek:immobolise

function hideandseek:countdown_wrapper