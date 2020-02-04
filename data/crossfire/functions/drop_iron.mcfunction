# Kill the crate
kill @s
particle minecraft:explosion_emitter ~ ~ ~

# Inform about powerup drop
tellraw @a ["",{"text":"The ","color":"gray"},{"text":"unknown","obfuscated":true,"color":"dark_gray","hoverEvent":{"action":"show_text","value":["",{"text":"This does something unknown.","obfuscated":true,"color":"gray"}]}},{"text":" power-up has been dropped by a crate!","color":"gray"}]