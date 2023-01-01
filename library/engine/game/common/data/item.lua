--[[
    Generated from Kristal\src\engine\game\common\data\item.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/data/item.lua
]]

---@meta

---@class Item
---@overload fun(...) : Item
Item = {}

function Item:init() end

function Item:onEquip(character, replacement) end

function Item:onUnequip(character, replacement) end

function Item:onWorldUse(target) end

function Item:onBattleUse(user, target) end

function Item:onBattleSelect(user, target) end

function Item:onBattleDeselect(user, target) end

function Item:onMenuOpen(menu) end

function Item:onMenuClose(menu) end

function Item:onMenuUpdate(menu) end

function Item:onMenuDraw(menu) end

function Item:onWorldUpdate(chara) end

function Item:onBattleUpdate(battler) end

function Item:onSave(data) end

function Item:onLoad(data) end

function Item:onCheck() end

function Item:onToss() end

function Item:convertToLight(inventory) end

function Item:convertToDark(inventory) end

function Item:convertToLightEquip(chara) return self:convertToLight() end

function Item:convertToDarkEquip(chara) return self:convertToDark() end

function Item:getName() end

function Item:getUseName() return self.use_name or self:getName():upper() end

function Item:getWorldMenuName() return self:getName() end

function Item:getDescription() end

function Item:getBattleDescription() end

function Item:getCheck() end

function Item:getShopDescription() end

function Item:getPrice() end

function Item:getBuyPrice() return self.buy_price or self:getPrice() end

function Item:getSellPrice() return self.sell_price or math.ceil(self:getPrice()/2) end

function Item:isSellable() end

function Item:getStatBonuses() end

function Item:getBonusName() end

function Item:getBonusIcon() end

function Item:getReactions() end

function Item:hasResultItem() end

function Item:createResultItem() end

function Item:getBattleText(user, target) end

function Item:applyMoneyBonus(gold) end

function Item:getStatBonus(stat) end

function Item:canEquip(character, slot_type, slot_index) end

function Item:getReaction(user_id, reactor_id) end

function Item:getTypeName() end

function Item:getFlag(name, default) end

function Item:setFlag(name, value) end

function Item:addFlag(name, amount) end

function Item:save() end

function Item:load(data) end

