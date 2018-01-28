data:extend(
{
  {
    type = "fluid",
    name = "subatomic-plasma",
	auto_barrel = false,
	fuel_value = "1MJ",
	hidden = true,
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r=0.8, g=0.0, b=0.0},
    flow_color = {r=1.0, g=0.0, b=0.0},
    max_temperature = 100,
    icon = "__MassFabrication__/graphics/icons/subatomic-plasma.png",
	icon_size = 32,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-b[subatomic-plasma]"
  },
}
)