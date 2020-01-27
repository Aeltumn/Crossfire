function crossfire:remove_kill_tag
tag @s remove waterdead
tag @s remove spectating
tag @s remove died

# Remove from currently spectated entity
spectate @s
function crossfire:init_player