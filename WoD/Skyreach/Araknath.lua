
--------------------------------------------------------------------------------
-- Module Declaration
--

if not BigWigs.isWOD then return end -- XXX compat
local mod, CL = BigWigs:NewBoss("Araknath", 989, 966)
if not mod then return end
mod:RegisterEnableMob(76141)

--------------------------------------------------------------------------------
-- Locals
--

local smashCount, burstCount = 0, 0

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then
	
end
L = mod:GetLocale()

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		154159, -- Energize
		{154110, "TANK"}, -- Smash
		154135, -- Burst
		"bosskill",
	}
end

function mod:OnBossEnable()
	self:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT", "CheckBossStatus")

	self:Log("SPELL_AURA_APPLIED", "Energize", 154159)
	self:Log("SPELL_CAST_START", "Smash", 154110, 154113)
	self:Log("SPELL_CAST_START", "Burst", 154135)

	self:Death("Win", 76141)
end

function mod:OnEngage()
	smashCount, burstCount = 0, 0
	self:CDBar(154159, 17) -- Energize
	self:CDBar(154135, 20) -- Burst
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:Energize(args)
	self:Message(args.spellId, "Attention", "Long")
	self:Bar(args.spellId, 23)
end

function mod:Smash(args)
	self:Message(154110, "Urgent", "Warning")
	smashCount = smashCount + 1
	self:CDBar(154110, smashCount % 2 == 0 and 14.6 or 8.5)
end

function mod:Burst(args)
	burstCount = burstCount + 1
	self:Message(args.spellId, "Important", nil, CL.count:format(args.spellName, burstCount))
	self:CDBar(args.spellId, 23)
end
