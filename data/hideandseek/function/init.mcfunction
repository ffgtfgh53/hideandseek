gamemode adventure @a

scoreboard objectives remove hideandseek
scoreboard objectives add hideandseek dummy
scoreboard objectives setdisplay sidebar hideandseek
scoreboard players set @a hideandseek 0

# hideandseek_internal used to track who is hider
scoreboard objectives remove hideandseek_internal
scoreboard objectives add hideandseek_internal dummy

gamerule locator_bar false

time set day
weather clear
gamerule advance_time false
gamerule advance_weather false
difficulty peaceful

function hideandseek:reset

title @a actionbar "Welcome to Hide and Seek!"

