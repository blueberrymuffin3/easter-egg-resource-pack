# Ensure all scoreboards are initialized
scoreboard players add @a eggs_picked_up 0
scoreboard players add @a eggs_dropped 0
scoreboard players add @a eggs_total 0
scoreboard players add @s eggs_total_disp 0

# Calculate total score
execute as @a run scoreboard players operation @s eggs_total = @s eggs_picked_up
execute as @a run scoreboard players operation @s eggs_total -= @s eggs_dropped
execute as @a run scoreboard players operation @s eggs_total_disp = @s eggs_total
