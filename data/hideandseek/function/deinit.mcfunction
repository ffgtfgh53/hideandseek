# call this to reset the world
# DOES NOT DELETE SCOREBOARD!

function hideandseek:reset
scoreboard objectives setdisplay sidebar

gamemode survival @a

# change default settings here!
difficulty easy
gamerule advance_time true
gamerule advance_weather true
gamerule locator_bar true

title @a title {"text": "Hide and seek is over", "color": "red"}


