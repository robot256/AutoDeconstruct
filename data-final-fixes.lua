-- http://eswww.factorioforums.com/forum/viewtopic.php?f=91&t=14824&start=10#p101227
-- https://github.com/Kikkers/Factorio-Smarter-Circuitry/search?utf8=%E2%9C%93&q=data-dummy-

local tech = {
    type = "technology",
    icon = "__base__/graphics/technology/plastics.png",
    effects = {},
    unit =
    {
		count = 1,
		ingredients = {{"science-pack-1", 1}},
		time = 1
    },
    order = "z-z",
	enabled = false
}

for _,obj in pairs(data.raw["mining-drill"]) do
	local copy = util.table.deepcopy(tech)
	copy.name = "data-dummy-" .. obj.name
	copy.unit.time = obj.resource_searching_radius
	data.raw[tech.type][copy.name] = copy
end
