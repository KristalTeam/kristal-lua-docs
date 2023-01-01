--[[
    Generated from Kristal\src\engine\objects\stage.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/stage.lua
]]

---@meta

---@class Stage : Object
---@overload fun(...) : Stage
Stage = {}

function Stage:init(x, y, w, h) end

function Stage:getObjects(class) end

function Stage:addToStage(object) end

function Stage:updateAllLayers() end

function Stage:removeFromStage(object) end

function Stage:update() end

function Stage:draw() end

function Stage:canDeepCopy() end

