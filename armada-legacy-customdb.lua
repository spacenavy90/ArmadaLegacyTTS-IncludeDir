-- https://github.com/Valadian/TabletopSimulatorIncludeDir/tree/master/TTS_armada/src/custom_db
-- How to use?
--
-- Option 1: Copy paste the contents of this file into the script on "ship db"
--     object. Then put your Ship/Squadron/Card definitions below.
--
-- Option 2: Use Atom with tabletopsimulator plugin
--     Checkout: https://github.com/Valadian/TabletopSimulatorIncludeDir
--     in your include dir.
--     Add the following line to the top of your object script:
--     #include TabletopSimulatorIncludeDir/TTS_armada/src/api/definitions
--
-- After performing the above, you should be able to load your definitions
--     database into the core Armada mod, and your ships/cards will work in
--     fleet spawner, upgrade list!
--
-- Definitions merge multiple tables to reduce duplication of common properties:
-- Examples of Card, Ship, Squadron definitions below.

ASSETS_ROOT = 'https://raw.githubusercontent.com/spacenavy90/ArmadaLegacyTTS-IncludeDir/master/assets/'

function onload()
	printToAll("Loading Armada Legacy collection",{1,0.5,0})
	
	REPUBLIC_SHIP = {
		back = "https://i.imgur.com/8s63Ngl.png",
        faction = "Republic"
    }
	Ship:new(SmallShip,REPUBLIC_SHIP, {
	name = "Arquitens-class Command Cruiser",
        front = ASSETS_ROOT.."ships/republic/rep_arq/reparq_command_card.png",
        mesh = ASSETS_ROOT.."ships/republic/rep_arq/mesh.obj",
        diffuse = ASSETS_ROOT.."ships/republic/rep_arq/reparq_command_texture.png",
        ruler = "http://paste.ee/r/FSip2", 
        maneuver = {{"II"},{"-","II"},{"-","-","II"}},
        defense_tokens = {DEF_EVADE, DEF_REDIRECT, DEF_CONTAIN, DEF_SALVO},
        shields = {2,2,2,2}, -- Front, left, right, rear
        cost = 60,
        aliases = {},
        command = 2
    })
    Ship:new(SmallShip,REPUBLIC_SHIP, {
        name = "Arquitens-class Light Cruiser",
        front = ASSETS_ROOT.."ships/republic/rep_arq/reparq_light_card.png",
        mesh = ASSETS_ROOT.."ships/republic/rep_arq/mesh.obj",
        diffuse = ASSETS_ROOT.."ships/republic/rep_arq/reparq_light_texture.png",
        ruler = "http://paste.ee/r/FSip2", 
        maneuver = {{"II"},{"-","II"},{"-","-","II"}},
        defense_tokens = {DEF_EVADE, DEF_REDIRECT, DEF_CONTAIN, DEF_SALVO},
        shields = {2,2,2,2}, -- Front, left, right, rear
        cost = 58,
        aliases = {},
        command = 2
        })

end

-- DO NOT MODIFY CODE BELOW THIS, OR MOD DB MAY NOT WORK!
function table.copy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
    copy = orig
    end
    return copy
end
function findObjectByName(name)
    for i,obj in ipairs(getAllObjects()) do
        if obj.getName()==name then return obj end
    end
end
DEF_BRACE = '79d121'
DEF_CONTAIN = '68abfc'
DEF_EVADE = 'c09d88'
DEF_REDIRECT = '36f595'
DEF_SCATTER = '895e91'
DEF_SALVO = '5028b2'
Ship = { collider = "", convex = true, material = 3, maneuver = {}, type = nil, -- 1,
    defense_tokens = {}, shields = {1,1,1,1,1,1}, cost = 0, name = "",
    front = "", back = "", aliases = {}, faction = "" }
DefaultShip = table.copy(Ship)
function Ship:new (...)
    o = table.copy(DefaultShip)
    if ... ~= nil then
        for i,tab in ipairs({...}) do
            for k, v in pairs(tab) do
                o[k] = v
            end
        end
    end
    setmetatable(o, Ship)
    Ship.__index = Ship
    spawner = findObjectByName("Armada Spawner")
    if spawner~=nil then
        spawner.call("API_CacheShip",o)
    end
    return o
end
SmallShip = { collider = "http://paste.ee/r/eDbf1" }
MediumShip = { collider = "http://paste.ee/r/6LYTT" }
LargeShip = { collider = "http://paste.ee/r/a7mfW" }
HugeShip = { collider = "http://paste.ee/r/ClCL3" }
Squadron = { collider = "http://paste.ee/r/ZKM7E", convex = false, type = nil, --1, --http://paste.ee/r/nAMCQ
    material = 1, health = 0, move = 0, defense_tokens = {}, cost = 0,
    name = "", front = "", back = "", aliases = {}, faction = "" }
DefaultSquad = table.copy(Squadron)
function Squadron:new (...)
    o = table.copy(DefaultSquad)
    if ... ~= nil then
        for i,tab in ipairs({...}) do
            for k, v in pairs(tab) do
                o[k] = v
            end
        end
    end
    setmetatable(o, Squadron)
    Squadron.__index = Squadron
    spawner = findObjectByName("Armada Spawner")
    if spawner~=nil then
        spawner.call("API_CacheShip",o)
    end
    return o
end
Card = { cost = 0, name = "", type = "", front = "", back = "", aliases = {},
    iscard = true,  faction = nil
}
DefaultCard = table.copy(Card)
function Card:new (...)
    o = table.copy(DefaultCard)
    if ... ~= nil then
        for i,tab in ipairs({...}) do
            for k, v in pairs(tab) do
                o[k] = v
            end
        end
    end
    setmetatable(o, Card)
    Card.__index = Card
    spawner = findObjectByName("Armada Spawner")
    if spawner~=nil then
        spawner.call("API_CacheCard",o)
    end
    return o
end
function PurgeCard (name, cost)
    o = {}
    o['name'] = name
    o['cost'] = cost
    spawner = findObjectByName("Armada Spawner")
    if spawner~=nil then
        spawner.call("API_PurgeCard",o)
    end
end