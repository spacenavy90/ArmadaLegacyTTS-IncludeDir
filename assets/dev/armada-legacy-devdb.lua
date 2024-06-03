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
--
--     Commander = {
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
--
-- For questions, message valadian#6997 on discord,
--     or join ArmadaTTS Server: https://discord.gg/3MrP8db
--

LEGACY_ASSETS = 'https://raw.githubusercontent.com/spacenavy90/ArmadaLegacyTTS-IncludeDir/master/assets/'
CARDS_LEGACY = 'https://raw.githubusercontent.com/eldrxdevelop/ArmadaLegacy/main/'
CUSTOM_ASSETS = 'https://raw.githubusercontent.com/spacenavy90/SNCustomTTS-IncludeDir/master/SW_armada/assets/'
ARMADA_ASSETS = 'https://raw.githubusercontent.com/valadian/TabletopSimulatorIncludeDir/master/TTS_armada/assets/'

function onload()
	printToAll("Loading Armada Legacy collection...",{1,0.5,0})
    --UpdateCard("",,{cost = ,aliases={" [Rebalanced]"}})

	
    --republic ships
	REPUBLIC_SHIP = {
		back = LEGACY_ASSETS.."ships/republic/card_back.png",
        faction = "Republic_L"
    }

    Ship:new(SmallShip,REPUBLIC_SHIP, {
        name = "Arquitens-class Command Cruiser",
        front = CARDS_LEGACY.."Wave I/Ships/arquitens-command-cruiser.png",
        mesh = LEGACY_ASSETS.."ships/republic/rep_arq/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/republic/rep_arq/reparq_command_texture.png",
        ruler = LEGACY_ASSETS.."ships/republic/rep_arq/ruler.obj", 
        maneuver = {{"II"},{"-","II"},{"-","-","II"}},
        defense_tokens = {DEF_CONTAIN, DEF_SALVO, DEF_EVADE, DEF_REDIRECT},
        shields = {2,2,2,2}, -- Front, left, right, rear
        cost = 60,
        aliases = {"Arquitens Command Cruiser [Legacy]"},
        command = 2
    })

    Ship:new(SmallShip,REPUBLIC_SHIP, {
        name = "Arquitens-class Light Cruiser",
        front = CARDS_LEGACY.."Wave I/Ships/arquitens-light-cruiser.png",
        mesh = LEGACY_ASSETS.."ships/republic/rep_arq/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/republic/rep_arq/reparq_light_texture.png",
        ruler = LEGACY_ASSETS.."ships/republic/rep_arq/ruler.obj", 
        maneuver = {{"II"},{"-","II"},{"-","-","II"}},
        defense_tokens = {DEF_CONTAIN, DEF_SALVO, DEF_EVADE, DEF_REDIRECT},
        shields = {2,2,2,2}, -- Front, left, right, rear
        cost = 58,
        aliases = {"Arquitens Light Cruiser [Legacy]"},
        command = 2
    })

    Ship:new(SmallShip,REPUBLIC_SHIP, {
        name = "IPV-2C Stealth Corvette",
        front = CARDS_LEGACY.."Wave II/Ships/ipv-2c-stealth-corvette.png",
        mesh = LEGACY_ASSETS.."ships/republic/ipv2/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/republic/ipv2/ipv2-stealth-texture.png",
        ruler = LEGACY_ASSETS.."ships/republic/ipv2/ruler.obj", 
        maneuver = {{"II"},{"II","I"},{"II","I","II"},{"I","II","I","II"}},
        defense_tokens = {DEF_REDIRECT, DEF_EVADE, DEF_EVADE},
        shields = {2,1,1,1}, -- Front, left, right, rear
        cost = 34,
        aliases = {"IPV-2C Stealth Corvette [Legacy]"},
        command = 1
    })

    Ship:new(SmallShip,REPUBLIC_SHIP, {
        name = "IPV-2C Support Corvette",
        front = CARDS_LEGACY.."Wave II/Ships/ipv-2c-support-corvette.png",
        mesh = LEGACY_ASSETS.."ships/republic/ipv2/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/republic/ipv2/ipv2-support-texture.png",
        ruler = LEGACY_ASSETS.."ships/republic/ipv2/ruler.obj", 
        maneuver = {{"II"},{"II","I"},{"II","I","II"},{"I","II","I","II"}},
        defense_tokens = {DEF_REDIRECT, DEF_EVADE, DEF_EVADE},
        shields = {2,1,1,1}, -- Front, left, right, rear
        cost = 34,
        aliases = {"IPV-2C Support Corvette [Legacy]"},
        command = 1
    })

    Ship:new(SmallShip,REPUBLIC_SHIP, {
        name = "CR-20 Troop Carriers",
        front = LEGACY_ASSETS.."dev/wave3/ships/cr20/cr20-troop-carriers.png",
        mesh = LEGACY_ASSETS.."dev/wave3/ships/cr20/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/ships/cr20/diffuse.png",
        ruler = LEGACY_ASSETS.."dev/wave3/ships/cr20/ruler.obj", 
        maneuver = {{"II"},{"I","I"},{"I","I","I"}},
        defense_tokens = {DEF_SCATTER, DEF_EVADE},
        shields = {1,1,1,1}, -- Front, left, right, rear
        cost = 26,
        aliases = {"CR-20 Troop Carriers [Legacy]","CR20 Troop Carriers [Legacy]"},
        command = 1
    })

    Ship:new(SmallShip,REPUBLIC_SHIP, {
        name = "CR-20 Combat Refit",
        front = LEGACY_ASSETS.."dev/wave3/ships/cr20/cr20-combat-refits.png",
        mesh = LEGACY_ASSETS.."dev/wave3/ships/cr20/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/ships/cr20/diffuse.png",
        ruler = LEGACY_ASSETS.."dev/wave3/ships/cr20/ruler.obj", 
        maneuver = {{"II"},{"I","I"},{"I","I","I"}},
        defense_tokens = {DEF_SCATTER, DEF_EVADE},
        shields = {1,1,1,1}, -- Front, left, right, rear
        cost = 29,
        aliases = {"CR-20 Combat Refit [Legacy]","CR20 Combat Refit [Legacy]"},
        command = 1
    })

------------------------------------
    --republic squadrons
    REPUBLIC_SQUAD = {
		back = LEGACY_ASSETS.."ships/republic/card_back.png",
        faction = "Republic_L"
    }

    eta2 = {
        mesh = LEGACY_ASSETS.."squadrons/republic/eta2/plain_mesh.obj",
        diffuse = LEGACY_ASSETS.."squadrons/republic/eta2/eta2_red_texture.png",
        health = 3,
        move = 5,
        defense_tokens = {}
    }
    Squadron:new(eta2, REPUBLIC_SQUAD, {
        name = "ETA-2 Actis Squadron",
        front = CARDS_LEGACY.."Wave I/Squadrons/eta-2-squadron.png",
        cost = 15,
        aliases = {"ETA-2 Actis Squadron [Legacy]", "ETA-2", "ETA2"}
    })
    Squadron:new(eta2, REPUBLIC_SQUAD, {
        name = "Anakin Skywalker (ETA-2)",
        front = CARDS_LEGACY.."Wave I/Squadrons/anakin-eta.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/eta2/eta2_anakin_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 24,
        aliases = {"Anakin Skywalker [ETA] [Legacy]"}
    })
    Squadron:new(eta2, REPUBLIC_SQUAD, {
        name = "Obi-Wan Kenobi (ETA-2)",
        front = CARDS_LEGACY.."Wave I/Squadrons/obi-wan-squadron.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/eta2/eta2_obiwan_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 24,
        aliases = {"Obi-Wan Kenobi [ETA] [Legacy]"}
    })
    Squadron:new(eta2, REPUBLIC_SQUAD, {
        name = "Aayla Secura (ETA-2)",
        front = CARDS_LEGACY.."Wave I/Squadrons/aayla-secura.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/eta2/eta2_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 23,
        aliases = {"Aayla Secura [Legacy]"}
    })
    Squadron:new(eta2, REPUBLIC_SQUAD, {
        name = "Shaak Ti (ETA-2)",
        front = CARDS_LEGACY.."Wave I/Squadrons/shaak-ti.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/eta2/eta2_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 22,
        aliases = {"Shaak Ti [Legacy]"}
    })

    clone_z95 = {
        mesh = LEGACY_ASSETS.."squadrons/republic/clone-z95/plain_mesh.obj",
        diffuse = LEGACY_ASSETS.."squadrons/republic/clone-z95/cz95_red_texture.png",
        health = 4,
        move = 3,
        defense_tokens = {}
    }
    Squadron:new(clone_z95, REPUBLIC_SQUAD, {
        name = "Clone Z-95 Squadron",
        front = CARDS_LEGACY.."Wave I/Squadrons/clone-z-95-squadron.png",
        cost = 10,
        aliases = {"Clone Z-95 Squadron [Legacy]", "Clone Z-95"}
    })
    Squadron:new(clone_z95, REPUBLIC_SQUAD, {
        name = "Stub",
        front = CARDS_LEGACY.."Wave I/Squadrons/stub.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/clone-z95/cz95_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_EVADE},
        cost = 15,
        aliases = {"Stub [Legacy]"}
    })

    laat_i = {
        mesh = LEGACY_ASSETS.."squadrons/republic/laati/plain_mesh.obj",
        diffuse = LEGACY_ASSETS.."squadrons/republic/laati/laati_red_texture.png",
        health = 6,
        move = 2,
        defense_tokens = {}
    }
    Squadron:new(laat_i, REPUBLIC_SQUAD, {
        name = "LAAT/i Gunship",
        front = CARDS_LEGACY.."Wave I/Squadrons/laat.png",
        cost = 17,
        aliases = {"LAAT/i Gunship [Legacy]", "LAAT/i"}
    })
    Squadron:new(laat_i, REPUBLIC_SQUAD, {
        name = "Hawk",
        front = CARDS_LEGACY.."Wave I/Squadrons/hawk.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/laati/laati_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 25,
        aliases = {"Hawk [Legacy]"}
    })

    g9_rigger = {
        mesh = LEGACY_ASSETS.."squadrons/republic/g9-rigger/plain_mesh.obj",
        diffuse = LEGACY_ASSETS.."squadrons/republic/g9-rigger/g9rigger_texture.png",
        health = 7,
        move = 2,
        defense_tokens = {}
    }
    Squadron:new(g9_rigger, REPUBLIC_SQUAD, {
        name = "G9 Rigger-class Freighter",
        front = CARDS_LEGACY.."Wave I/Squadrons/g-9-freighter.png",
        cost = 13,
        aliases = {"G9 Rigger-class Freighter [Legacy]"}
    })
    Squadron:new(g9_rigger, REPUBLIC_SQUAD, {
        name = "Anakin Skywalker (G9)",
        front = CARDS_LEGACY.."Wave I/Squadrons/Twilight.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/g9-rigger/g9rigger_ace_texture.png", 
        defense_tokens = {DEF_BRACE},
        cost = 27,
        aliases = {"Anakin Skywalker [G9] [Legacy]"}
    })

    UpdateCard("Anakin Skywalker",24,{cost = 28,aliases={"Anakin Skywalker [Rebalanced]"}})

------------------------------------
    --separatist ships
    SEPARATIST_SHIP = {
        back =      LEGACY_ASSETS.."ships/separatist/card_back.png",
        faction = "Separatist_L"
    }

    Ship:new(SmallShip,SEPARATIST_SHIP, {
        name = "Trident-class Assault Ships",
        front = CARDS_LEGACY.."Wave I/Ships/trident-assault-ships.png",
        mesh = LEGACY_ASSETS.."ships/separatist/trident/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/separatist/trident/trident_a_texture.png",
        ruler = LEGACY_ASSETS.."ships/separatist/trident/ruler.obj", 
        maneuver = {{"II"},{"I","I"},{"-","II","I"}},
        defense_tokens = {DEF_SCATTER, DEF_EVADE},
        shields = {2,1,1,1}, -- Front, left, right, rear
        cost = 30,
        aliases = {"Trident Assault Ships [Legacy]"},
        command = 1
        })

    Ship:new(SmallShip,SEPARATIST_SHIP, {
        name = "Trident-class Assault Carriers",
        front = CARDS_LEGACY.."Wave I/Ships/trident-assault-carriers.png",
        mesh = LEGACY_ASSETS.."ships/separatist/trident/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/separatist/trident/trident_c_texture.png",
        ruler = LEGACY_ASSETS.."ships/separatist/trident/ruler.obj", 
        maneuver = {{"II"},{"I","I"},{"-","II","I"}},
        defense_tokens = {DEF_SCATTER, DEF_EVADE},
        shields = {2,1,1,1}, -- Front, left, right, rear
        cost = 32,
        aliases = {"Trident Assault Carriers [Legacy]"},
        command = 1
        })

    Ship:new(LargeShip,SEPARATIST_SHIP, {
        name = "Lucrehulk-class Battleship",
        front = CARDS_LEGACY.."Wave II/Ships/lucrehulk-battleship.png",
        mesh = LEGACY_ASSETS.."ships/separatist/lucrehulk/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/separatist/lucrehulk/lucrehulk-bs-texture.png",
        ruler = LEGACY_ASSETS.."ships/separatist/lucrehulk/ruler.obj", 
        maneuver = {{"-"},{"I","-"}},
        defense_tokens = {DEF_REDIRECT, DEF_CONTAIN, DEF_BRACE, DEF_BRACE},
        shields = {5,5,5,3}, -- Front, left, right, rear
        cost = 144,
        aliases = {"Lucrehulk Battleship [Legacy]"},
        command = 4
        })

    Ship:new(LargeShip,SEPARATIST_SHIP, {
        name = "Lucrehulk-class Droid Control Ship",
        front = CARDS_LEGACY.."Wave II/Ships/lucrehulk-droid-control-ship.png",
        mesh = LEGACY_ASSETS.."ships/separatist/lucrehulk/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/separatist/lucrehulk/lucrehulk-dcs-texture.png",
        ruler = LEGACY_ASSETS.."ships/separatist/lucrehulk/ruler.obj", 
        maneuver = {{"-"},{"I","-"}},
        defense_tokens = {DEF_REDIRECT, DEF_CONTAIN, DEF_BRACE, DEF_BRACE},
        shields = {5,5,5,3}, -- Front, left, right, rear
        cost = 136,
        aliases = {"Lucrehulk Droid Control [Legacy]"},
        command = 4
        })

    Ship:new(MassiveShip,SEPARATIST_SHIP, {
        name = "Subjugator-class Command Refit",
        front = LEGACY_ASSETS.."dev/wave3/ships/subjugator/subjugator_command_v2.png",
        mesh = LEGACY_ASSETS.."dev/wave3/ships/subjugator/mesh_massive.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/ships/subjugator/diffuse_command.png",
        ruler = LEGACY_ASSETS.."dev/wave3/ships/subjugator/ruler.obj", 
        maneuver = {{"-"},{"I","-"}},
        defense_tokens = {DEF_BRACE, DEF_BRACE, DEF_REDIRECT, DEF_REDIRECT, DEF_SALVO},
        shields = {4,3,3,1,4,4}, --Front, back-left, back-right, rear, front-left, front-right
        cost = 180,
        aliases = {"Subjugator-class Command Refit [Legacy]"},
        command = 4
        })

    Ship:new(MassiveShip,SEPARATIST_SHIP, {
        name = "Subjugator-class Mega Ion Refit",
        front = LEGACY_ASSETS.."dev/wave3/ships/subjugator/subjugator_ion_v2.png",
        mesh = LEGACY_ASSETS.."dev/wave3/ships/subjugator/mesh_massive.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/ships/subjugator/diffuse_ion.png",
        ruler = LEGACY_ASSETS.."dev/wave3/ships/subjugator/ign_ruler.obj", 
        maneuver = {{"-"},{"I","-"}},
        defense_tokens = {DEF_BRACE, DEF_BRACE, DEF_REDIRECT, DEF_REDIRECT, DEF_SALVO},
        shields = {4,3,3,1,4,4}, --Front, back-left, back-right, rear, front-left, front-right
        cost = 180,
        aliases = {"Subjugator-class Mega Ion [Legacy]"},
        command = 4
        }) 
        
    Ship:new(SmallShip,SEPARATIST_SHIP, {
        name = "C-9979 Landing Craft",
        front = LEGACY_ASSETS.."dev/wave3/ships/c9979/c9979_card.png",
        mesh = LEGACY_ASSETS.."dev/wave3/ships/c9979/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/ships/c9979/diffuse.png",
        ruler = LEGACY_ASSETS.."dev/wave3/ships/c9979/ruler.obj", 
        maneuver = {{"I"},{"I","-"},{"I","-","-"}},
        defense_tokens = {DEF_EVADE, DEF_BRACE},
        shields = {2,2,2,1}, -- Front, left, right, rear
        cost = 32,
        aliases = {"C-9979 Landing Craft [Legacy]"},
        command = 1
        })

    Ship:new(SmallShip,SEPARATIST_SHIP, {
        name = "C-9969 Landing Craft",
        front = LEGACY_ASSETS.."dev/wave3/ships/c9979/c9969_card.png",
        mesh = LEGACY_ASSETS.."dev/wave3/ships/c9979/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/ships/c9979/diffuse.png",
        ruler = LEGACY_ASSETS.."dev/wave3/ships/c9979/ruler.obj", 
        maneuver = {{"I"},{"I","-"},{"I","-","-"}},
        defense_tokens = {DEF_EVADE, DEF_BRACE},
        shields = {2,2,2,1}, -- Front, left, right, rear
        cost = 32,
        aliases = {"C-9969 Landing Craft [Legacy]"},
        command = 1
        })

------------------------------------
    --separatist squadrons
    SEPARATIST_SQUAD = {
        back =      LEGACY_ASSETS.."ships/separatist/card_back.png",
        faction = "Separatist_L"
    }

    nantex = {
        mesh = LEGACY_ASSETS.."squadrons/separatist/nantex/plain_mesh.obj",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/nantex/nantex_texture.png",
        health = 4,
        move = 4,
        defense_tokens = {}
    }
    Squadron:new(nantex, SEPARATIST_SQUAD, {
        name = "Nantex Starfighter Squadron",
        front = CARDS_LEGACY.."Wave I/Squadrons/nantex-squadron.png",
        cost = 11,
        aliases = {"Nantex Starfighter Squadron [Legacy]"}
    })
    Squadron:new(nantex, SEPARATIST_SQUAD, {
        name = "Sun Fac",
        front = CARDS_LEGACY.."Wave I/Squadrons/sun-fac.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/nantex/nantex_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 19,
        aliases = {"Sun Fac [Legacy]"}
    })
    Squadron:new(nantex, SEPARATIST_SQUAD, {
        name = "Gorgol",
        front = CARDS_LEGACY.."Wave I/Squadrons/gorgol.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/nantex/nantex_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 16,
        aliases = {"Gorgol [Legacy]"}
    })

    hmp_gunship = {
        mesh = LEGACY_ASSETS.."squadrons/separatist/hmp/plain_mesh.obj",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/hmp/hmp_texture.png",
        health = 5,
        move = 3,
        defense_tokens = {}
    }
    Squadron:new(hmp_gunship, SEPARATIST_SQUAD, {
        name = "HMP Droid Gunship",
        front = CARDS_LEGACY.."Wave I/Squadrons/hmp-gunship.png",
        cost = 16,
        aliases = {"HMP Droid Gunship [Legacy]"}
    })
    Squadron:new(hmp_gunship, SEPARATIST_SQUAD, {
        name = "Geonosian Prototype",
        front = CARDS_LEGACY.."Wave I/Squadrons/geonosian-prototype.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/hmp/hmp_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 22,
        aliases = {"Geonosian Prototype [Legacy]"}
    })
    Squadron:new(hmp_gunship, SEPARATIST_SQUAD, {
        name = "DGS-047",
        front = CARDS_LEGACY.."Wave I/Squadrons/dgs-047.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/hmp/hmp_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 24,
        aliases = {"DGS-047 [Legacy]"}
    })

    sith_infil = {
        mesh = LEGACY_ASSETS.."squadrons/separatist/sith-infil/plain_mesh.obj",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/sith-infil/sithinfil_texture.png",
        health = 6,
        move = 3,
        defense_tokens = {}
    }
    Squadron:new(sith_infil, SEPARATIST_SQUAD, {
        name = "Sith Infiltrator",
        front = CARDS_LEGACY.."Wave I/Squadrons/sith-infiltrator.png",
        cost = 17,
        aliases = {"Sith Infiltrator [Legacy]"}
    })
    Squadron:new(sith_infil, SEPARATIST_SQUAD, {
        name = "Count Dooku",
        front = CARDS_LEGACY.."Wave I/Squadrons/count-dooku-squadron.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/sith-infil/sithinfil_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 25,
        aliases = {"Count Dooku [Legacy]"}
    })

    rogue_fighter = {
        mesh = LEGACY_ASSETS.."squadrons/separatist/rogue/plain_mesh.obj",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/rogue/rogue_texture.png",
        health = 5,
        move = 4,
        defense_tokens = {}
    }
    Squadron:new(rogue_fighter, SEPARATIST_SQUAD, {
        name = "Rogue Starfighter Squadron",
        front = CARDS_LEGACY.."Wave I/Squadrons/rogue-starfighter-squadron.png",
        cost = 15,
        aliases = {"Rogue Starfighter Squadron [Legacy]"}
    })
    Squadron:new(rogue_fighter, SEPARATIST_SQUAD, {
        name = "Magnaguard Protectors",
        front = CARDS_LEGACY.."Wave I/Squadrons/magnaguard-protectors.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/rogue/rogue_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 21,
        aliases = {"Magnaguard Protectors [Legacy]"}
    })
    Squadron:new(rogue_fighter, SEPARATIST_SQUAD, {
        name = "Cad Bane",
        front = CARDS_LEGACY.."Wave I/Squadrons/cad-bane.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/rogue/rogue_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 22,
        aliases = {"Cad Bane [Legacy]"}
    })

------------------------------------
    --empire ships
    EMPIRE_SHIP = {
        back = LEGACY_ASSETS.."ships/empire/card_back.png",
        faction = "Empire_L"
    }

    Ship:new(MediumShip,EMPIRE_SHIP, {
        name = "Dreadnaught-class Imperial Refit",
        front = CARDS_LEGACY.."Wave I/Ships/dreadnaught-imperial-refit.png",
        mesh = LEGACY_ASSETS.."ships/empire/dread/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/empire/dread/dread_imp_texture.png",
        ruler = LEGACY_ASSETS.."ships/empire/dread/ruler.obj", 
        maneuver = {{"I"},{"I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_BRACE, DEF_BRACE},
        shields = {3,3,3,1}, -- Front, left, right, rear
        cost = 64,
        aliases = {"Dreadnaught Imperial Refit [Legacy]"},
        command = 3
        })

    Ship:new(MediumShip,EMPIRE_SHIP, {
        name = "Dreadnaught-class Katana Refit",
        front = CARDS_LEGACY.."Wave I/Ships/dreadnaught-katana-refit.png",
        mesh = LEGACY_ASSETS.."ships/empire/dread/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/empire/dread/dread_katana_texture.png",
        ruler = LEGACY_ASSETS.."ships/empire/dread/ruler.obj", 
        maneuver = {{"I"},{"I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_BRACE, DEF_BRACE},
        shields = {3,3,3,1}, -- Front, left, right, rear
        cost = 62,
        aliases = {"Dreadnaught Katana Refit [Legacy]"},
        command = 3
        })

    Ship:new(LargeShip,EMPIRE_SHIP, {
        name = "Interdictor-class Star Destroyer",
        front = CARDS_LEGACY.."Wave II/Ships/interdictor-star-destroyer.png",
        mesh = LEGACY_ASSETS.."ships/empire/interdictor-sd/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/empire/interdictor-sd/interdictorsd-sd-texture.png",
        ruler = LEGACY_ASSETS.."ships/empire/interdictor-sd/ruler.obj",
        maneuver = {{"I"},{"I","I"},{"I","-","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_CONTAIN, DEF_BRACE, DEF_REDIRECT},
        shields = {4,3,3,2}, -- Front, left, right, rear
        cost = 110,
        aliases = {"Interdictor Star Destroyer [Legacy]"},
        command = 3
        })

    Ship:new(LargeShip,EMPIRE_SHIP, {
        name = "Interdictor-class Prototype",
        front = CARDS_LEGACY.."Wave II/Ships/interdictor-prototype.png",
        mesh = LEGACY_ASSETS.."ships/empire/interdictor-sd/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/empire/interdictor-sd/interdictorsd-proto-texture.png",
        ruler = LEGACY_ASSETS.."ships/empire/interdictor-sd/ruler.obj",
        maneuver = {{"I"},{"I","I"},{"I","-","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_CONTAIN, DEF_BRACE, DEF_REDIRECT},
        shields = {4,3,3,2}, -- Front, left, right, rear
        cost = 100,
        aliases = {"Interdictor Prototype [Legacy]"},
        command = 3
        })

    Ship:new(SmallShip,EMPIRE_SHIP, {
        name = "Lancer-class Frigate",
        front = LEGACY_ASSETS.."dev/wave3/ships/lancer/lancer-frigate.png",
        mesh = LEGACY_ASSETS.."dev/wave3/ships/lancer/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/ships/lancer/frigate_diffuse.png",
        ruler = LEGACY_ASSETS.."dev/wave3/ships/lancer/ruler.obj",
        maneuver = {{"I"},{"I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_EVADE, DEF_BRACE},
        shields = {2,2,2,2}, -- Front, left, right, rear
        cost = 44,
        aliases = {"Lancer-class Frigate [Legacy]"},
        command = 1
        })

    Ship:new(SmallShip,EMPIRE_SHIP, {
        name = "Lancer-class Battle Refit",
        front = LEGACY_ASSETS.."dev/wave3/ships/lancer/lancer-battle-refit.png",
        mesh = LEGACY_ASSETS.."dev/wave3/ships/lancer/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/ships/lancer/battle_diffuse.png",
        ruler = LEGACY_ASSETS.."dev/wave3/ships/lancer/ruler.obj",
        maneuver = {{"I"},{"I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_EVADE, DEF_BRACE},
        shields = {2,2,2,2}, -- Front, left, right, rear
        cost = 48,
        aliases = {"Lancer-class Battle Refit [Legacy]"},
        command = 1
        })

    UpdateCard("Arquitens-class Command Cruiser",59,{cost = 57,aliases={"Arquitens Command Cruiser [Rebalanced]"}})
    UpdateCard("Gladiator II-class Star Destroyer",62,{cost = 59,aliases={"Gladiator II [Rebalanced]"}})
    UpdateCard("Gozanti-class Assault Carriers",28,{cost = 25,aliases={"Gozanti Assault Carriers [Rebalanced]"}})
    UpdateCard("Imperial I-class Star Destroyer",110,{cost = 105,aliases={"Imperial I Star Destroyer [Rebalanced]"}})
    --UpdateCard("Imperial II-class Star Destroyer",120,{cost = 115,aliases={"Imperial II Star Destroyer [Rebalanced]"}})   
    UpdateCard("Interdictor Suppression Refit",90,{
        --front = CARDS_LEGACY.."Rebalance/Ships/interdictor-combat-refit.png",
        aliases = {"Interdictor Suppression Refit [Rebalanced]"},
        --cost = 90
    })
    UpdateCard("Interdictor Combat Refit",93,{
        front = CARDS_LEGACY.."ships/empire/interdictor/interdictor-combat-refit_rebalance.png",
        aliases = {"Interdictor Combat Refit [Rebalanced]"},
        cost = 88
    })
    UpdateCard("Quasar Fire II-class Cruiser-Carrier",61,{cost = 58,aliases={"Quasar II Cruiser-Carrier [Rebalanced]"}})
    UpdateCard("Raider I-class Corvette",44,{cost = 42,aliases={"Raider I Corvette [Rebalanced]"}})
    UpdateCard("Raider II-class Corvette",48,{cost = 44,aliases={"Raider II Corvette [Rebalanced]"}})
    UpdateCard("Star Dreadnought Command Prototype",220,{cost = 205,aliases={"SSD Command Prototype [Rebalanced]"}})
    UpdateCard("Star Dreadnought Assault Prototype",250,{cost = 235,aliases={"SSD Assault Prototype [Rebalanced]"}})
    UpdateCard("Victory I-class Star Destroyer",73,{cost = 68,aliases={"Victory I Star Destroyer [Rebalanced]"}})
    UpdateCard("Victory II-class Star Destroyer",85,{cost = 75,aliases={"Victory II Star Destroyer [Rebalanced]"}})
    UpdateCard("Executor I-class Star Dreadnought",381,{cost = 340,aliases={"Executor I-class Star Dreadnought [Rebalanced]"}})
    UpdateCard("Executor II-class Star Dreadnought",411,{cost = 380,aliases={"Executor II-class Star Dreadnought [Rebalanced]"}})

------------------------------------
    --empire squadrons
    EMPIRE_SQUAD = {
        back = LEGACY_ASSETS.."squadrons/empire/card_back.png",
        faction = "Empire_L"
    }

    TIE_ADV = GetDefinition("TIE Advanced Squadron",12)
    TIE_FIG = GetDefinition("TIE Fighter Squadron",8)
    TIE_BOM = GetDefinition("TIE Bomber Squadron",9)
    TIE_INT = GetDefinition("TIE Interceptor Squadron",11)

    Squadron:new(TIE_ADV, EMPIRE_SQUAD, {
        name = "Maarek Stele (TIE/x1)",
        front = CARDS_LEGACY.."Wave I/Squadrons/Maarek Stele Advanced.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/empire/adv/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 18,
        aliases = {"Maarek Stele [TIE/x1] [Legacy]"}
    })

    Squadron:new(TIE_FIG, EMPIRE_SQUAD, {
        name = "Iden Versio",
        front = CARDS_LEGACY.."Wave I/Squadrons/Iden Version Squadron.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/empire/tie/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 17,
        aliases = {"Iden Versio [Legacy]"}
    })

    Squadron:new(TIE_BOM, EMPIRE_SQUAD, {
        name = "Tomax Bren",
        front = CARDS_LEGACY.."Wave I/Squadrons/Tomax Bren.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/empire/bom/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 16,
        aliases = {"Tomax Bren [Legacy]"}
    })

    Squadron:new(TIE_INT, EMPIRE_SQUAD, {
        name = "Turr Phennir",
        front = CARDS_LEGACY.."Wave I/Squadrons/Turr Phennir.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/empire/int/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 18,
        aliases = {"Turr Phennir [Legacy]"}
    })

    alpha_starwing = {
        mesh = LEGACY_ASSETS.."dev/wave3/squadrons/alpha/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/alpha/base_diffuse.png",
        health = 6,
        move = 3,
        defense_tokens = {}
    }
    Squadron:new(alpha_starwing, EMPIRE_SQUAD, {
        name = "Alpha-class Star Wing Squadron",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/alpha/alpha-star-wing.png",
        cost = 13,
        aliases = {"G9 Rigger-class Freighter [Legacy]"}
    })
    Squadron:new(alpha_starwing, EMPIRE_SQUAD, {
        name = "Major Vynder",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/alpha/major-vynder.png",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/alpha/ace_diffuse.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 21,
        aliases = {"Major Vynder [Legacy]"}
    })

    g1a = {
        mesh = LEGACY_ASSETS.."dev/wave3/squadrons/g1a/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/g1a/base_diffuse.png",
        health = 4,
        move = 3,
        defense_tokens = {}
    }
    Squadron:new(g1a, EMPIRE_SQUAD, {
        name = "G-1A Starfighter",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/g1a/g1a-starfighter.png",
        cost = 14,
        aliases = {"G-1A Starfighter [Legacy]"}
    })
    Squadron:new(g1a, EMPIRE_SQUAD, {
        name = "Zuckuss",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/g1a/zuckuss.png",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/g1a/ace_diffuse.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 20,
        aliases = {"Zuckuss [Legacy]"}
    })

    tie_agg = {
        mesh = LEGACY_ASSETS.."dev/wave3/squadrons/tie_aggressor/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/tie_aggressor/base_diffuse.png",
        health = 4,
        move = 4,
        defense_tokens = {}
    }
    Squadron:new(tie_agg, EMPIRE_SQUAD, {
        name = "TIE Aggressor Squadron",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/tie_aggressor/tie-aggressor-squadron.png",
        cost = 11,
        aliases = {"TIE Aggressor Squadron [Legacy]"}
    })
    Squadron:new(tie_agg, EMPIRE_SQUAD, {
        name = "Lieutenant Kestal",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/tie_aggressor/lieutenant-kestal.png",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/tie_aggressor/ace_diffuse.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 17,
        aliases = {"Lieutenant Kestal [Legacy]"}
    })

    tie_reaper = {
        mesh = LEGACY_ASSETS.."dev/wave3/squadrons/tie_reaper/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/tie_reaper/base_diffuse.png",
        health = 4,
        move = 3,
        defense_tokens = {}
    }
    Squadron:new(tie_reaper, EMPIRE_SQUAD, {
        name = "TIE Reaper",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/tie_reaper/tie-reaper.png",
        cost = 12,
        aliases = {"TIE Reaper [Legacy]"}
    })
    Squadron:new(tie_reaper, EMPIRE_SQUAD, {
        name = "Death Troopers",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/tie_reaper/death-troopers.png",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/tie_reaper/ace_diffuse.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 16,
        aliases = {"Death Troopers [Legacy]"}
    })

    UpdateCard("Aggressor Assault Fighter",16,{cost = 15,aliases={"Aggressor Assault Fighter [Rebalanced]"}})
    UpdateCard("Mandalorian Gauntlet Fighter",20,{cost = 18,aliases={"Mandalorian Gauntlet Fighter [Rebalanced]"}})
    UpdateCard("JumpMaster 5000",12,{cost = 10,aliases={"Jumpmaster 5000 [Rebalanced]"}})
    UpdateCard("TIE Bomber Squadron",9,{cost = 8,aliases={"TIE Bomber Squadron [Rebalanced]"}})
    UpdateCard("TIE Phantom Squadron",14,{cost = 13,aliases={"TIE Phantom Squadron [Rebalanced]"}})
    UpdateCard("TIE Advanced Squadron",12,{cost = 11,aliases={"TIE Advanced Squadron [Rebalanced]","Tie Advanced Squadron [Rebalanced]"}})
    UpdateCard("Ciena Ree",17,{cost = 19,aliases={"Ciena Ree [Rebalanced]"}})
    UpdateCard("Darth Vader",21,{
        name = "Darth Vader (TIE/x1)",
        front = CARDS_LEGACY.."Wave I/Squadrons/Darth Vader Advanced.png",
        --mesh = LEGACY_ASSETS..".obj",
        aliases = {"Darth Vader [Rebalanced]"},
        cost = 25
    })
    UpdateCard("Darth Vader",25,{cost = 27,name = "Darth Vader (TIE/D)",aliases={"Darth Vader [TIE/D] [Rebalanced]"}})
    UpdateCard("Gar Saxon",23,{cost = 21,aliases={"Gar Saxon [Rebalanced]"}})
    UpdateCard("Maarek Stele",21,{cost = 25,aliases={"Maarek Stele [Rebalanced]"}})
    UpdateCard("\"Mauler\" Mithel",15,{cost = 18,aliases={"Mauler Mithel [Rebalanced]"}})
    UpdateCard("Morna Kee",27,{cost = 29,aliases={"Morna Kee [Rebalanced]"}})
    UpdateCard("Tel Trevura",17,{cost = 19,aliases={"Tel Trevura [Rebalanced]"}})
    UpdateCard("Tempest Squadron",13,{cost = 12,aliases={"Tempest Squadron [Rebalanced]"}})
    UpdateCard("Valen Rudor",13,{cost = 15,aliases={"Valen Rudor [Rebalanced]"}})

------------------------------------
    --rebel ships
    REBEL_SHIP = {
        back = LEGACY_ASSETS.."ships/rebel/card_back.png",
        faction = "Rebellion_L" 
    }

    Ship:new(MediumShip,REBEL_SHIP, {
        name = "Assault Frigate Mark I A",
        front = CARDS_LEGACY.."Wave I/Ships/assault-frigate-mki-a.png",
        mesh = LEGACY_ASSETS.."ships/rebel/afm1/afm1a_mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/rebel/afm1/afm1_a_texture.png",
        ruler = LEGACY_ASSETS.."ships/rebel/afm1/ruler.obj", 
        maneuver = {{"II"},{"I","I"},{"I","I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_SALVO, DEF_EVADE, DEF_BRACE},
        shields = {3,3,3,2}, -- Front, left, right, rear
        cost = 72,
        aliases = {"Assault Frigate Mark I A [Legacy]", "Assault Frig. Mk.I A [Legacy]"},
        command = 2
        })

    Ship:new(MediumShip,REBEL_SHIP, {
        name = "Assault Frigate Mark I B",
        front = CARDS_LEGACY.."Wave I/Ships/assault-frigate-mki-b.png",
        mesh = LEGACY_ASSETS.."ships/rebel/afm1/afm1b_mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/rebel/afm1/afm1_b_texture.png",
        ruler = LEGACY_ASSETS.."ships/rebel/afm1/ruler.obj", 
        maneuver = {{"II"},{"I","I"},{"I","I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_SALVO, DEF_EVADE, DEF_BRACE},
        shields = {3,3,3,2}, -- Front, left, right, rear
        cost = 68,
        aliases = {"Assault Frigate Mark I B [Legacy]", "Assault Frig. Mk.I B [Legacy]"},
        command = 2
        })

    Ship:new(LargeShip,REBEL_SHIP, {
        name = "MC80B Command Cruiser",
        front = CARDS_LEGACY.."Wave II/Ships/mc80b-command-cruiser.png",
        mesh = LEGACY_ASSETS.."ships/rebel/mc80b/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/rebel/mc80b/mc80b-command-texture.png",
        ruler = LEGACY_ASSETS.."ships/rebel/mc80b/ruler.obj",
        maneuver = {{"I"},{"I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_CONTAIN, DEF_BRACE, DEF_REDIRECT},
        shields = {4,4,4,3}, -- Front, left, right, rear
        cost = 110,
        aliases = {"MC80B Command Cruiser [Legacy]", "Command Cruiser [Legacy]"},
        command = 3
        })

    Ship:new(LargeShip,REBEL_SHIP, {
        name = "MC80B Heavy Cruiser",
        front = CARDS_LEGACY.."Wave II/Ships/mc80b-heavy-cruiser.png",
        mesh = LEGACY_ASSETS.."ships/rebel/mc80b/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/rebel/mc80b/mc80b-heavy-texture.png",
        ruler = LEGACY_ASSETS.."ships/rebel/mc80b/ruler.obj",
        maneuver = {{"I"},{"I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_CONTAIN, DEF_BRACE, DEF_REDIRECT},
        shields = {4,4,4,3}, -- Front, left, right, rear
        cost = 114,
        aliases = {"MC80B Heavy Cruiser [Legacy]", "Heavy Cruiser [Legacy]"},
        command = 3
        })

    Ship:new(SmallShip,REBEL_SHIP, {
        name = "MC40A Light Cruiser",
        front = LEGACY_ASSETS.."dev/wave3/ships/mc40a/mc40a-light-cruiser.png",
        mesh = LEGACY_ASSETS.."dev/wave3/ships/mc40a/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/ships/mc40a/light_diffuse.png",
        ruler = LEGACY_ASSETS.."dev/wave3/ships/mc40a/ruler.obj",
        maneuver = {{"I"},{"I","I"},{"-","I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_EVADE, DEF_BRACE},
        shields = {3,3,3,2}, -- Front, left, right, rear
        cost = 64,
        aliases = {"MC40A Light Cruiser [Legacy]"},
        command = 2
        })

    Ship:new(SmallShip,REBEL_SHIP, {
        name = "MC40A Missile Cruiser",
        front = LEGACY_ASSETS.."dev/wave3/ships/mc40a/mc40a-missile-cruiser.png",
        mesh = LEGACY_ASSETS.."dev/wave3/ships/mc40a/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/ships/mc40a/missile_diffuse.png",
        ruler = LEGACY_ASSETS.."dev/wave3/ships/mc40a/ruler.obj",
        maneuver = {{"I"},{"I","I"},{"-","I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_EVADE, DEF_BRACE},
        shields = {3,3,3,2}, -- Front, left, right, rear
        cost = 62,
        aliases = {"MC40A Missile Cruiser [Legacy]"},
        command = 2
        })

UpdateCard("Assault Frigate Mk. II B",72,{cost = 78,aliases={"Assault Frig. Mk.II B [Rebalanced]"}})
UpdateCard("GR-75 Medium Transports",18,{cost = 21,aliases={"GR-75 Medium Transports [Rebalanced]"}})
UpdateCard("GR-75 Combat Retrofits",24,{cost = 23,aliases={"GR-75 Combat Retrofits [Rebalanced]"}})
UpdateCard("Hammerhead Scout Corvette",41,{cost = 39,aliases={"Hammerhead Scout Corvette [Rebalanced]"}})
--UpdateCard("MC75 Ordnance Cruiser",100,{cost = 98,aliases={"MC75 Ordnance Cruiser [Rebalanced]"}})
--UpdateCard("MC75 Armored Cruiser",104,{cost = 100,aliases={"MC75 Armored Cruiser [Rebalanced]"}})
UpdateCard("MC80 Starcruiser",96,{cost = 94,aliases={"MC80 Starcruiser [Rebalanced]"}})
UpdateCard("MC80 Battle Cruiser",103,{cost = 98,aliases={"MC80 Battle Cruiser [Rebalanced]"}})
UpdateCard("MC80 Command Cruiser",106,{
    front = CARDS_LEGACY.."Rebalance/Ships/mc80-command-cruiser.png",
    aliases = {"MC80 Command Cruiser [Rebalanced]"},
    cost = 106
})
UpdateCard("MC80 Assault Cruiser",114,{cost = 110,aliases={"MC80 Assault Cruiser [Rebalanced]"}})
UpdateCard("Modified Pelta-class Assault Ship",56,{cost = 54,aliases={"Pelta Assault Ship [Rebalanced]"}})
UpdateCard("Modified Pelta-class Command Ship",60,{cost = 58,aliases={"Pelta Command Ship [Rebalanced]"}})
UpdateCard("Nebulon-B Support Refit",51,{cost = 48,aliases={"Nebulon-B Support Refit [Rebalanced]"}})
UpdateCard("Nebulon-B Escort Frigate",57,{cost = 54,aliases={"Nebulon-B Escort Frigate [Rebalanced]"}})

------------------------------------
    --rebel squadrons
    REBEL_SQUAD = {
        back = LEGACY_ASSETS.."squadrons/rebel/card_back.png",
        faction = "Rebellion_L" 
    }

    awing = GetDefinition("A-wing Squadron",11)
    bwing = GetDefinition("B-wing Squadron",14)
    xwing = GetDefinition("X-wing Squadron",13)
    ywing = GetDefinition("Y-wing Squadron",10)

    Squadron:new(awing, REBEL_SQUAD, {
        name = "Arvel Crynyo",
        front = CARDS_LEGACY.."Wave I/Squadrons/Arvel Crynyd.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/rebel/awing/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 16,
        aliases = {"Arvel Crynyo [Legacy]", "Arvel Crynyd [Legacy]"}
    })

    Squadron:new(bwing, REBEL_SQUAD, {
        name = "Braylen Stramm",
        front = CARDS_LEGACY.."Wave I/Squadrons/Braylen Stramm.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/rebel/bwing/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 19,
        aliases = {"Braylen Stramm [Legacy]", "Braylen_Stramm [Legacy]"}
    })

    Squadron:new(xwing, REBEL_SQUAD, {
        name = "Corran Horn (X-Wing)",
        front = CARDS_LEGACY.."Wave I/Squadrons/Corran Horn X-wing.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/rebel/xwing/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 20,
        aliases = {"Corran Horn [X-Wing] [Legacy]"}
    })

    Squadron:new(ywing, REBEL_SQUAD, {
        name = "Horton Salm",
        front = CARDS_LEGACY.."Wave I/Squadrons/Horton Salm.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/rebel/ywing/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 18,
        aliases = {"Horton Salm [Legacy]"}
    })
    
    arc_reb = {
        mesh = LEGACY_ASSETS.."dev/wave3/squadrons/arc_reb/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/arc_reb/base_diffuse.png",
        health = 7,
        move = 2,
        defense_tokens = {}
    }
    Squadron:new(arc_reb, REBEL_SQUAD, {
        name = "Alliance Overhaul ARC-170 Squadron",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/arc_reb/alliance-arc-170-squadron.png",
        cost = 15,
        aliases = {"Alliance Overhaul ARC-170 Squadron [Legacy]"}
    })
    Squadron:new(arc_reb, REBEL_SQUAD, {
        name = "Norra Wexley",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/arc_reb/norra-wexley-arc-170.png",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/arc_reb/ace_diffuse.png", 
        defense_tokens = {DEF_BRACE,DEF_EVADE},
        cost = 21,
        aliases = {"Norra Wexley [Legacy]"}
    })

    baudo = {
        mesh = LEGACY_ASSETS.."dev/wave3/squadrons/baudo/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/baudo/base_diffuse.png",
        health = 5,
        move = 3,
        defense_tokens = {}
    }
    Squadron:new(baudo, REBEL_SQUAD, {
        name = "Baudo-class Star Yacht",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/baudo/baudo-star-yacht.png",
        cost = 13,
        aliases = {"Baudo-class Star Yacht [Legacy]"}
    })
    Squadron:new(baudo, REBEL_SQUAD, {
        name = "Mirax Terrik",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/baudo/mirax-terrik.png",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/baudo/ace_diffuse.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 22,
        aliases = {"Mirax Terrik [Legacy]"}
    })

    kwing = {
        mesh = LEGACY_ASSETS.."dev/wave3/squadrons/kwing/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/kwing/base_diffuse.png",
        health = 7,
        move = 2,
        defense_tokens = {}
    }
    Squadron:new(kwing, REBEL_SQUAD, {
        name = "K-wing Squadron",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/kwing/k-wing-squadron.png",
        cost = 18,
        aliases = {"K-wing Squadron [Legacy]"}
    })
    Squadron:new(kwing, REBEL_SQUAD, {
        name = "Miranda Doni",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/kwing/miranda-doni.png",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/kwing/ace_diffuse.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 26,
        aliases = {"Miranda Doni [Legacy]"}
    })

    uwing = {
        mesh = LEGACY_ASSETS.."dev/wave3/squadrons/uwing/mesh.obj",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/uwing/base_diffuse.png",
        health = 4,
        move = 3,
        defense_tokens = {}
    }
    Squadron:new(uwing, REBEL_SQUAD, {
        name = "U-wing",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/uwing/u-wing.png",
        cost = 12,
        aliases = {"U-wing [Legacy]"}
    })
    Squadron:new(uwing, REBEL_SQUAD, {
        name = "Cassian Andor",
        front = LEGACY_ASSETS.."dev/wave3/squadrons/uwing/cassian-andor.png",
        diffuse = LEGACY_ASSETS.."dev/wave3/squadrons/uwing/ace_diffuse.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 16,
        aliases = {"Cassian Andor [Legacy]"}
    })
    
    UpdateCard("B-wing Squadron",14,{cost = 13,aliases={"B-wing Squadron [Rebalanced]"}})
    UpdateCard("E-wing Squadron",15,{cost = 14,aliases={"E-wing Squadron [Rebalanced]"}})
    UpdateCard("HWK-290",12,{cost = 10,aliases={"HWK-290 [Rebalanced]"}})
    UpdateCard("Lancer-class Pursuit Craft",15,{cost = 14,aliases={"Lancer Pursuit Craft [Rebalanced]"}})
    UpdateCard("YT-2400",16,{cost = 17,aliases={"YT-2400 [Rebalanced]"}})
    UpdateCard("Biggs Darklighter",19,{cost = 23,aliases={"Biggs Darklighter [Rebalanced]"}})
    UpdateCard("\"Dutch\" Vander",16,{cost = 18,aliases={"Dutch Vander [Rebalanced]"}})
    UpdateCard("Han Solo",26,{cost = 24,aliases={"Han Solo [Rebalanced]"}})
    UpdateCard("Jan Ors",19,{cost = 21,aliases={"Jan Ors [Rebalanced]"}})
    UpdateCard("Keyan Farlander",20,{cost = 19,aliases={"Keyan Farlander [Rebalanced]"}})
    UpdateCard("Lando Calrissian",23,{cost = 26,aliases={"Lando Calrissian [Rebalanced]"}})
    UpdateCard("Luke Skywalker",20,{
        front = CARDS_LEGACY.."Wave I/Squadrons/Luke Skywalker.png",
        --mesh = LEGACY_ASSETS..".obj",
        aliases = {"Luke Skywalker [Legacy]", "Luke Skywalker [Rebalanced]"},
        cost = 22
    })
    UpdateCard("Malee Hurra",26,{cost = 20,aliases={"Malee Hurra [Rebalanced]"}})
    UpdateCard("Shara Bey",17,{cost = 19,aliases={"Shara Bey [Rebalanced]"}})
    UpdateCard("Tycho Celchu",16,{cost = 18,aliases={"Tycho Celchu [Rebalanced]"}})
    UpdateCard("Wedge Antilles",19,{cost = 20,aliases={"Wedge Antilles [Rebalanced]"}})


------------------------------------
--new upgrade cards

Republic = {
    factions={"Republic_L"}
}
Separatist = {
    factions={"Separatist_L"}
}
CloneWars = {
    factions={"Republic_L","Separatist_L"}
}
Empire = {
    factions={"Empire_L"}
}
Rebel = {
    factions={"Rebellion_L"}
}

--commanders
Commander = {
    type="Commander",
    back = LEGACY_ASSETS.."/cards/commanders/back.png"
}
Card:new(Commander,Republic,{name="Admiral Coburn",  front = LEGACY_ASSETS.."cards/commanders/admiral-coburn.png", cost=25, aliases={"Admiral Coburn [Legacy]"}})
Card:new(Commander,Republic,{name="Yoda",  front = LEGACY_ASSETS.."cards/commanders/yoda.png", cost=27, aliases={"Yoda [Legacy]"}})
Card:new(Commander,Separatist,{name="Riff Tamson",  front = LEGACY_ASSETS.."cards/commanders/riff-tamson.png", cost=32, aliases={"Riff Tamson [Legacy]"}})
Card:new(Commander,Separatist,{name="Nute Gunray",  front = LEGACY_ASSETS.."cards/commanders/nute-gunray.png", cost=20, aliases={"Nute Gunray [Legacy]"}})
Card:new(Commander,Empire,{name="Gilad Pellaeon",  front = LEGACY_ASSETS.."cards/commanders/gilad-pellaeon.png", cost=20, aliases={"Gilad Pellaeon [Legacy]"}})
Card:new(Commander,Empire,{name="Admiral Rogriss",  front = LEGACY_ASSETS.."cards/commanders/admiral-rogriss.png", cost=25, aliases={"Admiral Rogriss [Legacy]"}})
Card:new(Commander,Rebel,{name="Admiral Nantz",  front = LEGACY_ASSETS.."cards/commanders/admiral-nantz.png", cost=26, aliases={"Admiral Nantz [Legacy]"}})
Card:new(Commander,Rebel,{name="Han Solo",  front = LEGACY_ASSETS.."cards/commanders/han-solo-commander.png", cost=30, aliases={"Han Solo [Legacy]"}})
Card:new(Commander,Empire,{name="Director Isard",  front = LEGACY_ASSETS.."dev/wave3/cards/isard_com.png", cost=28, aliases={"Director Isard [Legacy]"}})
Card:new(Commander,Republic,{name="Shaak Ti",  front = LEGACY_ASSETS.."dev/wave3/cards/shaak_com.png", cost=28, aliases={"Shaak Ti [Legacy]"}})
Card:new(Commander,Rebel,{name="Admiral Nammo",  front = LEGACY_ASSETS.."dev/wave3/cards/nammo_com.png", cost=26, aliases={"Admiral Nammo [Legacy]"}})
Card:new(Commander,Separatist,{name="Pors Tonith",  front = LEGACY_ASSETS.."dev/wave3/cards/pors_tonith.png", cost=28, aliases={"Pors Tonith [Legacy]"}})

UpdateCard("Commander Sato",27,{cost = 23,aliases={"Commander Sato [Rebalanced]"}})
--UpdateCard("Garm Bel Iblis",25,{cost = 22,aliases={"Garm Bel Iblis [Rebalanced]"}})
UpdateCard("General Madine",30,{cost = 20,aliases={"General Madine [Rebalanced]"}})
UpdateCard("Mon Mothma",27,{cost = 25,aliases={"Mon Mothma [Rebalanced]"}})
UpdateCard("Leia Organa",27,{cost = 24,aliases={"Leia Organa [Rebalanced]"}})

UpdateCard("Admiral Piett",22,{cost = 20,aliases={"Admiral Piett [Rebalanced]"}})
UpdateCard("Admiral Sloane",24,{cost = 30,aliases={"Admiral Sloane [Rebalanced]"}})
--UpdateCard("Darth Vader",36,{cost = 34,aliases={"Darth Vader [Rebalanced]"}})
UpdateCard("Emperor Palpatine",35,{cost = 30,aliases={"Emperor Palpatine [Rebalanced]"}})
--UpdateCard("Grand Admiral Thrawn",32,{cost = 30,aliases={"Grand Admiral Thrawn [Rebalanced]"}})
UpdateCard("Grand Moff Tarkin",28,{cost = 30,aliases={"Grand Moff Tarkin [Rebalanced]"}})
UpdateCard("Moff Jerjerrod",23,{cost = 28,aliases={"Moff Jerjerrod [Rebalanced]"}})

UpdateCard("Obi-Wan Kenobi",28,{cost = 20,aliases={"Obi-Wan Kenobi [Rebalanced]"}})

--UpdateCard("Count Dooku",30,{cost = 26,aliases={"Count Dooku [Rebalanced]"}})
UpdateCard("Kraken",30,{cost = 26,aliases={"Kraken [Rebalanced]"}})


--officers
Officer = {
    type="Officer",
    back = LEGACY_ASSETS.."/cards/officers/back.png"
}
Card:new(Officer,Republic,{name="Aayla Secura", front = LEGACY_ASSETS.."cards/officers/aayla-secura-officer.png", cost=5, aliases={"Aayla Secura [Legacy]"}})
Card:new(Officer,Republic,{name="Admiral Yularen", front = LEGACY_ASSETS.."cards/officers/admiral-yularen-officer.png", cost=7, aliases={"Admiral Yularen [Legacy]"}})
Card:new(Officer,Separatist,{name="K2-B4", front = LEGACY_ASSETS.."cards/officers/k2-b4.png", cost=6, aliases={"K2-B4 [Legacy]"}})
Card:new(Officer,Separatist,{name="Poggle the Lesser", front = LEGACY_ASSETS.."cards/officers/poggle-the-lesser.png", cost=6, aliases={"Poggle the Lesser [Legacy]"}})
Card:new(Officer,Empire,{name="Prince Admiral Krennel", front = LEGACY_ASSETS.."cards/officers/prince-admiral-krennel.png", cost=6, aliases={"Prince Admiral Krennel [Legacy]"}})
Card:new(Officer,Empire,{name="Joruus C'baoth", front = LEGACY_ASSETS.."cards/officers/joruus-cbaoth.png", cost=8, aliases={"Joruus C'baoth [Legacy]"}})
Card:new(Officer,Rebel,{name="Captain Onoma", front = LEGACY_ASSETS.."cards/officers/captain-onoma.png", cost=4, aliases={"Captain Onoma [Legacy]"}})
Card:new(Officer,Rebel,{name="Borsk Fey'lya", front = LEGACY_ASSETS.."cards/officers/borsk-feylya.png", cost=7, aliases={"Borsk Fey'lya [Legacy]"}})

UpdateCard("Walex Blissex",5,{cost = 7,aliases={"Walex Blissex [Rebalanced]"}})
UpdateCard("Ahsoka",5,{cost = 7,aliases={"Walex Blissex [Rebalanced]"}})

UpdateCard("Commandant Aresko",7,{cost = 5,aliases={"Commandant Aresko [Rebalanced]"}})
UpdateCard("Director Isard",3,{cost = 1,aliases={"Director Isard [Rebalanced]"}})
UpdateCard("Darth Vader",1,{name="Darth Vader (Officer)",cost = 3,aliases={"Darth Vader [Rebalanced]","Darth Vader (Officer) [Rebalanced]"}})
UpdateCard("Governor Pryce",7,{cost = 9,aliases={"Governor Pryce [Rebalanced]"}})

UpdateCard("Damage Control Officer",5,{cost = 3,aliases={"Damage Control Officer [Rebalanced]"}})
UpdateCard("Defense Liaison",3,{cost = 1,aliases={"Defense Liason [Rebalanced]"}})
UpdateCard("Engineering Captain",6,{cost = 4,aliases={"Engineering Captain [Rebalanced]"}})
UpdateCard("Navigation Officer",6,{cost = 4,aliases={"Navigation Officer [Rebalanced]"}})
UpdateCard("Support Officer",4,{cost = 2,aliases={"Support Officer [Rebalanced]"}})
UpdateCard("Tactical Expert",6,{cost = 4,aliases={"Tactical Expert [Rebalanced]"}})
UpdateCard("Veteran Captain",3,{cost = 2,aliases={"Veteran Captain [Rebalanced]"}})
UpdateCard("Weapons Liaison",3,{cost = 1,aliases={"Weapons Liaison [Rebalanced]"}})
UpdateCard("Wing Commander",6,{cost = 4,aliases={"Wing Commander [Rebalanced]"}})

--titles
Title = {
    type="Title",
    back = LEGACY_ASSETS.."/cards/titles/back.png"
}
Card:new(Title,Republic,{name="Carrion Spike", front = LEGACY_ASSETS.."cards/titles/carrion-spike.png", cost=6, aliases={"Carrion Spike [Legacy]"}})
Card:new(Title,Republic,{name="Stellar Rise", front = LEGACY_ASSETS.."cards/titles/stellar-rise.png", cost=3, aliases={"Stellar Rise [Legacy]"}})
Card:new(Title,Republic,{name="Surrogator", front = LEGACY_ASSETS.."cards/titles/surrogator.png", cost=5, aliases={"Surrogator [Legacy]"}})
Card:new(Title,Separatist,{name="Neimoidian Grasp", front = LEGACY_ASSETS.."cards/titles/neimoidian-grasp.png", cost=2, aliases={"Neimoidian Grasp [Legacy]"}})
Card:new(Title,Separatist,{name="Grappler", front = LEGACY_ASSETS.."cards/titles/grappler.png", cost=3, aliases={"Grappler [Legacy]"}})
Card:new(Title,Separatist,{name="Procurer", front = LEGACY_ASSETS.."cards/titles/procurer.png", cost=5, aliases={"Procurer [Legacy]"}})
Card:new(Title,Separatist,{name="Profusion", front = LEGACY_ASSETS.."cards/titles/profusion.png", cost=4, aliases={"Profusion [Legacy]"}})
Card:new(Title,Separatist,{name="Vuuntun Palaa", front = LEGACY_ASSETS.."cards/titles/vuuntun-palaa.png", cost=7, aliases={"Vuuntun Palaa [Legacy]"}})
Card:new(Title,Empire,{name="Abrogator", front = LEGACY_ASSETS.."cards/titles/abrogator.png", cost=5, aliases={"Abrogator [Legacy]"}})
Card:new(Title,Empire,{name="Binder", front = LEGACY_ASSETS.."cards/titles/binder.png", cost=5, aliases={"Binder [Legacy]"}})
Card:new(Title,Empire,{name="Eternal Wrath", front = LEGACY_ASSETS.."cards/titles/eternal-wrath.png", cost=6, aliases={"Eternal Wrath [Legacy]"}})
Card:new(Title,Empire,{name="Isolator", front = LEGACY_ASSETS.."cards/titles/isolator.png", cost=6, aliases={"Isolator [Legacy]"}})
Card:new(Title,Empire,{name="Katana Fleet Dreadnaught", front = LEGACY_ASSETS.."cards/titles/katana-fleet-dreadnaught.png", cost=2, aliases={"Katana Fleet Dreadnaught [Legacy]"}})
Card:new(Title,Empire,{name="Vendetta", front = LEGACY_ASSETS.."cards/titles/vendetta.png", cost=6, aliases={"Vendetta [Legacy]"}})
Card:new(Title,Rebel,{name="Allegiant", front = LEGACY_ASSETS.."cards/titles/allegiant.png", cost=5, aliases={"Allegiant [Legacy]"}})
Card:new(Title,Rebel,{name="Liberty Star", front = LEGACY_ASSETS.."cards/titles/liberty-star.png", cost=6, aliases={"Liberty Star [Legacy]"}})
Card:new(Title,Rebel,{name="Mon Remonda", front = LEGACY_ASSETS.."cards/titles/mon-remonda.png", cost=7, aliases={"Mon Remonda [Legacy]"}})
Card:new(Title,Rebel,{name="Remember Alderaan", front = LEGACY_ASSETS.."cards/titles/remember-alderaan.png", cost=3, aliases={"Remember Alderaan [Legacy]"}})
Card:new(Title,Rebel,{name="Tyrant's Bane", front = LEGACY_ASSETS.."cards/titles/tyrants-bane.png", cost=8, aliases={"Tyrant's Bane [Legacy]"}})

--UpdateCard("Concord",12,{cost = 8,aliases={"Concord [Rebalanced]"}})
UpdateCard("Dodonna's Pride",6,{cost = 3,aliases={"Dodonna's Pride [Rebalanced]"}})
UpdateCard("Independence",8,{cost = 4,aliases={"Independence [Rebalanced]"}})
UpdateCard("Redemption",8,{cost = 6,aliases={"Redemption [Rebalanced]"}})
UpdateCard("Jaina's Light",2,{cost = 3,aliases={"Jaina's Light [Rebalanced]"}})

UpdateCard("Warlord",8,{cost = 5,aliases={"Warlord [Rebalanced]"}})

UpdateCard("Patriot's Fist",6,{cost = 9,aliases={"Patriot's Fist [Rebalanced]"}})

--defensive retrofit
DefensiveRetrofit = {
    type="DefensiveRetrofit",
    back = LEGACY_ASSETS.."cards/defretro/back.png"
}
Card:new(DefensiveRetrofit,{name="Cloaking Device", front = LEGACY_ASSETS.."cards/defretro/cloaking-device.png", cost=10, aliases={"Cloaking Device [Legacy]"}})
Card:new(DefensiveRetrofit,{name="Flares", front = LEGACY_ASSETS.."cards/defretro/flares.png", cost=5, aliases={"Flares [Legacy]"}})

UpdateCard("Advanced Projectors",6,{cost = 4,aliases={"Advanced Projectors [Rebalanced]"}})
UpdateCard("Cluster Bombs",5,{cost = 2,aliases={"Cluster Bombs [Rebalanced]"}})
UpdateCard("Electronic Countermeasures",7,{cost = 8,aliases={"Electronic Countermeasures [Rebalanced]"}})
UpdateCard("Redundant Shields",8,{cost = 5,aliases={"Redundant Shields [Rebalanced]"}})
UpdateCard("Thermal Shields",5,{cost = 8,front=LEGACY_ASSETS.."cards/defretro/thermal_shields.png",aliases={"Thermal Shields [Rebalanced]"}})

--experimental retrofit
ExperimentalRetrofit = {
    type="ExperimentalRetrofit",
    back = LEGACY_ASSETS.."cards/exp/back.png"
}
Card:new(ExperimentalRetrofit,{name="Cloaking Field", front = LEGACY_ASSETS.."cards/exp/cloaking-field.png", cost=5, aliases={"Cloaking Field [Legacy]"}})
Card:new(ExperimentalRetrofit,{name="Grav Cone Projector", front = LEGACY_ASSETS.."cards/exp/grav-cone-projector.png", cost=10, aliases={"Grav Cone Projector [Legacy]"}})
Card:new(ExperimentalRetrofit,{name="Reversed Grav Well Projector", front = LEGACY_ASSETS.."cards/exp/reversed-grav-well-projector.png", cost=2, aliases={"Reversed Grav Well Projector [Legacy]"}})

--fleet command
FleetCommand = {
    type="FleetCommand",
    back = LEGACY_ASSETS.."cards/fleetcom/back.png"
}
-- Card:new(FleetCommand,{name="All Fighters, Follow Me!", front="https://i.imgur.com/pRqJy8Z.jpg", cost=5})

--fleet support
FleetSupport = {
    type="FleetSupport",
    back = "https://i.imgur.com/bH1FR0J.png"
}
-- Card:new(FleetSupport,{name="Bomber Command Center", front="https://i.imgur.com/slRsjXp.jpg", cost=8})

--ion cannons
IonCannons = {
    type="IonCannons",
    back = "https://i.imgur.com/CzYiC1u.png"
}

UpdateCard("High-Capacity Ion Turbines", 8,{cost = 6,aliases={"High-Capacity Ion Turbines [Rebalanced]"}})
UpdateCard("Ion Cannon Batteries", 5,{cost = 4,aliases={"Ion Cannon Batteries [Rebalanced]"}})
UpdateCard("NK-7 Ion Cannons", 10,{cost = 7,aliases={"NK-7 Ion Cannons [Rebalanced]"}})
UpdateCard("Point Defense Ion Cannons", 4,{cost = 6,aliases={"Point Defense Ion Cannons [Rebalanced]"}})
UpdateCard("SW-7 Ion Batteries", 5,{cost = 4,aliases={"SW-7 Ion Batteries [Rebalanced]"}})
UpdateCard("Leading Shots", 6,{cost = 5,aliases={"Leading Shots [Rebalanced]"}})

--offensive retrofit
OffensiveRetrofit = {
    type="OffensiveRetrofit",
    back = LEGACY_ASSETS.."cards/offretro/back.png"
}
Card:new(OffensiveRetrofit,{name="Advanced Guidance System", front = LEGACY_ASSETS.."cards/offretro/advanced-guidance-system.png", cost=4, aliases={"Advanced Guidance System [Legacy]"}})
Card:new(OffensiveRetrofit,{name="Drill Beak", front = LEGACY_ASSETS.."cards/offretro/drill-beak.png", cost=5, aliases={"Drill Beak [Legacy]"}})
Card:new(OffensiveRetrofit,{name="Enhanced Propulsion", front = LEGACY_ASSETS.."cards/offretro/enhanded-propulsion.png", cost=2, aliases={"Enhanced Propulsion [Legacy]"}})
Card:new(OffensiveRetrofit,{name="Reserve Bulk Hangar", front = LEGACY_ASSETS.."cards/offretro/reserve-bulk-hangar.png", cost=9, aliases={"Reserve Bulk Hangar [Legacy]"}})
Card:new(OffensiveRetrofit,{name="Tractor Tentacles", front = LEGACY_ASSETS.."cards/offretro/tractor-tentacles.png", cost=3, aliases={"Tractor Tentacles [Legacy]"}})

UpdateCard("Advanced Transponder Net",5,{cost = 3,aliases={"Advanced Transponder Net [Rebalanced]"}})
UpdateCard("Hardened Bulkheads",5,{cost = 3,aliases={"Hardened Bulkheads [Rebalanced]"}})
UpdateCard("Point Defense Reroute",5,{cost = 2,aliases={"Point Defense Reroute [Rebalanced]", "Point-Defense Reroute [Rebalanced]"}})
UpdateCard("Quad Laser Turrets",5,{cost = 3,aliases={"Quad Laser Turrets [Rebalanced]"}})
UpdateCard("Rapid Launch Bays",6,{cost = 4,aliases={"Rapid Launch Bays [Rebalanced]"}})

--ordnance
Ordnance = {
    type="Ordnance",
    back = LEGACY_ASSETS.."cards/ord/back.png"
}
Card:new(Ordnance,{name="Long Range Concussion Missiles", front = LEGACY_ASSETS.."cards/ord/long-range-concussion-missiles.png", cost=4, aliases={"Long Range Concussion Missiles [Legacy]"}})
Card:new(Ordnance,{name="Tracking Torpedoes", front = LEGACY_ASSETS.."cards/ord/tracking-torpedoes.png", cost=6, aliases={"Tracking Torpedoes [Legacy]"}})

UpdateCard("Expanded Launchers", 13,{cost = 10,aliases={"Expanded Launchers [Rebalanced]"}})
UpdateCard("External Racks", 4,{cost = 5,aliases={"External Racks [Rebalanced]"}})
UpdateCard("Rapid Reload", 8,{cost = 4,aliases={"Rapid Reload [Rebalanced]"}})

--superweapon & 'central control' custom upgrades
SuperWeapon = {
    type="SuperWeapon",
    back = "https://i.imgur.com/wAfp2ow.jpeg"
}

Card:new(SuperWeapon,Separatist,{name="Mega Ion Barrage", front = LEGACY_ASSETS.."dev/wave3/ships/subjugator/ionbarrage.png", cost=8, aliases={"Mega Ion Barrage [Legacy]"}})
Card:new(SuperWeapon,Separatist,{name="Mega Ion Disabler", front = LEGACY_ASSETS.."dev/wave3/ships/subjugator/iondisabler_v2.png", cost=12, aliases={"Mega Ion Disabler [Legacy]"}})
Card:new(SuperWeapon,Separatist,{name="Mega Ion Splash", front = LEGACY_ASSETS.."dev/wave3/ships/subjugator/ionsplash.png", cost=10, aliases={"Mega Ion Splash [Legacy]"}})

CentralControl = {
    type="SuperWeapon", --custom upgrade slot, using superweapon since it is underutilized across factions
    back = "https://i.imgur.com/wAfp2ow.jpeg"
}
Card:new(CentralControl,Separatist,{name="Interception Protocols", front = LEGACY_ASSETS.."cards/cencon/interception-protocols.png", cost=5, aliases={"Interception Protocols [Legacy]"}})
Card:new(CentralControl,Separatist,{name="Rogue Protocols", front = LEGACY_ASSETS.."cards/cencon/rogue-protocols.png", cost=10, aliases={"Rogue Protocols [Legacy]"}})
Card:new(CentralControl,Separatist,{name="Targeting Protocols", front = LEGACY_ASSETS.."cards/cencon/targeting-protocols.png", cost=7, aliases={"Targeting Protocols [Legacy]"}})

--support_team
SupportTeam = {
    type="SupportTeam",
    back = LEGACY_ASSETS.."cards/support/back.png"
}

Card:new(SupportTeam,Republic,{name="Clone Engineers", front = LEGACY_ASSETS.."cards/support/clone-engineers.png", cost=3, aliases={"Clone Engineers [Legacy]"}})
Card:new(SupportTeam,{name="Mon Calamari Shield Techs", front = LEGACY_ASSETS.."cards/support/mon-calamari-shield-techs.png", cost=5, aliases={"Mon Calamari Shield Techs [Legacy]"}})
Card:new(SupportTeam,{name="Repair Team", front = LEGACY_ASSETS.."cards/support/repair-team.png", cost=2, aliases={"Repair Team [Legacy]"}})

UpdateCard("Nav Team", 4,{cost = 2,aliases={"Nav Team [Rebalanced]"}})
UpdateCard("Engineering Team", 5,{cost = 3,aliases={"Engineering Team [Rebalanced]"}})

Turbolaser = {
    type="Turbolaser",
    back = LEGACY_ASSETS.."cards/turbo/back.png"
}
Card:new(Turbolaser,{name="Light Turbolaser Cannons", front = LEGACY_ASSETS.."cards/turbo/light-turbolaser-cannons.png", cost=6, aliases={"Light Turbolaser Cannons [Legacy]"}})
Card:new(Turbolaser,{name="XV9 Turbolasers", front = LEGACY_ASSETS.."cards/turbo/xv9-turbolasers.png", cost=5, aliases={"XV9 Turbolasers [Legacy]"}})
Card:new(Turbolaser,{name="Point Defense Cannons", front = LEGACY_ASSETS.."dev/wave3/cards/point-defense-cannons.png", cost=5, aliases={"Point Defense Cannons [Legacy]"}})

UpdateCard("Dual Turbolaser Turrets", 5,{cost = 3,aliases={"Dual Turbolaser Turrets [Rebalanced]"}})
UpdateCard("Heavy Turbolaser Turrets", 6,{cost = 4,aliases={"Heavy Turbolaser Turrets [Rebalanced]"}})
UpdateCard("Linked Turbolaser Towers", 7,{cost = 9,aliases={"Linked Turbolaser Towers [Rebalanced]"}})
--UpdateCard("Quad Turbolaser Cannons", 10,{cost = 7,aliases={"Quad Turbolaser Cannons [Rebalanced]"}})

--weapons team & offensive retrofit
WeaponsTeamAndOffensiveRetrofit = {
    type="WeaponsTeamAndOffensiveRetrofit",
    back = LEGACY_ASSETS.."cards/wepoff/back.png"
}
Card:new(WeaponsTeamAndOffensiveRetrofit,Separatist,{name="Asajj Ventress", front = LEGACY_ASSETS.."cards/wepoff/asajj-ventress-boarding-team.png", cost=7, aliases={"Asajj Ventress [Legacy]"}})
Card:new(WeaponsTeamAndOffensiveRetrofit,Separatist,{name="BX Commando Droids", front = LEGACY_ASSETS.."cards/wepoff/bx-commando-droids.png", cost=2, aliases={"BX Commando Droids [Legacy]"}})

UpdateCard("Darth Vader",3,{name="Darth Vader (BP)",cost = 3,aliases={"Darth Vader [Rebalanced]","Darth Vader (BP) [Rebalanced]"}})

--weapons_team
WeaponsTeam = {
    type="WeaponsTeam",
    back = LEGACY_ASSETS.."cards/wepteam/back.png"
}
Card:new(WeaponsTeam,{name="Targeting Team", front = LEGACY_ASSETS.."cards/wepteam/targeting-team.png", cost=5, aliases={"Targeting Team [Legacy]"}})

UpdateCard("Sensor Team", 5,{cost = 3,aliases={"Sensor Team [Rebalanced]"}})

printToAll("Finished loading Armada Legacy collection!",{1,0.5,0})

------------------------------------

--objectives
-- Objective = {
--     type="Objective",
--     back = "https://i.imgur.com/6mOLyyo.jpeg"
-- }
-- Assault = { category = "Assault" }
-- Card:new(Assault, Objective, {name="Advanced Gunnery", front="https://i.imgur.com/3dV3CQL.png"})
-- Defense = { category = "Defense" }
-- Card:new(Defense, Objective, {name="Abandoned Mining Facility", front="https://i.imgur.com/FisDnrA.png", victory=10})
-- Navigation = { category = "Navigation" }
-- Card:new(Navigation, Objective, {name="Dangerous Territory", front="https://i.imgur.com/DIlMCHD.png", victory=15})
-- Special = { category = "Special" }
-- Card:new(Special, Objective, {name="Base Defense: Armed Station", front="https://i.imgur.com/uuS6Bgr.png"})


end

-- DO NOT MODIFY CODE BELOW THIS, OR MOD DB MAY NOT WORK!
ASSETS_ROOT = 'https://raw.githubusercontent.com/valadian/TabletopSimulatorIncludeDir/master/TTS_armada/assets/'
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
Ship = { collider = "", convex = true, type = 1, material = 3, maneuver = {},
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
SmallShip = { collider = ASSETS_ROOT..'misc/bases/small.obj' } --"http://paste.ee/r/eDbf1"
MediumShip = { collider = ASSETS_ROOT..'misc/bases/medium.obj' } --"http://paste.ee/r/6LYTT"
LargeShip = { collider = ASSETS_ROOT..'misc/bases/large.obj'} --"http://paste.ee/r/a7mfW"
MassiveShip = { collider = LEGACY_ASSETS..'dev/wave3/ships/subjugator/massive_base_mesh.obj'} --https://paste.ee/r/AE0fV
HugeShip = { collider = ASSETS_ROOT..'misc/bases/huge.obj' } --"http://paste.ee/r/ClCL3"
Squadron = { collider = ASSETS_ROOT..'misc/bases/squad.obj', convex = false, type = 1, --"http://paste.ee/r/ZKM7E" --http://paste.ee/r/nAMCQ
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
function UpdateCard(current_name, current_cost, o) -- MUST
    local update = {}
    update['name'] = current_name
    update['cost'] = current_cost or 0
    update['o'] = o
    spawner = findObjectByName("Armada Spawner")
    if spawner~=nil then
        spawner.call("API_UpdateCard",update)
    end
end
function GetDefinition(name, cost)
    local o = {}
    o['name'] = name
    o['cost'] = cost or 0
    spawner = findObjectByName("Armada Spawner")
    if spawner~=nil then
        return spawner.call("API_GetDefinition",o)
    end
end