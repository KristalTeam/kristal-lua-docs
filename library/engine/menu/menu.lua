--[[
    Generated from Kristal\src\engine\menu\menu.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/menu/menu.lua
]]

---@meta

Menu = {}

function Menu:enter() end

function Menu:setState(state) end

function Menu:onStateChange(old_state, new_state) end

function Menu:setSubState(state) end

function Menu:pushState(new_state) end

function Menu:popState() end

function Menu:stopMusic() end

function Menu:leave() end

function Menu:drawMenuRectangle(x, y, width, height, color) end

function Menu:init() end

function Menu:focus() end

function Menu:reloadMods() end

function Menu:buildMods() end

function Menu:rebuildMods() end

function Menu:drawAnimStrip(sprite, subimg, x, y, alpha) end

function Menu:printShadow(text, x, y, color, align, limit) end

function Menu:update() end

function Menu:optionsShown() end

function Menu:draw() end

function Menu:drawVersion() end

function Menu:drawKeyBindMenu(name, menu_x, menu_y, y_offset) end

function Menu:onKeyPressed(key, is_repeat) end

function Menu:onCreateEnter() end

function Menu:registerConfigOption(id, name, description, type, options) end

function Menu:handleCreateInput(key, is_repeat) end

function Menu:onConfigEnter(old_state) end

function Menu:handleConfigInput(key, is_repeat) end

function Menu:drawConfig() end

function Menu:onSubStateChange(old, new) end

function Menu:disallowWindowsFolders(str, auto) end

function Menu:adjustCreateID() end

function Menu:openInput(id, restriction) end

function Menu:attemptUpdateID(id) end

function Menu:createMod() end

function Menu:onCreateSubmit(id) end

function Menu:onCreateCancel() end

function Menu:drawCreate() end

function Menu:drawSelectionField(x, y, id, options, state) end

function Menu:drawCheckbox(x, y, id) end

function Menu:drawInputLine(name, x, y, id) end

function Menu:onKeyReleased(key) end

function Menu:getBoundKeys(key) end

function Menu:drawBackground() end

