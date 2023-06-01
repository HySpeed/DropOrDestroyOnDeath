-- Player functions
---@class ddd.player

local Constants = require( "common.constants" )
local Utils = require( "common.utils" )
local Armor = require( "modules.armor" )
local Inventory = require( "modules.inventory" )
local Weapons   = require( "modules.weapons" )

local Player = {}

-- =============================================================================

-------------------------------------------------------------------------------

function Player.OnPrePlayerDied( event )
  -- game.print( "~ player died: " .. game.players[event.player_index].name )
  game.print { "", {"ddd.text_mod_name"}, " ", {"mod-setting-name.ddd_weapons"},   ": ", global.settings.startup.ddd_weapons.value }
  game.print { "", {"ddd.text_mod_name"}, " ", {"mod-setting-name.ddd_inventory"}, ": ", global.settings.startup.ddd_inventory.value }
  game.print { "", {"ddd.text_mod_name"}, " ", {"mod-setting-name.ddd_armor"},     ": ", global.settings.startup.ddd_armor.value }

  if not event.player_index then return end
  local player = game.players[event.player_index]

  if global.settings.startup.ddd_weapons.value == Constants.DESTROY then
    Weapons.destroy( player )
  else
    Weapons.drop( player )
  end

  if global.settings.startup.ddd_inventory.value == Constants.DESTROY then
    Inventory.destroy( player )
  else
    Inventory.drop( player )
  end

  if global.settings.startup.ddd_armor.value == Constants.DESTROY then
    Armor.destroy( player )
  else
    Armor.drop( player )
  end

end

-- =============================================================================

return Player
