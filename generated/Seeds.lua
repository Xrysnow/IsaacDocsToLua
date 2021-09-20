---@class Seeds @
local Seeds = {}

--------------------
-- Functions
--------------------

---@param Value SeedEffect @
function Seeds:AddSeedEffect(Value)
end

---@param Value SeedEffect @
---@return boolean @
function Seeds:CanAddSeedEffect(Value)
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

---@param Stage LevelStage @
function Seeds:ForgetStageSeed(Stage)
end

---@return number @ (int)
function Seeds:GetNextSeed()
end

---@return number @ (int)
function Seeds:GetPlayerInitSeed()
end

---@param str string @
---@return SeedEffect @
function Seeds.GetSeedEffect(str)
end

---@param Stage LevelStage @
---@return number @ (int)
function Seeds:GetStageSeed(Stage)
end

---@return number @ (int)
function Seeds:GetStartSeed()
end

---@return string @
function Seeds:GetStartSeedString()
end

---@param Value SeedEffect @
---@return boolean @
function Seeds:HasSeedEffect(Value)
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
---@param Seed2 SeedEffect @
---@return boolean @
function Seeds:IsSeedComboBanned(Seed1, Seed2)
end

---@param str string @
---@return boolean @
function Seeds.IsSpecialSeed(str)
end

---@param str string @
---@return boolean @
function Seeds.IsStringValidSeed(str)
end
--- Removes seeds that are banned in conjunction with the given seed.
---@param Value SeedEffect @
function Seeds:RemoveBlockingSeedEffects(Value)
end

---@param Value SeedEffect @
function Seeds:RemoveSeedEffect(Value)
end
--- Removes all seed effects, only goes into effect when the run is restarted
function Seeds:Reset()
end
--- Re-selects a random start seed but only if the start seed was not custom.
---@param CurrentChallenge Challenge @
function Seeds:Restart(CurrentChallenge)
end

---@param seed number @ (int)
---@return string @
function Seeds.Seed2String(seed)
end
--- Empty string means we will pick a new random seed.
---@param StartSeed string @
function Seeds:SetStartSeed(StartSeed)
end
--- 
---@param str string @
---@return number @ (int)
function Seeds.String2Seed(str)
end
