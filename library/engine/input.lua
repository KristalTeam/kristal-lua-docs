--[[
    Generated from Kristal\src\engine\input.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/input.lua
]]

---@meta

Input = {}

function Input.getThumbstick(stick, raw) end

function Input.getLeftThumbstick() end

function Input.getRightThumbstick() end

function Input.getLeftTrigger() end

function Input.getRightTrigger() end

function Input.getBoundKeys(key, gamepad) end

function Input.resetBinds(gamepad) end

function Input.loadBinds() end

function Input.orderedNumberToKey(number) end

function Input.saveBinds() end

function Input.setBind(alias, index, key, gamepad) end

function Input.getPrimaryBind(alias, gamepad) end

function Input.clear(key, clear_down) end

function Input.onKeyPressed(key, is_repeat) end

function Input.onKeyReleased(key) end

function Input.update() end

function Input.usingGamepad() end

function Input.hasGamepad() end

function Input.down(key) end

function Input.keyDown(key) end

function Input.pressed(key, repeatable) end

function Input.keyPressed(key, repeatable) end

function Input.shouldProcess(key, repeatable) end

function Input.released(key) end

function Input.keyReleased(key) end

function Input.up(key) end

function Input.keyUp(key) end

function Input.is(alias, key) end

function Input.getText(alias, gamepad, return_sprite) end

function Input.getControllerType() end

function Input.getButtonTexture(button) end

function Input.getButtonSprite(button) end

function Input.shift() end

function Input.ctrl() end

function Input.alt() end

function Input.gui() end

function Input.isConfirm(key) end

function Input.isCancel(key) end

function Input.isMenu(key) end

function Input.isThumbstick(key, which) end

function Input.isGamepad(key) end

function Input.getMousePosition(x, y, relative) end

function Input.getGamepadCursorPosition(x, y, relative) end

function Input.getCurrentCursorPosition(x, y, relative) end

