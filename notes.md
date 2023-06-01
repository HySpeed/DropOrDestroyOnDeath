notes

-- checks:
-- game.player.connected
-- game.player.character
-- game.player.character.health (0 == died)
-- game.players[1].controller_type (0 == ghost: waiting to respawn, 1 == character)

-- character does not have inventory when dead
-- drops one time from stack on ground
game.players[1].surface.spill_item_stack({x=0,y=0}, game.players[1].character.get_main_inventory()[1])
-- drops stack of items of that name on ground:
game.players[1].surface.spill_item_stack({x=0,y=0}, game.players[1].character.get_main_inventory()[1].name)

-- drops copy of stack onto ground:
game.players[1].surface.spill_item_stack({x=0,y=0}, {name=game.players[1].character.get_main_inventory()[1].name, count=game.players[1].character.get_main_inventory()[1].count})
-- proper sequence is
--- get item & quantity
--- remove from inventory
--- dump on ground

