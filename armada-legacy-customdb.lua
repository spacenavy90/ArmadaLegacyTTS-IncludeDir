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
function onload()
	printToAll("Loading Armada Legacy collection",{1,0.5,0})
	
    --republic ships
	REPUBLIC_SHIP = {
		back = LEGACY_ASSETS.."ships/republic/card_back.jpg",
        faction = "Republic"
    }

    Ship:new(SmallShip,REPUBLIC_SHIP, {
        name = "Arquitens-class Command Cruiser",
        front = LEGACY_ASSETS.."ships/republic/rep_arq/arquitens-command-cruiser.png",
        mesh = LEGACY_ASSETS.."ships/republic/rep_arq/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/republic/rep_arq/reparq_command_texture.png",
        ruler = LEGACY_ASSETS.."ships/empire/arquitens/ruler.obj", 
        maneuver = {{"II"},{"-","II"},{"-","-","II"}},
        defense_tokens = {DEF_CONTAIN, DEF_SALVO, DEF_EVADE, DEF_REDIRECT},
        shields = {2,2,2,2}, -- Front, left, right, rear
        cost = 60,
        aliases = {"Arquitens Command Cruiser [Legacy]"},
        command = 2
    })

    Ship:new(SmallShip,REPUBLIC_SHIP, {
        name = "Arquitens-class Light Cruiser",
        front = LEGACY_ASSETS.."ships/republic/rep_arq/arquitens-light-cruiser.png",
        mesh = LEGACY_ASSETS.."ships/republic/rep_arq/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/republic/rep_arq/reparq_light_texture.png",
        ruler = LEGACY_ASSETS.."ships/empire/arquitens/ruler.obj", 
        maneuver = {{"II"},{"-","II"},{"-","-","II"}},
        defense_tokens = {DEF_CONTAIN, DEF_SALVO, DEF_EVADE, DEF_REDIRECT},
        shields = {2,2,2,2}, -- Front, left, right, rear
        cost = 58,
        aliases = {"Arquitens Light Cruiser [Legacy]"},
        command = 2
    })

    Ship:new(SmallShip,REPUBLIC_SHIP, {
        name = "IPV-2C Stealth Corvette",
        front = LEGACY_ASSETS.."ships/republic/ipv2/ipv-2c-stealth-corvette.png",
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
        front = LEGACY_ASSETS.."ships/republic/ipv2/ipv-2c-support-corvette.png",
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

------------------------------------
    --republic squadrons
    REPUBLIC_SQUAD = {
		back = LEGACY_ASSETS.."ships/republic/card_back.jpg",
        faction = "Republic"
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
        front = LEGACY_ASSETS.."squadrons/republic/eta2/eta-2-squadron.png",
        cost = 15,
        aliases = {"ETA-2 Actis Squadron [Legacy]", "ETA-2", "ETA2"}
    })
    Squadron:new(eta2, REPUBLIC_SQUAD, {
        name = "Anakin Skywalker (ETA-2)",
        front = LEGACY_ASSETS.."squadrons/republic/eta2/anakin-eta.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/eta2/eta2_anakin_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 24,
        aliases = {"Anakin Skywalker [ETA] [Legacy]"}
    })
    Squadron:new(eta2, REPUBLIC_SQUAD, {
        name = "Obi-Wan Kenobi (ETA-2)",
        front = LEGACY_ASSETS.."squadrons/republic/eta2/obi-wan-squadron.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/eta2/eta2_obiwan_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 24,
        aliases = {"Obi-Wan Kenobi [ETA] [Legacy]"}
    })
    Squadron:new(eta2, REPUBLIC_SQUAD, {
        name = "Aayla Secura (ETA-2)",
        front = LEGACY_ASSETS.."squadrons/republic/eta2/aayla-secura.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/eta2/eta2_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 23,
        aliases = {"Aayla Secura [Legacy]"}
    })
    Squadron:new(eta2, REPUBLIC_SQUAD, {
        name = "Shaak Ti (ETA-2)",
        front = LEGACY_ASSETS.."squadrons/republic/eta2/shaak-ti.png",
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
        front = LEGACY_ASSETS.."squadrons/republic/clone-z95/clonez95_card.jpg",
        cost = 10,
        aliases = {"Clone Z-95 Squadron [Legacy]", "Clone Z-95"}
    })
    Squadron:new(clone_z95, REPUBLIC_SQUAD, {
        name = "Stub",
        front = LEGACY_ASSETS.."squadrons/republic/clone-z95/stub_card.png",
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
        front = LEGACY_ASSETS.."squadrons/republic/laati/laati_card.jpg",
        cost = 17,
        aliases = {"LAAT/i Gunship [Legacy]", "LAAT/i"}
    })
    Squadron:new(laat_i, REPUBLIC_SQUAD, {
        name = "Hawk",
        front = LEGACY_ASSETS.."squadrons/republic/laati/hawk_card.png",
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
        front = LEGACY_ASSETS.."squadrons/republic/g9-rigger/g9_card.jpg",
        cost = 13,
        aliases = {"G9 Rigger-class Freighter [Legacy]"}
    })
    Squadron:new(g9_rigger, REPUBLIC_SQUAD, {
        name = "Anakin Skywalker (G9)",
        front = LEGACY_ASSETS.."squadrons/republic/g9-rigger/anakin_card.png",
        diffuse = LEGACY_ASSETS.."squadrons/republic/g9-rigger/g9rigger_ace_texture.png", 
        defense_tokens = {DEF_BRACE},
        cost = 27,
        aliases = {"Anakin Skywalker [G9] [Legacy]"}
    })

------------------------------------
    --separatist ships
    SEPARATIST_SHIP = {
        back =      LEGACY_ASSETS.."ships/separatist/card_back.jpg",
        faction = "Separatist"
    }

    Ship:new(SmallShip,SEPARATIST_SHIP, {
        name = "Trident-class Assault Ships",
        front = LEGACY_ASSETS.."ships/separatist/trident/trident-assault-ships.png",
        mesh = LEGACY_ASSETS.."ships/separatist/trident/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/separatist/trident/trident_a_texture.png",
        ruler = LEGACY_ASSETS.."ships/separatist/hardcell/ruler.obj", 
        maneuver = {{"II"},{"I","I"},{"-","II","I"}},
        defense_tokens = {DEF_SCATTER, DEF_EVADE},
        shields = {2,1,1,1}, -- Front, left, right, rear
        cost = 30,
        aliases = {"Trident Assault Ships [Legacy]"},
        command = 1
        })

    Ship:new(SmallShip,SEPARATIST_SHIP, {
        name = "Trident-class Assault Carriers",
        front = LEGACY_ASSETS.."ships/separatist/trident/trident-assault-carriers.png",
        mesh = LEGACY_ASSETS.."ships/separatist/trident/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/separatist/trident/trident_c_texture.png",
        ruler = LEGACY_ASSETS.."ships/separatist/hardcell/ruler.obj", 
        maneuver = {{"II"},{"I","I"},{"-","II","I"}},
        defense_tokens = {DEF_SCATTER, DEF_EVADE},
        shields = {2,1,1,1}, -- Front, left, right, rear
        cost = 32,
        aliases = {"Trident Assault Carriers [Legacy]"},
        command = 1
        })

    Ship:new(LargeShip,SEPARATIST_SHIP, {
        name = "Lucrehulk-class Battleship",
        front = LEGACY_ASSETS.."ships/separatist/lucrehulk/lucrehulk-battleship.png",
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
        front = LEGACY_ASSETS.."ships/separatist/lucrehulk/lucrehulk-droid-control-ship.png",
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

------------------------------------
    --separatist squadrons
    SEPARATIST_SQUAD = {
        back =      LEGACY_ASSETS.."ships/separatist/card_back.jpg",
        faction = "Separatist"
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
        front = LEGACY_ASSETS.."squadrons/separatist/nantex/nantex_card.png",
        cost = 11,
        aliases = {"Nantex Starfighter Squadron [Legacy]"}
    })
    Squadron:new(nantex, SEPARATIST_SQUAD, {
        name = "Sun Fac",
        front = LEGACY_ASSETS.."squadrons/separatist/nantex/sunfac_card.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/nantex/nantex_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 19,
        aliases = {"Sun Fac [Legacy]"}
    })
    Squadron:new(nantex, SEPARATIST_SQUAD, {
        name = "Gorgol",
        front = LEGACY_ASSETS.."squadrons/separatist/nantex/gorgol_card.png",
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
        front = LEGACY_ASSETS.."squadrons/separatist/hmp/hmp_card.png",
        cost = 17,
        aliases = {"HMP Droid Gunship [Legacy]"}
    })
    Squadron:new(hmp_gunship, SEPARATIST_SQUAD, {
        name = "Geonosian Prototype",
        front = LEGACY_ASSETS.."squadrons/separatist/hmp/geoproto_card.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/hmp/hmp_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 22,
        aliases = {"Geonosian Prototype [Legacy]"}
    })
    Squadron:new(hmp_gunship, SEPARATIST_SQUAD, {
        name = "DGS-047",
        front = LEGACY_ASSETS.."squadrons/separatist/hmp/dgs047_card.png",
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
        front = LEGACY_ASSETS.."squadrons/separatist/sith-infil/sithinfil_card.png",
        cost = 17,
        aliases = {"Sith Infiltrator [Legacy]"}
    })
    Squadron:new(sith_infil, SEPARATIST_SQUAD, {
        name = "Count Dooku",
        front = LEGACY_ASSETS.."squadrons/separatist/sith-infil/dooku_card.png",
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
        front = LEGACY_ASSETS.."squadrons/separatist/rogue/roguestar_card.png",
        cost = 15,
        aliases = {"Rogue Starfighter Squadron [Legacy]"}
    })
    Squadron:new(rogue_fighter, SEPARATIST_SQUAD, {
        name = "Magnaguard Protectors",
        front = LEGACY_ASSETS.."squadrons/separatist/rogue/magna_card.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/rogue/rogue_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 21,
        aliases = {"Magnaguard Protectors [Legacy]"}
    })
    Squadron:new(rogue_fighter, SEPARATIST_SQUAD, {
        name = "Cad Bane",
        front = LEGACY_ASSETS.."squadrons/separatist/rogue/cadbane_card.png",
        diffuse = LEGACY_ASSETS.."squadrons/separatist/rogue/rogue_ace_texture.png", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 22,
        aliases = {"Cad Bane [Legacy]"}
    })

------------------------------------
    --empire ships
    EMPIRE_SHIP = {
        back = LEGACY_ASSETS.."ships/empire/card_back.jpg",
        faction = "Empire"
    }

    Ship:new(MediumShip,EMPIRE_SHIP, {
        name = "Dreadnaught-class Imperial Refit",
        front = LEGACY_ASSETS.."ships/empire/dread/dreadnaught-imperial-refit.png",
        mesh = LEGACY_ASSETS.."ships/empire/dread/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/empire/dread/dread_imp_texture.png",
        ruler = LEGACY_ASSETS.."ships/rebel/nebulon/ruler.obj", 
        maneuver = {{"I"},{"I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_BRACE, DEF_BRACE},
        shields = {3,3,3,1}, -- Front, left, right, rear
        cost = 64,
        aliases = {"Dreadnaught Imperial Refit [Legacy]"},
        command = 3
        })

    Ship:new(MediumShip,EMPIRE_SHIP, {
        name = "Dreadnaught-class Katana Refit",
        front = LEGACY_ASSETS.."ships/empire/dread/dreadnaught-katana-refit.png",
        mesh = LEGACY_ASSETS.."ships/empire/dread/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/empire/dread/dread_katana_texture.png",
        ruler = LEGACY_ASSETS.."ships/rebel/nebulon/ruler.obj", 
        maneuver = {{"I"},{"I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_BRACE, DEF_BRACE},
        shields = {3,3,3,1}, -- Front, left, right, rear
        cost = 62,
        aliases = {"Dreadnaught Katana Refit [Legacy]"},
        command = 3
        })

    Ship:new(LargeShip,EMPIRE_SHIP, {
        name = "Interdictor-class Star Destroyer",
        front = LEGACY_ASSETS.."ships/empire/interdictor-sd/interdictor-star-destroyer.png",
        mesh = LEGACY_ASSETS.."ships/empire/interdictor-sd/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/empire/interdictor-sd/interdictorsd-sd-texture.png",
        ruler = LEGACY_ASSETS.."ships/empire/imperial/ruler.obj",
        maneuver = {{"I"},{"I","I"},{"I","-","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_CONTAIN, DEF_BRACE, DEF_REDIRECT},
        shields = {4,3,3,2}, -- Front, left, right, rear
        cost = 110,
        aliases = {"Interdictor Star Destroyer [Legacy]"},
        command = 3
        })

    Ship:new(LargeShip,EMPIRE_SHIP, {
        name = "Interdictor-class Prototype",
        front = LEGACY_ASSETS.."ships/empire/interdictor-sd/interdictor-prototype.png",
        mesh = LEGACY_ASSETS.."ships/empire/interdictor-sd/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/empire/interdictor-sd/interdictorsd-proto-texture.png",
        ruler = LEGACY_ASSETS.."ships/empire/imperial/ruler.obj",
        maneuver = {{"I"},{"I","I"},{"I","-","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_CONTAIN, DEF_BRACE, DEF_REDIRECT},
        shields = {4,3,3,2}, -- Front, left, right, rear
        cost = 100,
        aliases = {"Interdictor Prototype [Legacy]"},
        command = 3
        })

------------------------------------
    --empire squadrons
    EMPIRE_SQUAD = {
        back = LEGACY_ASSETS.."squadrons/empire/card_back.jpg",
        faction = "Empire"
    }

    TIE_ADV = GetDefinition("TIE Advanced Squadron",12)
    TIE_FIG = GetDefinition("TIE Fighter Squadron",8)
    TIE_BOM = GetDefinition("TIE Bomber Squadron",9)
    TIE_INT = GetDefinition("TIE Interceptor Squadron",11)

    Squadron:new(TIE_ADV, EMPIRE_SQUAD, {
        name = "Maarek Stele (TIE/x1)",
        front = LEGACY_ASSETS.."squadrons/empire/adv/maarek_card.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/empire/adv/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 18,
        aliases = {"Maarek Stele [TIE/x1] [Legacy]"}
    })

    UpdateCard("Darth Vader",21,{
        name = "Darth Vader (TIE/x1)",
        front = LEGACY_ASSETS.."squadrons/empire/adv/vader_new_card.png",
        --mesh = LEGACY_ASSETS..".obj",
        aliases = {"Darth Vader [Rebalanced]"},
        cost = 25
    })

    Squadron:new(TIE_FIG, EMPIRE_SQUAD, {
        name = "Iden Versio",
        front = LEGACY_ASSETS.."squadrons/empire/tie/iden_card.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/empire/tie/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 17,
        aliases = {"Iden Versio [Legacy]"}
    })

    Squadron:new(TIE_BOM, EMPIRE_SQUAD, {
        name = "Tomax Bren",
        front = LEGACY_ASSETS.."squadrons/empire/bom/tomax_card.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/empire/bom/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 16,
        aliases = {"Tomax Bren [Legacy]"}
    })

    Squadron:new(TIE_INT, EMPIRE_SQUAD, {
        name = "Turr Phennir",
        front = LEGACY_ASSETS.."squadrons/empire/int/turr_card.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/empire/int/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 18,
        aliases = {"Turr Phennir [Legacy]"}
    })


------------------------------------
    --rebel ships
    REBEL_SHIP = {
        back = LEGACY_ASSETS.."ships/rebel/card_back.jpg",
        faction = "Rebellion" 
    }

    Ship:new(MediumShip,REBEL_SHIP, {
        name = "Assault Frigate Mark I A",
        front = LEGACY_ASSETS.."ships/rebel/afm1/assault-frigate-mki-a.png",
        mesh = LEGACY_ASSETS.."ships/rebel/afm1/afm1a_mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/rebel/afm1/afm1_a_texture.png",
        ruler = LEGACY_ASSETS.."ships/rebel/nebulon/ruler.obj", 
        maneuver = {{"II"},{"I","I"},{"I","I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_SALVO, DEF_EVADE, DEF_BRACE},
        shields = {3,3,3,2}, -- Front, left, right, rear
        cost = 72,
        aliases = {"Assault Frigate Mark I A [Legacy]", "Assault Frig. Mk.I A [Legacy]"},
        command = 2
        })

    Ship:new(MediumShip,REBEL_SHIP, {
        name = "Assault Frigate Mark I B",
        front = LEGACY_ASSETS.."ships/rebel/afm1/assault-frigate-mki-b.png",
        mesh = LEGACY_ASSETS.."ships/rebel/afm1/afm1b_mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/rebel/afm1/afm1_b_texture.png",
        ruler = LEGACY_ASSETS.."ships/rebel/nebulon/ruler.obj", 
        maneuver = {{"II"},{"I","I"},{"I","I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_SALVO, DEF_EVADE, DEF_BRACE},
        shields = {3,3,3,2}, -- Front, left, right, rear
        cost = 68,
        aliases = {"Assault Frigate Mark I B [Legacy]", "Assault Frig. Mk.I B [Legacy]"},
        command = 2
        })

    Ship:new(LargeShip,REBEL_SHIP, {
        name = "MC80B Command Cruiser",
        front = LEGACY_ASSETS.."ships/rebel/mc80b/mc80b-command-cruiser.png",
        mesh = LEGACY_ASSETS.."ships/rebel/mc80b/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/rebel/mc80b/mc80b-command-texture.png",
        ruler = LEGACY_ASSETS.."ships/rebel/mc75/ruler.obj",
        maneuver = {{"I"},{"I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_CONTAIN, DEF_BRACE, DEF_REDIRECT},
        shields = {4,4,4,3}, -- Front, left, right, rear
        cost = 110,
        aliases = {"MC80B Command Cruiser [Legacy]", "Command Cruiser [Legacy]"},
        command = 3
        })

    Ship:new(LargeShip,REBEL_SHIP, {
        name = "MC80B Heavy Cruiser",
        front = LEGACY_ASSETS.."ships/rebel/mc80b/mc80b-heavy-cruiser.png",
        mesh = LEGACY_ASSETS.."ships/rebel/mc80b/mesh.obj",
        diffuse = LEGACY_ASSETS.."ships/rebel/mc80b/mc80b-heavy-texture.png",
        ruler = LEGACY_ASSETS.."ships/rebel/mc75/ruler.obj",
        maneuver = {{"I"},{"I","I"}},
        defense_tokens = {DEF_REDIRECT, DEF_CONTAIN, DEF_BRACE, DEF_REDIRECT},
        shields = {4,4,4,3}, -- Front, left, right, rear
        cost = 114,
        aliases = {"MC80B Heavy Cruiser [Legacy]", "Heavy Cruiser [Legacy]"},
        command = 3
        })

------------------------------------
    --rebel squadrons
    REBEL_SQUAD = {
        back = LEGACY_ASSETS.."squadrons/rebel/card_back.jpg",
        faction = "Rebellion" 
    }

    awing = GetDefinition("A-wing Squadron",11)
    bwing = GetDefinition("B-wing Squadron",14)
    xwing = GetDefinition("X-wing Squadron",13)
    ywing = GetDefinition("Y-wing Squadron",10)

    Squadron:new(awing, REBEL_SQUAD, {
        name = "Arvel Crynyo",
        front = LEGACY_ASSETS.."squadrons/rebel/awing/arvel_card.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/rebel/awing/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_SCATTER},
        cost = 16,
        aliases = {"Arvel Crynyo [Legacy]", "Arvel Crynyd [Legacy]"}
    })

    Squadron:new(bwing, REBEL_SQUAD, {
        name = "Braylen Stramm",
        front = LEGACY_ASSETS.."squadrons/rebel/bwing/braylen_card.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/rebel/bwing/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 19,
        aliases = {"Braylen Stramm [Legacy]", "Braylen_Stramm [Legacy"}
    })

    Squadron:new(xwing, REBEL_SQUAD, {
        name = "Corran Horn (X-Wing)",
        front = LEGACY_ASSETS.."squadrons/rebel/xwing/corran_card.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/rebel/xwing/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 20,
        aliases = {"Corran Horn [X-Wing] [Legacy]"}
    })

    UpdateCard("Luke Skywalker",20,{
        front = LEGACY_ASSETS.."squadrons/rebel/xwing/luke_new_card.png",
        --mesh = LEGACY_ASSETS..".obj",
        aliases = {"Luke Skywalker [Legacy]", "Luke Skywalker [Rebalanced]"},
        cost = 22
    })

    Squadron:new(ywing, REBEL_SQUAD, {
        name = "Horton Salm",
        front = LEGACY_ASSETS.."squadrons/rebel/ywing/horton_card.png",
        --mesh = LEGACY_ASSETS..".obj",
        diffuse = LEGACY_ASSETS.."squadrons/rebel/ywing/ace_diffuse.jpg", 
        defense_tokens = {DEF_BRACE,DEF_BRACE},
        cost = 18,
        aliases = {"Horton Salm [Legacy]"}
    })

------------------------------------
--new upgrade cards

Republic = {
    factions={"Republic"}
}
Separatist = {
    factions={"Separatist"}
}
CloneWars = {
    factions={"Republic","Separatist"}
}
Empire = {
    factions={"Empire"}
}
Rebel = {
    factions={"Rebellion"}
}

--commanders
Commander = {
    type="Commander",
    back = LEGACY_ASSETS.."/cards/commanders/back.png"
}
Card:new(Commander,Republic,{name="Admiral Coburn",  front=LEGACY_ASSETS.."cards/commanders/admiral-coburn.png", cost=25})
Card:new(Commander,Republic,{name="Yoda",  front=LEGACY_ASSETS.."cards/commanders/yoda.png", cost=27})
Card:new(Commander,Separatist,{name="Riff Tamson",  front=LEGACY_ASSETS.."cards/commanders/riff-tamson.png", cost=32})
Card:new(Commander,Separatist,{name="Nute Gunray",  front=LEGACY_ASSETS.."cards/commanders/nute-gunray.png", cost=20})
Card:new(Commander,Empire,{name="Gilad Pellaeon",  front=LEGACY_ASSETS.."cards/commanders/gilad-pellaeon.png", cost=20})
Card:new(Commander,Empire,{name="Admiral Rogriss",  front=LEGACY_ASSETS.."cards/commanders/admiral-rogriss.png", cost=25})
Card:new(Commander,Rebel,{name="Admiral Nantz",  front=LEGACY_ASSETS.."cards/commanders/admiral-nantz.png", cost=26})
Card:new(Commander,Rebel,{name="Han Solo",  front=LEGACY_ASSETS.."cards/commanders/han-solo-commander.png", cost=30})

--officers
Officer = {
    type="Officer",
    back = LEGACY_ASSETS.."/cards/officers/back.png"
}
Card:new(Officer,Republic,{name="Aayla Secura", front=LEGACY_ASSETS.."cards/officers/aayla-secura-officer.png", cost=5})
Card:new(Officer,Republic,{name="Admiral Yularen", front=LEGACY_ASSETS.."cards/officers/admiral-yularen-officer.png", cost=7})
Card:new(Officer,Separatist,{name="K2-B4", front=LEGACY_ASSETS.."cards/officers/k2-b4.png", cost=6})
Card:new(Officer,Separatist,{name="Poggle the Lesser", front=LEGACY_ASSETS.."cards/officers/poggle-the-lesser.png", cost=6})
Card:new(Officer,Empire,{name="Prince Admiral Krennel", front=LEGACY_ASSETS.."cards/officers/prince-admiral-krennel.png", cost=6})
Card:new(Officer,Empire,{name="Joruus C'baoth", front=LEGACY_ASSETS.."cards/officers/joruus-cbaoth.png", cost=8})
Card:new(Officer,Rebel,{name="Captain Onoma", front=LEGACY_ASSETS.."cards/officers/captain-onoma.png", cost=4})
Card:new(Officer,Rebel,{name="Borsk Fey'lya", front=LEGACY_ASSETS.."cards/officers/borsk-feylya.png", cost=7})

--titles
Title = {
    type="Title",
    back = LEGACY_ASSETS.."/cards/titles/back.png"
}
Card:new(Title,Republic,{name="Carrion Spike", front=LEGACY_ASSETS.."cards/titles/carrion-spike.png", cost=6})
Card:new(Title,Republic,{name="Stellar Rise", front=LEGACY_ASSETS.."cards/titles/stellar-rise.png", cost=3})
Card:new(Title,Republic,{name="Surrogator", front=LEGACY_ASSETS.."cards/titles/surrogator.png", cost=5})
Card:new(Title,Separatist,{name="Neimoidian Grasp", front=LEGACY_ASSETS.."cards/titles/neimoidian-grasp.png", cost=2})
Card:new(Title,Separatist,{name="Grappler", front=LEGACY_ASSETS.."cards/titles/grappler.png", cost=3})
Card:new(Title,Separatist,{name="Procurer", front=LEGACY_ASSETS.."cards/titles/procurer.png", cost=5})
Card:new(Title,Separatist,{name="Profusion", front=LEGACY_ASSETS.."cards/titles/profusion.png", cost=4})
Card:new(Title,Separatist,{name="Vuuntun Palaa", front=LEGACY_ASSETS.."cards/titles/vuuntun-palaa.png", cost=7})
Card:new(Title,Empire,{name="Abrogator", front=LEGACY_ASSETS.."cards/titles/abrogator.png", cost=5})
Card:new(Title,Empire,{name="Binder", front=LEGACY_ASSETS.."cards/titles/binder.png", cost=5})
Card:new(Title,Empire,{name="Eternal Wrath", front=LEGACY_ASSETS.."cards/titles/eternal-wrath.png", cost=6})
Card:new(Title,Empire,{name="Isolator", front=LEGACY_ASSETS.."cards/titles/isolator.png", cost=6})
Card:new(Title,Empire,{name="Katana Fleet Dreadnaught", front=LEGACY_ASSETS.."cards/titles/katana-fleet-dreadnaught.png", cost=2})
Card:new(Title,Empire,{name="Vendetta", front=LEGACY_ASSETS.."cards/titles/vendetta.png", cost=6})
Card:new(Title,Rebel,{name="Allegiant", front=LEGACY_ASSETS.."cards/titles/allegiant.png", cost=5})
Card:new(Title,Rebel,{name="Liberty Star", front=LEGACY_ASSETS.."cards/titles/liberty-star.png", cost=6})
Card:new(Title,Rebel,{name="Mon Remonda", front=LEGACY_ASSETS.."cards/titles/mon-remonda.png", cost=7})
Card:new(Title,Rebel,{name="Remember Alderaan", front=LEGACY_ASSETS.."cards/titles/remember-alderaan.png", cost=3})
Card:new(Title,Rebel,{name="Tyrant's Bane", front=LEGACY_ASSETS.."cards/titles/tyrants-bane.png", cost=8})

--defensive retrofit
DefensiveRetrofit = {
    type="DefensiveRetrofit",
    back = LEGACY_ASSETS.."cards/defretro/back.png"
}
Card:new(DefensiveRetrofit,{name="Cloaking Device", front=LEGACY_ASSETS.."cards/defretro/cloaking-device.png", cost=10})
Card:new(DefensiveRetrofit,{name="Flares", front=LEGACY_ASSETS.."cards/defretro/flares.png", cost=5})

--experimental retrofit
ExperimentalRetrofit = {
    type="ExperimentalRetrofit",
    back = LEGACY_ASSETS.."cards/exp/back.png"
}
Card:new(ExperimentalRetrofit,{name="Cloaking Field", front=LEGACY_ASSETS.."cards/exp/cloaking-field.png", cost=5})
Card:new(ExperimentalRetrofit,{name="Grav Cone Projector", front=LEGACY_ASSETS.."cards/exp/grav-cone-projector.png", cost=10})
Card:new(ExperimentalRetrofit,{name="Reversed Grav Well Projector", front=LEGACY_ASSETS.."cards/exp/reversed-grav-well-projector.png", cost=2})

--fleet command
FleetCommand = {
    type="FleetCommand",
    back = LEGACY_ASSETS.."cards/fleetcom/back.png"
}
-- Card:new(FleetCommand,{name="All Fighters, Follow Me!", front="https://i.imgur.com/pRqJy8Z.jpg", cost=5})

--fleet support
-- FleetSupport = {
--     type="FleetSupport",
--     back = "https://i.imgur.com/bH1FR0J.png"
-- }
-- Card:new(FleetSupport,{name="Bomber Command Center", front="https://i.imgur.com/slRsjXp.jpg", cost=8})

--ion cannons
-- IonCannons = {
--     type="IonCannons",
--     back = "https://i.imgur.com/CzYiC1u.png"
-- }
-- Card:new(IonCannons,{name="Heavy Ion Emplacements", front="https://i.imgur.com/S82y39J.jpg", cost=9})

--offensive retrofit
OffensiveRetrofit = {
    type="OffensiveRetrofit",
    back = LEGACY_ASSETS.."cards/offretro/back.png"
}
Card:new(OffensiveRetrofit,{name="Advanced Guidance System", front=LEGACY_ASSETS.."cards/offretro/advanced-guidance-system.png", cost=4})
Card:new(OffensiveRetrofit,{name="Drill Beak", front=LEGACY_ASSETS.."cards/offretro/drill-beak.png", cost=5})
Card:new(OffensiveRetrofit,{name="Enhanced Propulsion", front=LEGACY_ASSETS.."cards/offretro/enhanded-propulsion.png", cost=2})
Card:new(OffensiveRetrofit,{name="Reserve Bulk Hangar", front=LEGACY_ASSETS.."cards/offretro/reserve-bulk-hangar.png", cost=9})
Card:new(OffensiveRetrofit,{name="Tractor Tentacles", front=LEGACY_ASSETS.."cards/offretro/tractor-tentacles.png", cost=3})

--ordnance
Ordnance = {
    type="Ordnance",
    back = LEGACY_ASSETS.."cards/ord/back.png"
}
Card:new(Ordnance,{name="Long Range Concussion Missiles", front=LEGACY_ASSETS.."cards/ord/long-range-concussion-missiles.png", cost=4})
Card:new(Ordnance,{name="Tracking Torpedoes", front=LEGACY_ASSETS.."cards/ord/tracking-torpedoes.png", cost=6})

--superweapon
-- SuperWeapon = {
--     type="SuperWeapon",
--     back = "https://i.imgur.com/wAfp2ow.jpeg"
-- }
-- Card:new(SuperWeapon,Rebel,{name="Magnite Crystal Tractor Beam Array", front="https://i.imgur.com/2YpzXNT.jpg", cost=10})

--support_team
SupportTeam = {
    type="SupportTeam",
    back = LEGACY_ASSETS.."cards/support/back.png"
}
Card:new(SupportTeam,Republic,{name="Clone Engineers", front=LEGACY_ASSETS.."cards/support/clone-engineers.png", cost=3})
Card:new(SupportTeam,{name="Mon Calamari Shield Techs", front=LEGACY_ASSETS.."cards/support/mon-calamari-shield-techs.png", cost=5})
Card:new(SupportTeam,{name="Repair Team", front=LEGACY_ASSETS.."cards/support/repair-team.png", cost=2})

Turbolaser = {
    type="Turbolaser",
    back = LEGACY_ASSETS.."cards/turbo/back.png"
}
Card:new(Turbolaser,{name="Light Turbolaser Cannons", front=LEGACY_ASSETS.."cards/turbo/light-turbolaser-cannons.png", cost=6})
Card:new(Turbolaser,{name="XV9 Turbolasers", front=LEGACY_ASSETS.."cards/turbo/xv9-turbolasers.png", cost=5})

--weapons team & offensive retrofit
WeaponsTeamAndOffensiveRetrofit = {
    type="WeaponsTeamAndOffensiveRetrofit",
    back = LEGACY_ASSETS.."cards/wepoff/back.png"
}
Card:new(WeaponsTeamAndOffensiveRetrofit,Separatist,{name="Asajj Ventress", front=LEGACY_ASSETS.."cards/wepoff/asajj-ventress-boarding-team.png", cost=7})
Card:new(WeaponsTeamAndOffensiveRetrofit,Separatist,{name="BX Commando Droids", front=LEGACY_ASSETS.."cards/wepoff/bx-commando-droids.png", cost=2})

--weapons_team
WeaponsTeam = {
    type="WeaponsTeam",
    back = LEGACY_ASSETS.."cards/wepteam/back.png"
}
Card:new(WeaponsTeam,{name="Targeting Team", front=LEGACY_ASSETS.."cards/wepteam/targeting-team.png", cost=5})


------------------------------------
--rebalanced upgrade cards

UpdateCard("Commander Sato",27,{
    --front = LEGACY_ASSETS.."",
    cost = 24
})
    --rebalance point costs

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