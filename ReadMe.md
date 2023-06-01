# Drop Or Destroy On Death

A Factorio mod that changes the "On Character Death" results.  At init, the player chooses to have Weapons, Inventory, and Armor either Dropped or Destroyed on death.

## Drop
When set to '**Drop**' mode, inventory, weapons, and armor are dropped on the ground where the character dies.  There is no time limit for them to be picked up.  This change makes the game a bit easier as it "bypasses" the 15 minute limit to recover the items from the character's corpse.

## Destroy
When set to '**Destroy**' mode, inventory, weapons, and armor are destroyed and cannot be recovered.  This change makes the game a bit harder by requiring items be re-created.


### Thanks
- thanks to Loren1350 for the drop coding
- thanks to Aoedin for the graphics


### Testing Commands
/c local player = game.player
  player.insert{name="rocket-launcher", count = 1}
  player.insert{name="atomic-bomb", count = 10}

#### Armor & Equipment
/c local player = game.player
  player.insert{name="power-armor-mk2", count = 1}
  local armor = player.get_inventory(5)[1].grid
    armor.put({name = "fusion-reactor-equipment"})
    armor.put({name = "fusion-reactor-equipment"})
    armor.put({name = "exoskeleton-equipment"})
    armor.put({name = "exoskeleton-equipment"})
    armor.put({name = "exoskeleton-equipment"})
    armor.put({name = "exoskeleton-equipment"})
    armor.put({name = "exoskeleton-equipment"})
    armor.put({name = "exoskeleton-equipment"})
    armor.put({name = "personal-roboport-mk2-equipment"})
    armor.put({name = "personal-roboport-mk2-equipment"})
    armor.put({name = "battery-mk2-equipment"})
    armor.put({name = "battery-mk2-equipment"})
    armor.put({name = "battery-mk2-equipment"})
    armor.put({name = "battery-mk2-equipment"})
  player.insert{name="construction-robot", count = 50}
  player.insert{name="landfill", count = 200}
  player.insert{name="grenade", count = 100}
  player.insert{name="rocket-launcher", count = 1}
  player.insert{name="rocket", count = 200}
  player.insert{name="atomic-bomb", count = 10}
