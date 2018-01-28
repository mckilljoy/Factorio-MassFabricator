data:extend(
{
  {
    type = "technology",
    name = "mass-fabrication",
	icon = "__MassFabrication__/graphics/icons/mass-fabricator-technology.png",
    icon_size = 128,
    prerequisites =
    {
      "nuclear-power",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mass-fabricator"
      },
      {
        type = "unlock-recipe",
        recipe = "mass-disintegrator"
      },
      {
        type = "unlock-recipe",
        recipe = "mass-annihilator"
      },
    },
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "a-f-c",
  }
}
)