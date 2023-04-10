--[[
    Generated from Kristal\src\engine\game\shop.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/shop.lua
]]

---@meta

---@class Shop : Object
---@overload fun(...) : Shop
Shop = {}

function Shop:init() end

function Shop:postInit() end

function Shop:startTalk(talk) end

function Shop:onEnter() end

function Shop:onRemove(parent) end

function Shop:getVoice() end

function Shop:getVoicedText(text) end

function Shop:setDialogueText(text, no_voice) end

function Shop:setRightText(text, no_voice) end

function Shop:setState(state, reason) end

function Shop:getState() end

function Shop:onStateChange(old,new) end

function Shop:onLeave() end

function Shop:leave() end

function Shop:leaveImmediate() end

function Shop:onTalk() end

function Shop:onEmote(emote) end

function Shop:startDialogue(text,callback) end

function Shop:registerItem(item, options) end

function Shop:replaceItem(index, item, options) end

function Shop:registerTalk(talk, color) end

function Shop:replaceTalk(talk, index, color) end

function Shop:registerTalkAfter(talk, index, flag, value, color) end

function Shop:processReplacements() end

function Shop:update() end

function Shop:draw() end

function Shop:drawBonuses(party_member, old_item, bonuses, stat, x, y) end

function Shop:drawBackground() end

function Shop:onKeyPressed(key, is_repeat) end

function Shop:enterSellMenu(sell_data) end

function Shop:buyItem(current_item) end

function Shop:setFlag(name, value) end

function Shop:getFlag(name, default) end

function Shop:sellItem(current_item) end

function Shop:getMoney() end

function Shop:setMoney(amount) end

function Shop:addMoney(amount) end

function Shop:removeMoney(amount) end

