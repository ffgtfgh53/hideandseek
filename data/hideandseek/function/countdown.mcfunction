# This function is called by countdown_wrapper ONLY

execute if score duration hideandseek_internal matches 1..2147483647 run scoreboard players remove duration hideandseek_internal 1
execute if score duration hideandseek_internal matches 60 run title @a title {"text": "One minute left!", color: "red"}
execute if score duration hideandseek_internal matches 10 run title @a title {"text": "Ten seconds left!", color: "red"}
execute if score duration hideandseek_internal matches 0 run title @a title {"text": "Time's up!", color: "red"}

title @a actionbar [{score: {objective: "hideandseek_internal", name: "duration"}}, {text: "s left"}]

# increment score if seeking
execute if data storage hideandseek:state seeking run scoreboard players add @a[scores={hideandseek_internal=1}] hideandseek 1

# schedule for 1s later
execute unless score duration hideandseek_internal matches 0 run schedule function hideandseek:countdown_wrapper 1s

$execute if score duration hideandseek_internal matches 0 run function $(stop_func)
