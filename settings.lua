---Setup the mod configuration values (startup)
local Constants = require( "common.constants" )

-- choices:
--- drop or destroy
-- weapons & ammo
-- inventory
-- equipment

local choices = { Constants.DESTROY, Constants.DROP }

-- =============================================================================

-- startup settings
data:extend {
  {
    name = "ddd_weapons",
    setting_type = "startup",
    type = "string-setting",
    default_value = Constants.DESTROY,
    allowed_values = choices,
    order = "f-weapons"
  },
  {
    name = "ddd_inventory",
    setting_type = "startup",
    type = "string-setting",
    default_value = Constants.DROP,
    allowed_values = choices,
    order = "l-inventory"
  },
  {
    name = "ddd_armor",
    setting_type = "startup",
    type = "string-setting",
    default_value = Constants.DESTROY,
    allowed_values = choices,
    order = "t-armor"
  }
}