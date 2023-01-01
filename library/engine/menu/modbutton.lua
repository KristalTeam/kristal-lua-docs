--[[
    Generated from Kristal\src\engine\menu\modbutton.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/menu/modbutton.lua
]]

---@meta

---@class ModButton : Object
---@overload fun(...) : ModButton
ModButton = {}

function ModButton:init(name, width, height, mod) end

function ModButton:setName(name) end

function ModButton:setSubtitle(subtitle) end

function ModButton:hasSubtitle() end

function ModButton:onSelect() end

function ModButton:onDeselect() end

function ModButton:setFavoritedColor(r, g, b, a) end

function ModButton:getFavoritedColor() end

function ModButton:getDrawColor() end

function ModButton:getHeartPos() end

function ModButton:getIconPos() end

function ModButton:checkCompatibility() end

function ModButton:isFavorited() end

function ModButton:drawCoolRectangle(x, y, w, h) end

function ModButton:update() end

function ModButton:draw() end

