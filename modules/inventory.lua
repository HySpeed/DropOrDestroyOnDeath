-- Functions related to Inventory

local Utils = require( "common.utils" )

local Inventory = {}

-- =============================================================================

function Inventory.destroy( player )
  player.get_inventory( defines.inventory.character_main ).clear()
  player.get_inventory( defines.inventory.character_trash ).clear()  
end

-- -----------------------------------------------------------------------------

function Inventory.drop( player )
  Utils.spillStack( player, player.get_inventory( defines.inventory.character_main ) )
  Utils.spillStack( player, player.get_inventory( defines.inventory.character_trash ) )
end

-- =============================================================================

return Inventory
