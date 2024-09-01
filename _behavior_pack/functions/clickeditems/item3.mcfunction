scoreboard objectives add cratemoney dummy
scoreboard objectives add rare dummy
scoreboard players random @s rare 1 3
execute @s[scores={rare=1}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§1"},{"selector":"*"},{"text":"§r§b Won §a$500§r"}]}
execute @s[scores={rare=1}] ~ ~ ~ scoreboard players add @s cratemoney 500
execute @s[scores={rare=2}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§1"},{"selector":"*"},{"text":"§r§b Won §a$1,000§r"}]}
execute @s[scores={rare=2}] ~ ~ ~ scoreboard players add @s cratemoney 1000
execute @s[scores={rare=3}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§1"},{"selector":"*"},{"text":"§r§b Won §a$1,500§r"}]}
execute @s[scores={rare=3}] ~ ~ ~ scoreboard players add @s cratemoney 1500
scoreboard players reset @s rare
clear @s crate:rare 0 1