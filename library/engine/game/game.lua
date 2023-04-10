--[[
    Generated from Kristal\src\engine\game\game.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/game.lua
]]

---@meta

Game = {}

function Game:clear() end

function Game:enter(previous_state, save_id, save_name) end

function Game:leave() end

function Game:getBorder() end

function Game:setBorder(border, time) end

function Game:returnToMenu() end

function Game:getConfig(key, merge, deep_merge) end

function Game:getActiveMusic() end

function Game:getSavePreview() end

function Game:save(x, y) end

function Game:load(data, index, fade) end

function Game:setLight(light) end

function Game:isLight() end

function Game:convertToLight() end

function Game:convertToDark() end

function Game:gameOver(x, y) end

function Game:saveQuick(...) end

function Game:loadQuick(fade) end

function Game:encounter(encounter, transition, enemy, context) end

function Game:setupShop(shop) end

function Game:enterShop(shop, options) end

function Game:setFlag(flag, value) end

function Game:getFlag(flag, default) end

function Game:addFlag(flag, amount) end

function Game:initPartyMembers() end

function Game:getPartyMember(id) end

function Game:addPartyMember(chara, index) end

function Game:removePartyMember(chara) end

function Game:setPartyMembers(...) end

function Game:hasPartyMember(chara) end

function Game:movePartyMember(chara, index) end

function Game:getPartyIndex(chara) end

function Game:checkPartyEquipped(item_id) end

function Game:getSoulPartyMember() end

function Game:getSoulColor() end

function Game:getActLeader() end

function Game:addFollower(chara, index) end

function Game:removeFollower(chara) end

function Game:giveTension(amount) end

function Game:setTensionPreview(amount) end

function Game:removeTension(amount) end

function Game:setTension(amount, dont_clamp) end

function Game:getTension() end

function Game:setMaxTension(amount) end

function Game:getMaxTension() end

function Game:update() end

function Game:onKeyPressed(key, is_repeat) end

function Game:onKeyReleased(key) end

function Game:draw() end

