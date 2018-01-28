local centrifuge = data.raw["assembling-machine"]["centrifuge"]
local reactor = data.raw["reactor"]["nuclear-reactor"]
local mass_fabricator = table.deepcopy(data.raw["furnace"]["electric-furnace"])

mass_fabricator.name = "mass-fabricator"
mass_fabricator.icon = "__MassFabrication__/graphics/icons/centrifuge-blue.png"
mass_fabricator.crafting_categories = {"mass-fabrication"}
mass_fabricator.minable.result = "mass-fabricator"
mass_fabricator.crafting_speed = 1
mass_fabricator.energy_usage = "10MW"
mass_fabricator.allowed_effects = nil
mass_fabricator.module_specification = nil
mass_fabricator.energy_source.usage_priority = "terciary"

mass_fabricator.idle_animation = table.deepcopy(centrifuge.idle_animation)
mass_fabricator.idle_animation.layers[1].filename = "__MassFabrication__/graphics/entities/centrifuge-C-blue.png"
mass_fabricator.idle_animation.layers[1].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-C-blue.png"

mass_fabricator.idle_animation.layers[3].filename = "__MassFabrication__/graphics/entities/centrifuge-B-blue.png"
mass_fabricator.idle_animation.layers[3].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-B-blue.png"

mass_fabricator.idle_animation.layers[5].filename = "__MassFabrication__/graphics/entities/centrifuge-A-blue.png"
mass_fabricator.idle_animation.layers[5].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-A-blue.png"

mass_fabricator.always_draw_idle_animation = true

mass_fabricator.animation = table.deepcopy(centrifuge.animation)
mass_fabricator.animation.layers[1].filename = "__MassFabrication__/graphics/entities/centrifuge-C-light-blue.png"
mass_fabricator.animation.layers[1].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-C-light-blue.png"
mass_fabricator.animation.layers[2].filename = "__MassFabrication__/graphics/entities/centrifuge-B-light-blue.png"
mass_fabricator.animation.layers[2].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-B-light-blue.png"
mass_fabricator.animation.layers[3].filename = "__MassFabrication__/graphics/entities/centrifuge-A-light-blue.png"
mass_fabricator.animation.layers[3].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-A-light-blue.png"

mass_fabricator.working_visualisations = table.deepcopy(centrifuge.working_visualisations)
mass_fabricator.working_visualisations[1].light.color = {r=0,g=0,b=1}

data:extend({mass_fabricator})


local mass_disintegrator = table.deepcopy(mass_fabricator)

mass_disintegrator.name = "mass-disintegrator"
mass_disintegrator.icon = "__MassFabrication__/graphics/icons/centrifuge-red.png"
mass_disintegrator.crafting_categories = {"mass-disintegration"}
mass_disintegrator.minable.result = "mass-disintegrator"
mass_disintegrator.crafting_speed = 1
mass_disintegrator.energy_usage = "2MW"
mass_disintegrator.allowed_effects = nil
mass_disintegrator.module_specification = nil
mass_disintegrator.energy_source.usage_priority = "secondary-input"
mass_disintegrator.result_inventory_size = 0

mass_disintegrator.idle_animation.layers[1].filename = "__MassFabrication__/graphics/entities/centrifuge-C-red.png"
mass_disintegrator.idle_animation.layers[1].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-C-red.png"

mass_disintegrator.idle_animation.layers[3].filename = "__MassFabrication__/graphics/entities/centrifuge-B-red.png"
mass_disintegrator.idle_animation.layers[3].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-B-red.png"

mass_disintegrator.idle_animation.layers[5].filename = "__MassFabrication__/graphics/entities/centrifuge-A-red.png"
mass_disintegrator.idle_animation.layers[5].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-A-red.png"

mass_disintegrator.always_draw_idle_animation = true

mass_disintegrator.animation.layers[1].filename = "__MassFabrication__/graphics/entities/centrifuge-C-light-red.png"
mass_disintegrator.animation.layers[1].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-C-light-red.png"
mass_disintegrator.animation.layers[2].filename = "__MassFabrication__/graphics/entities/centrifuge-B-light-red.png"
mass_disintegrator.animation.layers[2].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-B-light-red.png"
mass_disintegrator.animation.layers[3].filename = "__MassFabrication__/graphics/entities/centrifuge-A-light-red.png"
mass_disintegrator.animation.layers[3].hr_version.filename = "__MassFabrication__/graphics/entities/hr-centrifuge-A-light-red.png"

mass_disintegrator.working_visualisations[1].light.color = {r=1,g=0,b=0}

-- remove the top pipe cover
mass_disintegrator.fluid_boxes = {table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[2])}
mass_disintegrator.fluid_boxes[1].filter = "subatomic-plasma"
mass_disintegrator.fluid_boxes[1].base_area = 10
mass_disintegrator.fluid_boxes[1].pipe_picture.north.width = 1
mass_disintegrator.fluid_boxes[1].pipe_picture.north.height = 1
mass_disintegrator.fluid_boxes[1].pipe_picture.north.filename = "__MassFabrication__/graphics/entities/invisible-pixel.png"
mass_disintegrator.fluid_boxes[1].pipe_picture.north.hr_version.width = 1
mass_disintegrator.fluid_boxes[1].pipe_picture.north.hr_version.height = 1
mass_disintegrator.fluid_boxes[1].pipe_picture.north.hr_version.filename = "__MassFabrication__/graphics/entities/invisible-pixel.png"

