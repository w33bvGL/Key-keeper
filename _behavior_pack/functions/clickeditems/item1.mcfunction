scoreboard objectives add cratemoney dummy
scoreboard objectives add common dummy
scoreboard players random @s common 1 3
execute @s[scores={common=1}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§7"},{"selector":"*"},{"text":"§r§b Won §a$5§r"}]}
execute @s[scores={common=1}] ~ ~ ~ scoreboard players add @s cratemoney 5
execute @s[scores={common=2}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§7"},{"selector":"*"},{"text":"§r§b Won §a$10§r"}]}
execute @s[scores={common=2}] ~ ~ ~ scoreboard players add @s cratemoney 10
execute @s[scores={common=3}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§7"},{"selector":"*"},{"text":"§r§b Won §a$15§r"}]}
execute @s[scores={common=3}] ~ ~ ~ scoreboard players add @s cratemoney 15
scoreboard players reset @s common
clear @s crate:common 0 1

