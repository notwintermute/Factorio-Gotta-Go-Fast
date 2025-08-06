-- I took this code directly from the Free Buildings mod by Taurunti (https://mods.factorio.com/mod/FreeBuildings)
BUILDING_SPEED_MULT = settings.startup["Gotta-Go-Fast-building-speed-mult"].value
INSERTER_ROTATION_SPEED_MULT = settings.startup["Gotta-Go-Fast-inserter-rotation-speed-mult"].value
LOGISTIC_BOT_SPEED_MULT = settings.startup["Gotta-Go-Fast-logistic-bot-speed-mult"].value
CONSTRUCTION_BOT_SPEED_MULT = settings.startup["Gotta-Go-Fast-construction-bot-speed-mult"].value
--INSERTER_HAND_SIZE_MULT = settings.startup["inserter-hand-size-mult"].value

-- I took this code directly from the Machine Speed Multiplier mod by Jobus (https://mods.factorio.com/mod/MachineSpeedMultiplier)
for _, prot in pairs(data.raw['assembling-machine']) do
    prot.crafting_speed = prot.crafting_speed*BUILDING_SPEED_MULT
end

for _, prot in pairs(data.raw['furnace']) do
    prot.crafting_speed = prot.crafting_speed*BUILDING_SPEED_MULT
end

for _, prot in pairs(data.raw['rocket-silo']) do
    prot.crafting_speed = prot.crafting_speed*BUILDING_SPEED_MULT
end

for _, prot in pairs(data.raw['lab']) do
    prot.researching_speed = prot.researching_speed*BUILDING_SPEED_MULT
end

for _, prot in pairs(data.raw['mining-drill']) do
    prot.mining_speed = prot.mining_speed*BUILDING_SPEED_MULT
end

for _, prot in pairs(data.raw['inserter']) do
    local multiplier = INSERTER_ROTATION_SPEED_MULT
    prot.rotation_speed = prot.rotation_speed*multiplier
    prot.extension_speed = prot.extension_speed*multiplier
end

-- I took this code directly from the Configurable Bot Speed mod by Lappro (https://mods.factorio.com/mod/configurable-bot-speed)
for k,robot in pairs(data.raw["logistic-robot"]) do
	robot.speed = robot.speed * LOGISTIC_BOT_SPEED_MULT
end
for k,robot in pairs(data.raw["construction-robot"]) do
	robot.speed = robot.speed * CONSTRUCTION_BOT_SPEED_MULT
end
