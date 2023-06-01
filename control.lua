-- Mod to effect Armor, Inventory, and Weapons on Character Death


local Utils = require( "common.utils" )
local Player = require( "modules.player" )

-- =============================================================================


script.on_init(function()
  global = {}
  Utils.saveStartupSettings()
  -- DEV MODE ONLY
  Utils.skipIntro()
end)

script.on_configuration_changed(function()
  Utils.saveStartupSettings()
end)

script.on_event( defines.events.on_pre_player_died, function( event )
  Player.OnPrePlayerDied( event )
end)
