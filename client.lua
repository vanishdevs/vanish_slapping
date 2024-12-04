lib.locale()

local xsound = exports.xsound
local config = lib.require('config')
local isSlapping = false

local function isPedValid(playerPed)
    return IsPedArmed(playerPed, 7) and
        not IsEntityDead(playerPed) and
        not IsPedRagdoll(playerPed) and
        not IsPedInAnyVehicle(playerPed, false)
end

local function performCooldown()
    SetTimeout(config.Cooldown, function()
        isSlapping = false
    end)
end

RegisterCommand(config.CommandName, function(source, args, rawCommand)
    local playerPed = cache.ped
    local playerCoords = GetEntityCoords(playerPed)
    local targetId, targetPed, targetCoords = lib.getClosestPlayer(playerCoords, config.ClosePlayerDistance)

    if isPedValid(playerPed) or isSlapping then
        lib.notify({ description = locale('cannot_perform'), type = 'error', position = 'center-right' })
        return
    end

    if config.RequireClosePlayer and not targetId then
        lib.notify({ description = locale('no_player_near'), type = 'error', position = 'center-right' })
        return
    end

    isSlapping = true

    lib.requestAnimDict(config.Animation.dict, 500)
    lib.playAnim(playerPed, config.Animation.dict, config.Animation.name, 8.0, 1.0, 1500, 1, 0, 0, 0, 0)

    if config.Sound.enable then
        xsound:PlayUrl(config.Sound.url, config.Sound.url, 0.85)
    end
    
    performCooldown()
end)

RegisterKeyMapping(config.CommandName, 'Slap', 'keyboard', config.Keybind)