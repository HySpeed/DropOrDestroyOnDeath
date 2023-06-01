---Utility functions called by other functions
---@class ddd.Utils

local floor, max, ceil, sqrt = math.floor, math.max, math.ceil, math.sqrt

local Utils = {}

-- =============================================================================

function Utils.spillStack( player, inventory )
  for index = 1, #inventory do
    player.surface.spill_item_stack( player.position, inventory[index], false )
  end
  inventory.clear()
end

-- -----------------------------------------------------------------------------

---@param name string The startup setting to get.
function Utils.getStartupSetting( name )
  local setting = settings.startup[name]
  return setting and setting.value
end

-------------------------------------------------------------------------------

-- Gets all startup settings and preserves them in a local table so they are not read dynamically after init.
function Utils.saveStartupSettings()
  global.settings = { startup = {} }
  global.settings.startup.ddd_weapons   = settings.startup.ddd_weapons
  global.settings.startup.ddd_inventory = settings.startup.ddd_inventory
  global.settings.startup.ddd_armor     = settings.startup.ddd_armor
end

-------------------------------------------------------------------------------

-- Calculates the points along a spiral, given the index position (which increments externally)
function Utils.spiral( index )
	local diameter = ceil( (sqrt( index ) - 1) / 2 )
	local radius = 2 * diameter + 1
	local depth = radius ^ 2
	radius = radius - 1
	if index >= depth - radius then
		return {diameter - (depth - index), -diameter}
	else
		depth = depth - radius
	end
	if index >= depth - radius then
		return {-diameter, -diameter + ( depth - index )}
	else
		depth = depth - radius
	end
	if index >= depth - radius then
		return {-diameter + ( depth - index ), diameter}
	else
		return {diameter, diameter - ( depth - index - radius )}
	end
end

-------------------------------------------------------------------------------

function Utils.skipIntro()
  -- In "sandbox" mode, freeplay is not available
  if remote.interfaces["freeplay"] then
    -- removes crashsite and cutscene start
    remote.call("freeplay", "set_disable_crashsite", true)
    -- Skips popup message to press tab to start playing
    remote.call("freeplay", "set_skip_intro", true)
  end
end

-- =============================================================================

return Utils
