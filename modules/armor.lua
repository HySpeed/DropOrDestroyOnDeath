-- Functions related to Armor

local Utils = require( "common.utils" )

local Armor = {}

-- =============================================================================

local function dump_equipment_action( player )
  local character = player.character
  local grid = character and character.grid
  if not grid then return 0 end

  local grid_equipment = grid.take_all()
  if grid_equipment then
    for equipment, count in pairs( grid_equipment ) do
      local name = game.equipment_prototypes[equipment].take_result.name
      player.surface.spill_item_stack( player.position, {name = name, count = count}, false )
    end
  end

  return 
end

-- =============================================================================

function Armor.destroy( player )
  player.get_inventory( defines.inventory.character_armor ).clear()
end

-- -----------------------------------------------------------------------------

function Armor.drop( player )
  dump_equipment_action( player )
  Utils.spillStack( player, player.get_inventory( defines.inventory.character_armor ) )
end

-- =============================================================================

return Armor
