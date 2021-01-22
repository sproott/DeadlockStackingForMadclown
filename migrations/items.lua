local vanilla = {
    "wood",
    "copper-ore",
    "copper-plate",
    "iron-ore",
    "iron-plate",
    "coal",
    "stone",
    "stone-brick",
    "steel-plate",
    "copper-cable",
    "iron-gear-wheel",
    "iron-stick",
    "sulfur",
    "plastic-bar",
    "solid-fuel",
    "electronic-circuit",
    "advanced-circuit",
    "battery",
    "processing-unit",
    "uranium-235",
    "uranium-238",
    "uranium-ore",
    "stone-wall",
    "gate",
    "burner-inserter",
    "inserter",
    "long-handed-inserter",
    "fast-inserter",
    "filter-inserter",
    "stack-inserter",
    "stack-filter-inserter",
    "pipe",
    "pipe-to-ground",
    "transport-belt",
    "underground-belt",
    "splitter",
    "fast-underground-belt",
    "fast-transport-belt",
    "fast-splitter",
    "express-transport-belt",
    "express-underground-belt",
    "express-splitter",
    "landfill",
    "concrete",
    "hazard-concrete",
    "refined-concrete",
    "refined-hazard-concrete",
    "small-electric-pole",
    "medium-electric-pole",
    "big-electric-pole",
    "substation",
    "explosives",
    "rocket-control-unit",
    "low-density-structure",
    "rocket-fuel",
    "empty-barrel",
    "engine-unit",
    "electric-engine-unit",
    "flying-robot-frame",
    "boiler",
    "steam-engine",
    "heat-pipe",
    "heat-exchanger",
    "steam-turbine",
    "solar-panel",
    "accumulator",
    "stone-furnace",
    "steel-furnace",
    "electric-furnace",
    "assembling-machine-1",
    "assembling-machine-2",
    "assembling-machine-3",
    "beacon"
}

local madclowns = {
	"20%-uranium",
	"35%-uranium",
	"45%-uranium",
	"55%-uranium",
	"65%-uranium",
	"70%-uranium",
	"75%-uranium",
	"algae-orange",
	"algae-violet",
	"caesium-137",
	"catalysator-brown",
	"catalysator-green",
	"catalysator-orange",
	"chrome-ore",
	"circuit-board",
	"clowns-resource1",
	"clowns-resource2",
	"coal",
	"crude-oil",
	"crystal-dust",
	"gas-ammonia",
	"gas-carbon-dioxide",
	"gas-carbon-monoxide",
	"gas-chlorine",
	"gas-methanol",
	"gas-oxygen",
	"gold-ore",
	"hypernuclear-fuel",
	"ingot-aluminium",
	"ingot-copper",
	"ingot-iron",
	"ingot-magnesium",
	"ingot-manganese",
	"ingot-steel",
	"ingot-titanium",
	"ingot-zinc",
	"iron-ore",
	"iron-plate",
	"lead-plate",
	"liquid-dimethylmercury",
	"liquid-ferric-chloride-solution",
	"liquid-hydrofluoric-acid",
	"liquid-molten-aluminium",
	"liquid-molten-brass",
	"liquid-molten-iron",
	"liquid-molten-steel",
	"liquid-nitric-acid",
	"liquid-phosphoric-acid",
	"liquid-sulfuric-acid",
	"liquid-titanium-tetrachloride",
	"magnesium-ore",
	"manganese-ore",
	"module-circuit-board",
	"module-processor-board",
	"nuclear-fuel",
	"omniston",
	"osmium-ore",
	"pellet-titanium",
	"phosphorus-ore",
	"platinum-ore",
	"plutonium-239",
	"polonium-210",
	"powder-platinum",
	"protactinium-231",
	"radiothermal-fuel",
	"rutile-ore",
	"slag",
	"solid-fertilizer",
	"solid-limestone",
	"solid-oil-residual",
	"solid-salt",
	"solid-sodium",
	"solid-sodium-hydroxide",
	"solid-white-phosphorus",
	"sponge-titanium",
	"steam",
	"stone",
	"strontium-90",
	"superradiothermal-fuel",
	"thorium-232",
	"thorium-ore",
	"tin-ore",
	"turbonuclear-fuel",
	"ultraradiothermal-fuel",
	"uranium-235",
	"uranium-238",
	"uranium-ore",
	"used-up-thorium-fuel-cell",
	"used-up-uranium-fuel-cell",
	"water",
	"water-mineralized",
	"water-radioactive-waste",
	"water-red-waste",
	"water-saline",
}

for i = 1, 9, 1 do
  for _, ores in pairs({
    "clowns-ore" .. i,
    "clowns-ore" .. i .. "-crushed",
    "clowns-ore" .. i .. "-chunk",
    "clowns-ore" .. i .. "-crystal"
  }) do
    table.insert(madclowns, ores)
  end
end

for i = 11, 15, 1 do
  table.concat(madclowns, "clowns-ore" .. i)
end

local Items = {items = {}}

for _, item in pairs(vanilla) do
    Items.items[item] = {}
end

for _, item in pairs(madclowns) do
    Items.items[item] = {}
end

-- raw-fish
if Items.items["raw-fish"] then
    Items.items["raw-fish"].type = "capsule"
end

-- token-bio
if Items.items["token-bio"] then
    Items.items["token-bio"].type = "tool"
end

-- ammo
for _, item in pairs({"shotgun-shell", "piercing-shotgun-shell", "firearm-magazine", "piercing-rounds-magazine", "uranium-rounds-magazine", "land-mine"}) do
    Items.items[item] = {type = "ammo"}
end

-- capsule
for _, item in pairs({"grenade", "cluster-grenade", "slowdown-capsule", "poison-capsule"}) do
    Items.items[item] = {type = "capsule"}
end

-- rail-planner
Items.items["rail"] = {type = "rail-planner"}

-- module
for _, item in pairs({"speed-module", "speed-module-2", "speed-module-3", "effectivity-module", "effectivity-module-2", "effectivity-module-3", "productivity-module", "productivity-module-2", "productivity-module-3"}) do
    Items.items[item] = {type = "module"}
end

-- tool
for _, item in pairs({"automation-science-pack", "logistic-science-pack", "military-science-pack", "chemical-science-pack", "production-science-pack", "utility-science-pack", "space-science-pack"}) do
    Items.items[item] = {type = "tool"}
end

return Items