mass_disintegrator.fluid_boxes[1].pipe_covers.north.layers[1].width = 1
mass_disintegrator.fluid_boxes[1].pipe_covers.north.layers[1].height = 1
mass_disintegrator.fluid_boxes[1].pipe_covers.north.layers[1].filename = "__MassFabrication__/graphics/entities/invisible-pixel.png"
mass_disintegrator.fluid_boxes[1].pipe_covers.north.layers[1].hr_version.width = 1
mass_disintegrator.fluid_boxes[1].pipe_covers.north.layers[1].hr_version.height = 1
mass_disintegrator.fluid_boxes[1].pipe_covers.north.layers[1].hr_version.filename = "__MassFabrication__/graphics/entities/invisible-pixel.png"
mass_disintegrator.fluid_boxes[1].pipe_covers.north.layers = {table.deepcopy(mass_disintegrator.fluid_boxes[1].pipe_covers.north.layers[1])}

data:extend({mass_disintegrator})


local mass_annihilator = table.deepcopy(data.raw["generator"]["steam-turbine"])
mass_annihilator.name = "mass-annihilator"
mass_annihilator.icon = "__MassFabrication__/graphics/icons/mass-annihilator.png"
mass_annihilator.minable.result = "mass-annihilator"
mass_annihilator.fluid_box.filter = "subatomic-plasma"
mass_annihilator.fluid_box.minimum_temperature = 25
mass_annihilator.maximum_temperature = 25
mass_annihilator.effectivity = 1
mass_annihilator.burns_fluid = true
mass_annihilator.max_power_output = "60MW"
mass_annihilator.smoke[1].name = "annihilator-smoke"
mass_annihilator.selection_box = reactor.selection_box
mass_annihilator.collision_box = reactor.collision_box

mass_annihilator.fluid_box.pipe_connections =
{
  {position = {0,3.0},type = "input-output"},
  {position = {3.0,0},type = "input-output"},
  {position = {0,-3.0},type = "input-output"},
  {position = {-3.0,0},type = "input-output"},
}

mass_annihilator.fluid_box.pipe_picture = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_picture)
mass_annihilator.fluid_box.pipe_picture.east.shift = {3.0, 0}
mass_annihilator.fluid_box.pipe_picture.east.hr_version.shift = {3.0, 0}
mass_annihilator.fluid_box.pipe_picture.north.shift = {0, -3.0}
mass_annihilator.fluid_box.pipe_picture.north.hr_version.shift = {0, -3.0}
mass_annihilator.fluid_box.pipe_picture.south.shift = {0, 3.0}
mass_annihilator.fluid_box.pipe_picture.south.hr_version.shift = {0, 3.0}
mass_annihilator.fluid_box.pipe_picture.west.shift = {-3.0,0}
mass_annihilator.fluid_box.pipe_picture.west.hr_version.shift = {-3.0,0}


mass_annihilator.horizontal_animation = table.deepcopy(reactor.picture)

mass_annihilator.horizontal_animation.layers[1].frame_count = 1
mass_annihilator.horizontal_animation.layers[1].repeat_count = 8
mass_annihilator.horizontal_animation.layers[1].filename = "__MassFabrication__/graphics/entities/mass-annihilator.png"
mass_annihilator.horizontal_animation.layers[1].height = 172
mass_annihilator.horizontal_animation.layers[1].hr_version.frame_count = 1
mass_annihilator.horizontal_animation.layers[1].hr_version.repeat_count = 8
mass_annihilator.horizontal_animation.layers[1].hr_version.filename = "__MassFabrication__/graphics/entities/hr-mass-annihilator.png"
mass_annihilator.horizontal_animation.layers[1].hr_version.height = 344

mass_annihilator.horizontal_animation.layers[2].frame_count = 1
mass_annihilator.horizontal_animation.layers[2].repeat_count = 8
mass_annihilator.horizontal_animation.layers[2].hr_version.frame_count = 1
mass_annihilator.horizontal_animation.layers[2].hr_version.repeat_count = 8

mass_annihilator.vertical_animation = table.deepcopy(reactor.picture)

mass_annihilator.vertical_animation.layers[1].frame_count = 1
mass_annihilator.vertical_animation.layers[1].repeat_count = 8
mass_annihilator.vertical_animation.layers[1].filename = "__MassFabrication__/graphics/entities/mass-annihilator.png"
mass_annihilator.vertical_animation.layers[1].height = 172
mass_annihilator.vertical_animation.layers[1].hr_version.frame_count = 1
mass_annihilator.vertical_animation.layers[1].hr_version.repeat_count = 8
mass_annihilator.vertical_animation.layers[1].hr_version.filename = "__MassFabrication__/graphics/entities/hr-mass-annihilator.png"
mass_annihilator.vertical_animation.layers[1].hr_version.height = 344

mass_annihilator.vertical_animation.layers[2].frame_count = 1
mass_annihilator.vertical_animation.layers[2].repeat_count = 8
mass_annihilator.vertical_animation.layers[2].hr_version.frame_count = 1
mass_annihilator.vertical_animation.layers[2].hr_version.repeat_count = 8

data:extend({mass_annihilator})


local annihilator_smoke = table.deepcopy(data.raw["trivial-smoke"]["turbine-smoke"])
annihilator_smoke.name = "annihilator-smoke"
annihilator_smoke.color = {r=0.5,g=0,g=0,a=0.3}

data:extend({annihilator_smoke})

