-- Functions related to Weapons

local Utils = require( "common.utils" )

local Weapons = {}

-- =============================================================================

function Weapons.destroy( player )
  player.get_inventory( defines.inventory.character_guns ).clear()
  player.get_inventory( defines.inventory.character_ammo ).clear()
end

-- -----------------------------------------------------------------------------

function Weapons.drop( player )
  Utils.spillStack( player, player.get_inventory( defines.inventory.character_guns ) )
  Utils.spillStack( player, player.get_inventory( defines.inventory.character_ammo ) )
end

-- =============================================================================

return Weapons
