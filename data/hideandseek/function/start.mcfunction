# mark 1 random hider
# copy and paste the following line to mark more hiders
scoreboard players set @r[scores={hideandseek_internal=0}] hideandseek_internal 1

title @a[scores={hideandseek_internal=1}] title {"text": "3 minutes", "color": "red"}
title @a[scores={hideandseek_internal=1}] subtitle {"text": "to hide"}

title @a[scores={hideandseek_internal=0}] title {type: "selector", selector: "@a[scores={hideandseek_internal=1}]", separator: ", "}
title @a[scores={hideandseek_internal=0}] subtitle {text: "are the ", extra: [{text: "hiders", color: "red"}]}

schedule function hideandseek:start_hiding 5s