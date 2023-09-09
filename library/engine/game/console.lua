--[[
    Generated from Kristal\src\engine\game\console.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/console.lua
]]

---@meta

---@class Console : Object
---@overload fun(...) : Console
Console = {}

function Console:init() end

function Console:update() end

function Console:createEnv() end

function Console:onRemoveFromStage() end

function Console:open() end

function Console:onUpLimit() end

function Console:onDownLimit() end

function Console:onSubmit() end

function Console:close() end

function Console:print(text, x, y) end

function Console:printOutlined(text, x, y) end

function Console:draw() end

function Console:push(str) end

function Console:log(str) end

function Console:warn(str) end

function Console:error(str) end

function Console:stripError(str) end

function Console:run(str) end

function Console:unsafeRun(str) end

function Console:onConsoleKeyPressed(key) end

