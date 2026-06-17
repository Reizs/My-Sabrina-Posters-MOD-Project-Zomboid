require 'Items/SuburbsDistributions'
require 'Items/ProceduralDistributions'
require 'Items/Distributions'

MySabrina = MySabrina or {};
function MySabrina:addDistributions(itemsAndChances, locations)
    for item, chance in pairs(itemsAndChances)
    do
        if chance > 0 then
            for i, location in ipairs(locations)
            do
                if ProceduralDistributions.list[location] and ProceduralDistributions.list[location].items
                then
                    table.insert(ProceduralDistributions.list[location].items, item);
                    table.insert(ProceduralDistributions.list[location].items, chance);
                end
            end
        end
    end
end
MySabrina:addDistributions({
    ["MySabrina.MySabrinaP1"] = 0.2,
    ["MySabrina.MySabrinaP2"] = 0.2,
    ["MySabrina.MySabrinaP3"] = 0.2,
    ["MySabrina.MySabrinaP4"] = 0.2,
    ["MySabrina.MySabrinaP5"] = 0.2,
    ["MySabrina.MySabrinaP6"] = 0.2,
    ["MySabrina.MySabrinaP7"] = 0.2,
    ["MySabrina.MySabrinaP8"] = 0.2,
    ["MySabrina.MySabrinaP9"] = 0.2,
    ["MySabrina.MySabrinaP10"] = 0.2,
    ["MySabrina.MySabrinaP11"] = 0.2,
    ["MySabrina.MySabrinaP12"] = 0.2,
    ["MySabrina.MySabrinaP13"] = 0.2,
    ["MySabrina.MySabrinaP14"] = 0.2,
    ["MySabrina.MySabrinaP15"] = 0.2,
    ["MySabrina.MySabrinaP16"] = 0.2,
}, {
    "WardrobeGeneric",
    "WardrobeClassy",
    "WardrobeRedneck",
    "BedroomGeneric",
    "StoreShelfCombo",
    "HolidayStuff",
    "Hobbies",
    "VacationStuff",
    "FactoryLockers",
    "CrateRandomJunk",
});
