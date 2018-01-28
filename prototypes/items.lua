local mass_fabricator = table.deepcopy(data.raw["item"]["centrifuge"])

mass_fabricator.name = "mass-fabricator"
mass_fabricator.place_result = "mass-fabricator"
mass_fabricator.icon = "__MassFabrication__/graphics/icons/centrifuge-blue.png"

data:extend({mass_fabricator})


local mass_disintegrator = table.deepcopy(data.raw["item"]["centrifuge"])

mass_disintegrator.name = "mass-disintegrator"
mass_disintegrator.place_result = "mass-disintegrator"
mass_disintegrator.icon = "__MassFabrication__/graphics/icons/centrifuge-red.png"

data:extend({mass_disintegrator})


local mass_annihilator = table.deepcopy(data.raw["item"]["nuclear-reactor"])

mass_annihilator.name = "mass-annihilator"
mass_annihilator.place_result = "mass-annihilator"
mass_annihilator.icon = "__MassFabrication__/graphics/icons/mass-annihilator.png"

data:extend({mass_annihilator})