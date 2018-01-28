require("valid-items")

for item_name,energy in pairs(valid_items) do
  local fabrication_recipe = 
  {
    category = "mass-fabrication",
    hidden = true,
    energy_required = energy,
    ingredients = {{item_name, 1}},
    name = item_name .. "-fabrication",
    results = {{item_name, 2}},
	main_product = item_name,
    type = "recipe"
  }
  data:extend({fabrication_recipe})
  
  local disintegration_recipe = 
  {
    category = "mass-disintegration",
    hidden = true,
    energy_required = energy,
    ingredients = {{item_name, 1}},
    name = item_name .. "-disintegration",
    results = {{type = "fluid", name = "subatomic-plasma", amount = 1000}},
    main_product = "subatomic-plasma",
    type = "recipe"
  }
  data:extend({disintegration_recipe})
end
