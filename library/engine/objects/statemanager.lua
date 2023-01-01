--[[
    Generated from Kristal\src\engine\objects\statemanager.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/statemanager.lua
]]

---@meta

---@class StateManager : Object
---@overload fun(...) : StateManager
StateManager = {}

function StateManager:init(default_state, master, update_master_state) end

function StateManager:addState(state, events) end

function StateManager:removeState(state) end

function StateManager:hasState(state) end

function StateManager:addEvent(event, state_callbacks) end

function StateManager:removeEvent(event) end

function StateManager:hasEvent(event, state) end

function StateManager:callOn(state, event, ...) end

function StateManager:call(event, ...) end

function StateManager:doIf(...) end

function StateManager:hook(state, event, func) end

function StateManager:setState(state, ...) end

function StateManager:update() end

function StateManager:draw() end

