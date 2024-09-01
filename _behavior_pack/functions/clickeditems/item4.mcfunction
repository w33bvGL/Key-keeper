scoreboard objectives add cratemoney dummy
scoreboard objectives add epic dummy
scoreboard players random @s epic 1 3
execute @s[scores={epic=1}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§5"},{"selector":"*"},{"text":"§r§b Won §a$5,000§r"}]}
execute @s[scores={epic=1}] ~ ~ ~ scoreboard players add @s cratemoney 5000
execute @s[scores={epic=2}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§5"},{"selector":"*"},{"text":"§r§b Won §a$10,000§r"}]}
execute @s[scores={epic=2}] ~ ~ ~ scoreboard players add @s cratemoney 10000
execute @s[scores={epic=3}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§5"},{"selector":"*"},{"text":"§r§b Won §a$15,000§r"}]}
execute @s[scores={epic=3}] ~ ~ ~ scoreboard players add @s cratemoney 15000
scoreboard players reset @s epic
clear @s crate:epic 0 1