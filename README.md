# Hide and Seek
Simple datapack for a hide and seek game. 

Does the following:
- Set gamemode to adventure
- Set difficulty to peaceful
- Freeze time and weather
- Turn off locator bar
- Teleport to a specified coordinate before every round (configure in reset.mcfunction)
- Tag a player as found by punching them

All changes will be undone when running `function hideandseek:deinit` (reset to defaults, modify deinit.mcfunction if the values are incorrect)

## Functions

- `/function hideandseek:init` to initialize hideandseek.
- `/function hideandseek:start` to start a round of hideandseek.
- `/function hideandseek:reset` to abort and reset a round of hideandseek
- `/function hideandseek:deinit` to undo all hideandseek changes.

All other functions are for internal use only.

## Configuring

Configure:

- `reset.mcfunction` to add the coordinates of the staring location
- `deinit.mcfunction` for the default values once everything is reset (no need if you're not planning to go back to survival)
- `start.mcfunction` to add more hiders if needed

<!--This project was mainly for my own event, and a test to code in minecraft functions without resorting to making a mod-->
<!--I would say I've somewhat succeeded-->