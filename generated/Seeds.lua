---@class Seeds
local Seeds = {}

--------------------
-- Functions
--------------------

function Seeds:AddSeedEffect()
end

---@return boolean @
function Seeds:CanAddSeedEffect()
end

function Seeds:ClearSeedEffects()
end

function Seeds:ClearStartSeed()
end

---@return number @ (int)
function Seeds:CountSeedEffects()
end

---@return number @ (int)
function Seeds.CountUnlockedSeedEffects()
end

function Seeds:ForgetStageSeed()
end

---@return number @ (int)
function Seeds:GetNextSeed()
end

---@return number @ (int)
function Seeds:GetPlayerInitSeed()
end

---@return SeedEffect @
function Seeds.GetSeedEffect()
end

---@return number @ (int)
function Seeds:GetStageSeed()
end

---@return number @ (int)
function Seeds:GetStartSeed()
end

---@return string @
function Seeds:GetStartSeedString()
end

---@return boolean @
function Seeds:HasSeedEffect()
end

function Seeds.InitSeedInfo()
end
--- Returns true if the player is in a challenge run or a seeded run.
---@return boolean @
function Seeds:IsCustomRun()
end

---@return boolean @
function Seeds:IsInitialized()
end

---@param Seed1 SeedEffect @
---@return boolean @
function Seeds:IsSeedComboBanned(Seed1)
end

---@return boolean @
function Seeds.IsSpecialSeed()
end

---@return boolean @
function Seeds.IsStringValidSeed()
end
--- Removes seeds that are banned in conjunction with the given seed.
function Seeds:RemoveBlockingSeedEffects()
end

function Seeds:RemoveSeedEffect()
end
--- Removes all seed effects, only goes into effect when the run is restarted
function Seeds:Reset()
end
--- Re-selects a random start seed but only if the start seed was not custom.
function Seeds:Restart()
end

---@return string @
function Seeds.Seed2String()
end
--- Empty string means we will pick a new random seed.
function Seeds:SetStartSeed()
end
--- 
---@return number @ (int)
function Seeds.String2Seed()
end
