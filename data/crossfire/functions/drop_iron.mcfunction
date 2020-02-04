# Kill the crate
kill @s
particle minecraft:explosion_emitter ~ ~ ~
playsound minecraft:entity.generic.explode block @a ~ ~ ~

# Inform about powerup drop
tellraw @a ["",{"text":"The ","color":"white"},{"text":"unknown","obfuscated":true,"color":"gold","hoverEvent":{"action":"show_text","value":["",{"text":"This does something unknown.","obfuscated":true,"color":"white"}]}},{"text":" power-up has been dropped by a crate!","color":"white"}]