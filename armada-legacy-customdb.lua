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
ASSETS_ROOT = 'https://raw.githubusercontent.com/gamerkhang/Armada-Legacy-TTSIncludeDir/master/assets/'
function onload()
	printToAll("Loading Armada Legacy collection by SpaceNavy",{1,0.5,0})
	
	REPUBLIC_SHIP = {
		back = "https://i.imgur.com/8s63Ngl.png",
        faction = "Republic"
    }
	Ship:new(SmallShip,REPUBLIC_SHIP, {
	name = "Arquitens-class Light Cruiser",
         front = "https://i.imgur.com/vMgbQB3.png",
         mesh = "http://paste.ee/p/XZLIh",
         diffuse = "http://i.imgur.com/2A2pAEI.png",
         ruler = "http://paste.ee/r/FSip2", 
         maneuver = {{"II"},{"-","II"},{"-","-","II"}},
         defense_tokens = {DEF_EVADE, DEF_REDIRECT, DEF_CONTAIN, DEF_SALVO},
         shields = {2,2,2,2}, -- Front, left, right, rear
         cost = 58,
         aliases = {},
         command = 2 
	
--EXAMPLES:
    
	REPUBLIC_SQUAD = {
        back = "https://i.imgur.com/8s63Ngl.png",
        faction = "Republic"
    }
    NABOO = {
        mesh = "https://paste.ee/r/860Wh",
        diffuse = "https://i.imgur.com/wqDzbHL.png",
        health = 4,
        move = 5,
        defense_tokens = {}}
    Squadron:new(NABOO,REPUBLIC_SQUAD, {
        name = "Naboo Royal N-1 Starfighter",
        front = "https://i.imgur.com/oEEJn4f.jpeg",
        cost = 11, --TODO: Proper cost?
        aliases = {"N-1 Starfighter","N-1"}
    })
	
	REBEL_SQUAD = {
        back = "https://i.imgur.com/8s63Ngl.png", --card back
        faction = "Rebellion"
    }

    ship = {
        mesh = "http://paste.ee/r/ZqCC6",
        diffuse = "http://i.imgur.com/QSLaqgW.png", --model texture
        health = 5,
        move = 2,
        defense_tokens = {}}

    Squadron:new(ship, REBEL_SQUAD, {
	    name = "Keyan Farlander",
        front = "https://i.imgur.com/r4bx4xg.png", --card front
        diffuse = "http://i.imgur.com/r7YB80F.png", --model texture
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 99 })
		
	Squadron:new(ship, REBEL_SQUAD, {
	    name = "Doxic Halcyon",
        front = "https://i.imgur.com/r4bx4xg.png", --card front
        diffuse = "http://i.imgur.com/r7YB80F.png", --model texture
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 420
    })
    PurgeCard("Keyan Farlander",20)


--	Commander = {
--         type="Commander",
--         back = "https://i.imgur.com/fMJMaYo.png" } -- card back
--     Rebel = { factions={"Rebellion"} } -- factions must be a table for cards, since multi faction upgrades exist
--     Card:new(Commander,Rebel,{name="Admiral Ackbar",  front="http://i.imgur.com/HFVv48K.jpg", cost=38})
--
--     REBEL_SHIP = {
--         back = "https://i.imgur.com/vUaQViH.png",  -- card back
--         faction = "Rebellion" }
--     Ship:new(SmallShip,REBEL_SHIP,{
--         name = "GR-75 Medium Transports",
--         front = "https://i.imgur.com/vMgbQB3.png", --Card front image
--         mesh = "http://paste.ee/p/XZLIh",
--         diffuse = "http://i.imgur.com/2A2pAEI.png", -- model texture
--         ruler = "http://paste.ee/r/FSip2", -- custom ruler mesh
--         maneuver = {{"II"},{"I","II"},{"-","I","II"}},
--         defense_tokens = {DEF_SCATTER, DEF_EVADE},
--         shields = {1,1,1,1}, -- Front, left, right, rear
--         cost = 18,
--         aliases = {},
--         command = 1 -- Number of command dials
--     })
--
--     REBEL_SQUAD = {
--         back = "https://i.imgur.com/8s63Ngl.png", --card back
--         faction = "Rebellion"
--     }
--     ship = {
--         mesh = "http://paste.ee/r/ZqCC6",
--         diffuse = "http://i.imgur.com/QSLaqgW.png", --model texture
--         health = 5,
--         move = 2,
--         defense_tokens = {}}
--     Squadron:new(ship, REBEL_SQUAD, {
-- 	       name = "B-wing Squadron",
--         front = "https://i.imgur.com/bB11RGw.png", --card front
--         cost = 14,
--         aliases = {'B-wing Squadrons', "B-wing"}
--     })
--     Squadron:new(ship, REBEL_SQUAD, {
-- 	       name = "Keyan Farlander",
--         front = "https://i.imgur.com/r4bx4xg.png", --card front
--         diffuse = "http://i.imgur.com/r7YB80F.png", --model texture
--         defense_tokens = {DEF_BRACE,DEF_BRACE},
--         cost = 20
--     })

	UpdateCard("Nebulon-B Escort Frigate",57,{
        cost = 54,
        maneuver = {{"II"},{"I","I"},{"-","I","II"}},
        defense_tokens = {DEF_EVADE, DEF_BRACE, DEF_CONTAIN},
        front = "https://vassalwarlords.twilightpeaks.net/assets/cards/ships/rebel/shipcard_nebulon-b-escort-frigate.png"
    })
	
	Squadron:new(TIE_ADV, {
        name = "Ved Foslo",
        front = "https://vassalwarlords.twilightpeaks.net/assets/cards/squadrons/empire/squadcard_ved-foslo.png",
        diffuse = "http://i.imgur.com/YJm6aoS.png",
        defense_tokens = {DEF_BRACE,DEF_EVADE},
        cost = 16
		
	TIE_BOM = GetDefinition("TIE Bomber Squadron",9)
    Squadron:new(TIE_BOM, {
        name = "Scimitar Squadron",
        front = "https://vassalwarlords.twilightpeaks.net/assets/cards/squadrons/empire/squadcard_scimitar-squadron.png",
        cost = 12,
        aliases = {"Scimitar Squadrons"}
    })
    Squadron:new(TIE_BOM, {
    	name = "Deathfire",
        front = "https://vassalwarlords.twilightpeaks.net/assets/cards/squadrons/empire/squadcard_deathfire.png",
        diffuse = "http://i.imgur.com/o9KJLV8.png",
        defense_tokens = {DEF_BRACE,DEF_EVADE},
        cost = 14
    })
	
	ION_CANNON = GetDefinition("Point Defense Ion Cannons",4)
    Card:new(ION_CANNON,{
        name="Ion Pulse Missiles",
        cost=5,
        front="https://vassalwarlords.twilightpeaks.net/assets/cards/upgrades/wx_ion_ion-pulse-missiles.png"
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