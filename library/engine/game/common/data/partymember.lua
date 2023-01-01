--[[
    Generated from Kristal\src\engine\game\common\data\partymember.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/data/partymember.lua
]]

---@meta

---@class PartyMember
---@overload fun(...) : PartyMember
PartyMember = {}

function PartyMember:init() end

function PartyMember:onAttackHit(enemy, damage) end

function PartyMember:onTurnStart(battler) end

function PartyMember:onActionSelect(battler, undo) end

function PartyMember:onLevelUp(level) end

function PartyMember:onPowerSelect(menu) end

function PartyMember:onPowerDeselect(menu) end

function PartyMember:drawPowerStat(index, x, y, menu) end

function PartyMember:onSave(data) end

function PartyMember:onLoad(data) end

function PartyMember:onEquip(item, item2) end

function PartyMember:onUnequip(item, item2) end

function PartyMember:onActionBox(box, overworld) end

function PartyMember:getName() end

function PartyMember:getTitle() return "LV"..self:getLevel() end

function PartyMember:getLevel() end

function PartyMember:getLightLV() end

function PartyMember:getLightEXP() end

function PartyMember:getLightEXPNeeded(lv) end

function PartyMember:getSoulPriority() end

function PartyMember:getSoulColor() return Utils.unpackColor(self.soul_color or {1, 0, 0}) end

function PartyMember:hasAct() end

function PartyMember:hasSpells() end

function PartyMember:hasXAct() end

function PartyMember:getXActName() end

function PartyMember:getWeaponIcon() end

function PartyMember:getHealth() return Game:isLight() end

function PartyMember:getBaseStats(light) end

function PartyMember:getMaxStats() end

function PartyMember:getMaxStat(stat) end

function PartyMember:getColor() return Utils.unpackColor(self.color) end

function PartyMember:getDamageColor() end

function PartyMember:getAttackBarColor() end

function PartyMember:getAttackBoxColor() end

function PartyMember:getXActColor() end

function PartyMember:getMenuIcon() end

function PartyMember:getHeadIcons() end

function PartyMember:getNameSprite() end

function PartyMember:getAttackSprite() end

function PartyMember:getAttackSound() end

function PartyMember:getAttackPitch() end

function PartyMember:getBattleOffset() return unpack(self.battle_offset or {0, 0}) end

function PartyMember:getHeadIconOffset() return unpack(self.head_icon_offset or {0, 0}) end

function PartyMember:getMenuIconOffset() return unpack(self.menu_icon_offset or {0, 0}) end

function PartyMember:getGameOverMessage() end

function PartyMember:heal(amount, playsound) end

function PartyMember:setHealth(health) end

function PartyMember:increaseStat(stat, amount, max) end

function PartyMember:getReaction(item, user) end

function PartyMember:getActor(light) end

function PartyMember:setActor(actor) end

function PartyMember:setLightActor(actor) end

function PartyMember:getSpells() end

function PartyMember:addSpell(spell) end

function PartyMember:removeSpell(spell) end

function PartyMember:hasSpell(spell) end

function PartyMember:getEquipment() end

function PartyMember:getWeapon() end

function PartyMember:getArmor(i) end

function PartyMember:setWeapon(item) end

function PartyMember:setArmor(i, item) end

function PartyMember:checkWeapon(id) end

function PartyMember:checkArmor(id) end

function PartyMember:canEquip(item, slot_type, slot_index) end

function PartyMember:getEquipmentBonus(stat) end

function PartyMember:getStats(light) end

function PartyMember:getStat(name, default, light) end

function PartyMember:getFlag(name, default) end

function PartyMember:setFlag(name, value) end

function PartyMember:addFlag(name, amount) end

function PartyMember:convertToLight() end

function PartyMember:convertToDark() end

function PartyMember:saveEquipment() end

function PartyMember:loadEquipment(data) end

function PartyMember:saveSpells() end

function PartyMember:loadSpells(data) end

function PartyMember:save() end

function PartyMember:load(data) end

function PartyMember:canDeepCopy() end

