data remove storage hideandseek:state hiding 

# should have expired, but clear anyway
effect clear @a minecraft:blindness

# freeze hider
execute as @a[scores={hideandseek_internal=1}] run function hideandseek:immobolise

# 5s break before seeking
schedule function hideandseek:start_seeking 5s
