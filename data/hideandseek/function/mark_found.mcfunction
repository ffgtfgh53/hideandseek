# This function should be run by as a player

# remove from hider list
scoreboard players set @s hideandseek_internal 0

# summon marker
function hideandseek:summon_clone with entity @s

function hideandseek:remobolise

# display title
execute \
    if score duration hideandseek_internal matches 1..2147483647 \
    run title @a actionbar [{type: "selector", selector: "@s", color: "green"}, {text: " has been found!"}]
execute \
    if score duration hideandseek_internal matches 1..2147483647 \
    if entity @a[scores={hideandseek_internal=1}] \
    run title @s subtitle {"text": "You are now a seeker!"}

# stop if everyone found
execute \
    if score duration hideandseek_internal matches 1..2147483647 \
    if entity @a[scores={hideandseek_internal=1}] \
    run function hideandseek:stop_seeking
