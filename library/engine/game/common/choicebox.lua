--[[
    Generated from Kristal\src\engine\game\common\choicebox.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/choicebox.lua
]]

---@meta

---@class Choicebox : Object
---@overload fun(...) : Choicebox
Choicebox = {}

function Choicebox:init(x, y, width, height, battle_box, options) end

function Choicebox:update() end

function Choicebox:draw() end

function Choicebox:setSize(w, h) end

function Choicebox:clearChoices() end

function Choicebox:addChoice(name) end

function Choicebox:setColors(main, hover) end

function Choicebox:getBorder() end

