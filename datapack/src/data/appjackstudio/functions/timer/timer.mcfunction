scoreboard players remove seconds timer 1

# Update Number
scoreboard players operation @a xp.input = seconds timer
execute as @a run function xp:levels
execute as @a run function xp:instant

# Update Bar
scoreboard players operation percent timer = seconds timer
scoreboard players operation percent timer *= maxpercent timer
scoreboard players operation percent timer /= max timer

scoreboard players operation @a xp.input = percent timer
execute as @a run function xp:bar
execute as @a run function xp:instant

execute if score seconds timer > minseconds timer run schedule function appjackstudio:timer/timer 1s
execute if score seconds timer = minseconds timer run title @a times 20 100 20
execute if score seconds timer = minseconds timer run title @a title "Time's up!"
