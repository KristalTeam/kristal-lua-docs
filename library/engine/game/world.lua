--[[
    Generated from Kristal\src\engine\game\world.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world.lua
]]

---@meta

---@class World : Object
---@overload fun(...) : World
World = {}

function World:init(map) end

function World:heal(target, amount, text) end

function World:hurtParty(battler, amount) end

function World:setState(state) end

function World:openMenu(menu, layer) end

function World:createMenu() end

function World:closeMenu() end

function World:setCellFlag(name, value) end

function World:getCellFlag(name, default) end

function World:registerCall(name, scene) end

function World:replaceCall(name, index, scene) end

function World:showHealthBars() end

function World:hideHealthBars() end

function World:onStateChange(old, new) end

function World:onKeyPressed(key) end

function World:isTextboxOpen() end

function World:getCollision(enemy_check) end

function World:checkCollision(collider, enemy_check) end

function World:hasCutscene() end

function World:startCutscene(group, id, ...) end

function World:stopCutscene() end

function World:showText(text, after) end

function World:spawnPlayer(...) end

function World:getPartyCharacter(party) end

function World:removeFollower(chara) end

function World:spawnFollower(chara, options) end

function World:spawnParty(marker, party, extra, facing) end

function World:spawnBullet(bullet, ...) end

function World:spawnNPC(actor, x, y, properties) end

function World:spawnObject(obj, layer) end

function World:getCharacter(id, index) end

function World:getActionBox(party_member) end

function World:partyReact(party_member, text, display_time) end

function World:getEvent(id) end

function World:getEvents(name) end

function World:detachFollowers() end

function World:attachFollowers(return_speed) end

function World:attachFollowersImmediate() end

function World:parseLayer(layer) end

function World:setupMap(map, ...) end

function World:loadMap(...) end

function World:transitionMusic(next, fade_out) end

function World:shopTransition(shop, options) end

function World:mapTransition(...) end

function World:fadeInto(callback) end

function World:getCameraTarget() end

function World:setCameraTarget(target) end

function World:setCameraAttached(attached_x, attached_y) end

function World:setCameraAttachedX(attached) self:setCameraAttached(attached, self.camera.attached_x) end

function World:setCameraAttachedY(attached) self:setCameraAttached(self.camera.attached_y, attached) end

function World:shakeCamera(x, y, friction) end

function World:sortChildren() end

function World:onRemove(parent) end

function World:setBattle(value) end

function World:inBattle() end

function World:update() end

function World:draw() end

function World:canDeepCopy() end

