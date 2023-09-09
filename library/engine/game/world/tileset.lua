--[[
    Generated from Kristal\src\engine\game\world\tileset.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/tileset.lua
]]

---@meta

---@class Tileset : Class
---@overload fun(...) : Tileset
Tileset = {}

function Tileset:init(data, path, base_dir) end

function Tileset:getAnimation(id) end

function Tileset:getTileSize(id) end

function Tileset:getDrawTile(id) end

function Tileset:drawTile(id, x, y, ...) end

function Tileset:drawGridTile(id, x, y, gw, gh, flip_x, flip_y, flip_diag) end

function Tileset:canDeepCopy() end

