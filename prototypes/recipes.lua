local mass_fabricator = table.deepcopy(data.raw["recipe"]["centrifuge"])

mass_fabricator.name = "mass-fabricator"
mass_fabricator.result = "mass-fabricator"

data:extend({mass_fabricator})

local mass_disintegrator = table.deepcopy(data.raw["recipe"]["centrifuge"])

mass_disintegrator.name = "mass-disintegrator"
mass_disintegrator.result = "mass-disintegrator"

data:extend({mass_disintegrator})

local mass_annihilator = table.deepcopy(data.raw["recipe"]["nuclear-reactor"])

mass_annihilator.name = "mass-annihilator"
mass_annihilator.result = "mass-annihilator"

data:extend({mass_annihilator})