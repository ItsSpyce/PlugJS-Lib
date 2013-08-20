money_drop_rates =
  Creature:
    base: 1
    variance: 0
    chance: 50

  Monster:
    base: 6
    variance: 1
    chance: 90

  Creeper:
    base: 14
    variance: 2
    chance: 94

  EnderDragon:
    base: 100
    variance: 15
    chance: 100

  Enderman:
    base: 20
    variance: 0
    chance: 100

  LivingEntity:
    base: 100
    variance: 0
    chance: 1

# * Change this to what you want to appear on 
# * the money as your treasury name. If you change
# * this after money has started circulating, it will
# * invalidate all previously generated banknotes

treasuryName = "United Bank of Conji"

# Load the backend
require 'money_drops_lib.js'