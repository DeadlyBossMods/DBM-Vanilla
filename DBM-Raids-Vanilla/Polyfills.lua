-- Polyfills for trivial functions recently added to Core to not block new features on a Core update

local mod = DBM:NewMod("PolyfillDummy")
mod.isDummyMod = true

local bossModPrototype = getmetatable(mod).__index

-- Added to DBM-Core on 2024-12-19
function bossModPrototype:TestTrace(...)
	DBM.Test:Trace(self, "ModTrace", ...)
end
