scoreboard objectives add cratemoney dummy
scoreboard objectives add uncommon dummy
scoreboard players random @s uncommon 1 3
execute @s[scores={uncommon=1}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§2"},{"selector":"*"},{"text":"§r§b Won §a$50§r"}]}
execute @s[scores={uncommon=1}] ~ ~ ~ scoreboard players add @s cratemoney 50
execute @s[scores={uncommon=2}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§2"},{"selector":"*"},{"text":"§r§b Won §a$100§r"}]}
execute @s[scores={uncommon=2}] ~ ~ ~ scoreboard players add @s cratemoney 100
execute @s[scores={uncommon=3}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§2"},{"selector":"*"},{"text":"§r§b Won §a$150§r"}]}
execute @s[scores={uncommon=3}] ~ ~ ~ scoreboard players add @s cratemoney 150
scoreboard players reset @s uncommon
clear @s crate:uncommon 0 1