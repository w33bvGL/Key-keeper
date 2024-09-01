scoreboard objectives add cratemoney dummy
scoreboard objectives add super dummy
scoreboard players random @s super 1 3
execute @s[scores={super=1}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§f§l"},{"selector":"*"},{"text":"§r§b Won §a$500,000§r"}]}
execute @s[scores={super=1}] ~ ~ ~ scoreboard players add @s cratemoney 500000
execute @s[scores={super=2}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§f§l"},{"selector":"*"},{"text":"§r§b Won §a$1,000,000§r"}]}
execute @s[scores={super=2}] ~ ~ ~ scoreboard players add @s cratemoney 1000000
execute @s[scores={super=3}] ~ ~ ~ tellraw @a[r=15] {"rawtext":[{"text":"§f§l"},{"selector":"*"},{"text":"§r§b Won §a$1,500,000§r"}]}
execute @s[scores={super=3}] ~ ~ ~ scoreboard players add @s cratemoney 1500000
scoreboard players reset @s super
clear @s crate:super 0 1