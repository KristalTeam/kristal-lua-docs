--[[
    Generated from Kristal\src\engine\registry.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/registry.lua
]]

---@meta

Registry = {}

function Registry.initialize(preload) end

function Registry.restoreOverridenGlobals() end

function Registry.getObject(id) end

function Registry.createObject(id, ...) end

function Registry.getDrawFX(id) end

function Registry.createDrawFX(id, ...) end

function Registry.getActor(id) end

function Registry.createActor(id, ...) end

function Registry.getItem(id) end

function Registry.createItem(id, ...) end

function Registry.getSpell(id) end

function Registry.createSpell(id, ...) end

function Registry.getPartyMember(id) end

function Registry.createPartyMember(id, ...) end

function Registry.getEncounter(id) end

function Registry.createEncounter(id, ...) end

function Registry.getEnemy(id) end

function Registry.createEnemy(id, ...) end

function Registry.getWave(id) end

function Registry.createWave(id, ...) end

function Registry.getBullet(id) end

function Registry.createBullet(id, ...) end

function Registry.getWorldBullet(id) end

function Registry.createWorldBullet(id, ...) end

function Registry.getWorldCutscene(group, id) end

function Registry.getBattleCutscene(group, id) end

function Registry.getEventScript(group, id) end

function Registry.getTileset(id) end

function Registry.getMap(id) end

function Registry.createMap(id, world, ...) end

function Registry.getMapData(id) end

function Registry.getEvent(id) end

function Registry.createEvent(id, ...) end

function Registry.getController(id) end

function Registry.createController(id, ...) end

function Registry.getShop(id) end

function Registry.createShop(id, ...) end

function Registry.registerGlobal(id, value, no_warning) end

function Registry.registerActor(id, tbl) end

function Registry.registerPartyMember(id, tbl) end

function Registry.registerItem(id, tbl) end

function Registry.registerSpell(id, tbl) end

function Registry.registerEncounter(id, class) end

function Registry.registerEnemy(id, class) end

function Registry.registerWave(id, class) end

function Registry.registerBullet(id, class) end

function Registry.registerWorldBullet(id, class) end

function Registry.registerWorldCutscene(id, cutscene) end

function Registry.registerBattleCutscene(id, cutscene) end

function Registry.registerEventScript(id, script) end

function Registry.registerTileset(id, class) end

function Registry.registerMapData(id, data) end

function Registry.registerMap(id, class) end

function Registry.registerEvent(id, class) end

function Registry.registerController(id, class) end

function Registry.registerShop(id, class) end

function Registry.initGlobals() end

function Registry.initObjects() end

function Registry.initDrawFX() end

function Registry.initActors() end

function Registry.initPartyMembers() end

function Registry.initItems() end

function Registry.initSpells() end

function Registry.initEncounters() end

function Registry.initEnemies() end

function Registry.initWaves() end

function Registry.initBullets() end

function Registry.initCutscenes() end

function Registry.initEventScripts() end

function Registry.initTilesets() end

function Registry.initMaps() end

function Registry.initEvents() end

function Registry.initControllers() end

function Registry.initShops() end

function Registry.iterScripts(base_path, exclude_folder) end

