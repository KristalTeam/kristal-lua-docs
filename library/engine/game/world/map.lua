--[[
    Generated from Kristal\src\engine\game\world\map.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/map.lua
]]

---@meta

---@class Map : Class
---@overload fun(...) : Map
Map = {}

function Map:init(world, data) end

function Map:load() end

function Map:onEnter() end

function Map:onExit() end

function Map:onFootstep(char, num) end

function Map:onGameOver() end

function Map:update() end

function Map:draw() end

function Map:getBorder(dark_transition) end

function Map:getUniqueID() end

function Map:setFlag(flag, value) end

function Map:getFlag(flag, default) end

function Map:addFlag(flag, amount) end

function Map:getMarker(name) end

function Map:hasMarker(name) end

function Map:getPath(name) end

function Map:addTileset(id) end

function Map:getTile(x, y, layer) end

function Map:setTile(x, y, tileset, ...) end

function Map:getEvent(id) end

function Map:getEvents(name) end

function Map:getShape(id) end

function Map:getHitbox(id) end

function Map:getImageLayer(id) end

function Map:getShapeLayer(name) end

function Map:getShapes(layer_prefix) end

function Map:getTileLayer(name) end

function Map:addTileLayer(depth, battle_border) end

function Map:loadMapData(data) end

function Map:loadLayer(layer, depth) end

function Map:loadTiles(layer, depth) end

function Map:loadImage(layer, depth) end

function Map:loadCollision(layer) end

function Map:loadEnemyCollision(layer) end

function Map:loadBlockCollision(layer) end

function Map:loadBattleAreas(layer) end

function Map:loadHitboxes(layer) end

function Map:loadShapes(layer) end

function Map:loadMarkers(layer) end

function Map:loadPaths(layer) end

function Map:loadObjects(layer, depth, layer_type) end

function Map:loadObject(name, data) end

function Map:loadController(name, data) end

function Map:populateTilesets(data) end

function Map:getTileset(id) end

function Map:getTileObjectRect(data) end

