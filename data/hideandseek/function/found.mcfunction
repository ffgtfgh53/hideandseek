# This function is called by the advancement that tracks when a player is hit by another player.

execute if score duration hideandseek_internal matches 1..2147483647 run function hideandseek:mark_found
