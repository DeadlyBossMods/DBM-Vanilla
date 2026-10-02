-- Polyfills for trivial functions recently added to Core to not block new features on a Core update

local mod = DBM:NewMod("PolyfillDummy")
mod.isDummyMod = true
