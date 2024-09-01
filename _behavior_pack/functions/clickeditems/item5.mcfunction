scoreboard objectives add cratemoney dummy
scoreboard objectives add legendary dummy
scoreboard players random @s legendary 1 3
execute @s[scores={legendary=1}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§6"},{"selector":"*"},{"text":"§r§b Won §a$50,000§r"}]}
execute @s[scores={legendary=1}] ~ ~ ~ scoreboard players add @s cratemoney 50000
execute @s[scores={legendary=2}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§6"},{"selector":"*"},{"text":"§r§b Won §a$100,000§r"}]}
execute @s[scores={legendary=2}] ~ ~ ~ scoreboard players add @s cratemoney 100000
execute @s[scores={legendary=3}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§6"},{"selector":"*"},{"text":"§r§b Won §a$150,000§r"}]}
execute @s[scores={legendary=3}] ~ ~ ~ scoreboard players add @s cratemoney 150000
scoreboard players reset @s legendary
clear @s crate:legendary 0 1