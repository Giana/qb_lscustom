local QBCore = exports['qb-core']:GetCoreObject()

local myCar = {}
local lsMenuIsShowed, HintDisplayed, isInLSMarker = false, false, false

RegisterNetEvent('QBCore:Client:OnPlayerUnload')
AddEventHandler('QBCore:Client:OnPlayerUnload', function()
    TriggerServerEvent('esx_lscustom:playerDropped')
end)

RegisterNetEvent('esx_lscustom:installMod')
AddEventHandler('esx_lscustom:installMod', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    local NetId = NetworkGetNetworkIdFromEntity(vehicle)
    myCar = QBCore.Functions.GetVehicleProperties(vehicle)
    TriggerServerEvent('esx_lscustom:refreshOwnedVehicle', myCar, NetId)
end)

RegisterNetEvent('esx_lscustom:restoreMods', function(netId, props)
    local xVehicle = NetworkGetEntityFromNetworkId(netId)
    if props ~= nil then
        if DoesEntityExist(xVehicle) then
            QBCore.Functions.SetVehicleProperties(xVehicle, props)
        end
    end
end)

RegisterNetEvent('esx_lscustom:cancelInstallMod')
AddEventHandler('esx_lscustom:cancelInstallMod', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if (GetPedInVehicleSeat(vehicle, -1) ~= PlayerPedId()) then
        vehicle = GetPlayersLastVehicle(PlayerPedId())
    end
    QBCore.Functions.SetVehicleProperties(vehicle, myCar)
    if not (myCar.modTurbo) then
        ToggleVehicleMod(vehicle, 18, false)
    end
    if not (myCar.modXenon) then
        ToggleVehicleMod(vehicle, 22, false)
    end
    if not (myCar.windowTint) then
        SetVehicleWindowTint(vehicle, 0)
    end
end)

RegisterNetEvent('esx_lscustom:menuSelect')
AddEventHandler('esx_lscustom:menuSelect', function(data)
    local elem = data.elem
    local isRimMod, found = false, false
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

    if elem.modType == "modFrontWheels" then
        isRimMod = true
    end

    for k, v in pairs(Config.Menus) do

        if k == elem.modType or isRimMod then

            if elem.label == Lang:t('by_default') or string.match(elem.label, Lang:t('installed')) then
                QBCore.Functions.Notify(Lang:t('already_own', { s = elem.label }), 'primary')
                myCar = QBCore.Functions.GetVehicleProperties(vehicle)
                TriggerServerEvent('esx_lscustom:refreshOwnedVehicle', myCar, NetworkGetNetworkIdFromEntity(vehicle))
            else
                local vehicleModel = string.lower(GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
                local vehiclePrice = QBCore.Shared.Vehicles[vehicleModel]['price']

                if isRimMod then
                    price = math.floor(vehiclePrice * elem.price / 100)
                    TriggerServerEvent('esx_lscustom:buyMod', price)
                elseif v.modType == 11 or v.modType == 12 or v.modType == 13 or v.modType == 15 or v.modType == 16 then
                    price = math.floor(vehiclePrice * v.price[elem.modNum + 1] / 100)
                    TriggerServerEvent('esx_lscustom:buyMod', price)
                elseif v.modType == 17 then
                    price = math.floor(vehiclePrice * v.price[1] / 100)
                    TriggerServerEvent('esx_lscustom:buyMod', price)
                else
                    price = math.floor(vehiclePrice * v.price / 100)
                    TriggerServerEvent('esx_lscustom:buyMod', price)
                end
            end

            closeMenu()
            found = true
            break
        end

    end

    if not found then
        GetAction(elem)
    end

    UpdateMods(elem)
end)

RegisterNetEvent('esx_lscustom:closeDoors')
AddEventHandler('esx_lscustom:closeDoors', function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    SetVehicleDoorsShut(vehicle, false)
end)

AddEventHandler('onClientResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        if lsMenuIsShowed then
            TriggerEvent('esx_lscustom:cancelInstallMod')
        end
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        if lsMenuIsShowed then
            TriggerEvent('esx_lscustom:cancelInstallMod')
        end
    end
end)

function closeMenu()
    lsMenuIsShowed = false
    exports['qb-menu']:closeMenu()
end

function OpenLSMenu(elems, menuTitle)
    local menu = {
        {
            header = menuTitle,
            isMenuHeader = true
        }
    }
    for k, v in pairs(elems) do
        menu[#menu + 1] = {
            header = v.label,
            params = {
                event = 'esx_lscustom:menuSelect',
                args = {
                    elem = v
                }
            }
        }
    end
    menu[#menu + 1] = {
        header = Lang:t('cancel'),
        params = {
            event = closeMenu()
        }
    }
    lsMenuIsShowed = true
    exports['qb-menu']:openMenu(menu)
end

function UpdateMods(data)
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

    if data.modType then
        local props = {}

        if data.wheelType then
            props['wheels'] = data.wheelType

            if GetVehicleClass(vehicle) == 8 then
                -- Fix bug wheels for bikes.
                props['modBackWheels'] = data.modNum
            end

            QBCore.Functions.SetVehicleProperties(vehicle, props)
            props = {}
        elseif data.modType == 'neonColor' then
            if data.modNum[1] == 0 and data.modNum[2] == 0 and data.modNum[3] == 0 then
                props['neonEnabled'] = { false, false, false, false }
            else
                props['neonEnabled'] = { true, true, true, true }
            end
            QBCore.Functions.SetVehicleProperties(vehicle, props)
            props = {}
        elseif data.modType == 'tyreSmokeColor' then
            props['modSmokeEnabled'] = true
            QBCore.Functions.SetVehicleProperties(vehicle, props)
            props = {}
        elseif data.modType == 'xenonColor' then
            if data.modNum then
                props['modXenon'] = true
            else
                props['modXenon'] = false
            end
            QBCore.Functions.SetVehicleProperties(vehicle, props)
            props = {}
        end

        props[data.modType] = data.modNum
        QBCore.Functions.SetVehicleProperties(vehicle, props)
    end
end

function GetAction(data)
    local elements = {}
    local menuName = ''
    local menuTitle = ''

    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)
    local currentMods = QBCore.Functions.GetVehicleProperties(vehicle)
    if data.value == 'modSpeakers' or data.value == 'modTrunk' or data.value == 'modHydrolic' or data.value ==
            'modEngineBlock' or data.value == 'modAirFilter' or data.value == 'modStruts' or data.value == 'modTank' then
        SetVehicleDoorOpen(vehicle, 4, false)
        SetVehicleDoorOpen(vehicle, 5, false)
    elseif data.value == 'modDoorSpeaker' then
        SetVehicleDoorOpen(vehicle, 0, false)
        SetVehicleDoorOpen(vehicle, 1, false)
        SetVehicleDoorOpen(vehicle, 2, false)
        SetVehicleDoorOpen(vehicle, 3, false)
    else
        SetVehicleDoorsShut(vehicle, false)
    end

    local vehicleModel = string.lower(GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
    local vehiclePrice = QBCore.Shared.Vehicles[vehicleModel]['price']

    for k, v in pairs(Config.Menus) do

        if data.value == k then

            menuName = k
            menuTitle = v.label
            parent = v.parent

            if v.modType then

                if v.modType == 22 or v.modType == 'xenonColor' then
                    table.insert(elements, {
                        label = " " .. Lang:t('by_default'),
                        modType = k,
                        modNum = false
                    })
                elseif v.modType == 'neonColor' or v.modType == 'tyreSmokeColor' then
                    -- disable neon
                    table.insert(elements, {
                        label = " " .. Lang:t('by_default'),
                        modType = k,
                        modNum = { 0, 0, 0 }
                    })
                elseif v.modType == 'color1' or v.modType == 'color2' or v.modType == 'pearlescentColor' or v.modType ==
                        'wheelColor' then
                    local num = myCar[v.modType]
                    table.insert(elements, {
                        label = " " .. Lang:t('by_default'),
                        modType = k,
                        modNum = num
                    })
                elseif v.modType == 17 then
                    table.insert(elements, {
                        label = " " .. Lang:t('no_turbo'),
                        modType = k,
                        modNum = false
                    })
                elseif v.modType == 23 then
                    table.insert(elements, {
                        label = " " .. Lang:t('by_default'),
                        modType = "modFrontWheels",
                        modNum = -1,
                        wheelType = -1,
                        price = Config.DefaultWheelsPriceMultiplier
                    })
                else
                    table.insert(elements, {
                        label = " " .. Lang:t('by_default'),
                        modType = k,
                        modNum = -1
                    })
                end

                if v.modType == 14 then
                    -- HORNS
                    for j = 0, 51, 1 do
                        local _label = ''
                        if j == currentMods.modHorns then
                            _label = GetHornName(j) .. ' - <span style="color:cornflowerblue;">' .. Lang:t('installed') ..
                                    '</span>'
                        else
                            price = math.floor(vehiclePrice * v.price / 100)
                            _label = GetHornName(j) .. ' - <span style="color:green;">$' .. price .. ' </span>'
                        end
                        table.insert(elements, {
                            label = _label,
                            modType = k,
                            modNum = j
                        })
                    end
                elseif v.modType == 'plateIndex' then
                    -- PLATES
                    for j = 0, 4, 1 do
                        local _label = ''
                        if j == currentMods.plateIndex then
                            _label = GetPlatesName(j) .. ' - <span style="color:cornflowerblue;">' .. Lang:t('installed') ..
                                    '</span>'
                        else
                            price = math.floor(vehiclePrice * v.price / 100)
                            _label = GetPlatesName(j) .. ' - <span style="color:green;">$' .. price .. ' </span>'
                        end
                        table.insert(elements, {
                            label = _label,
                            modType = k,
                            modNum = j
                        })
                    end
                elseif v.modType == 22 then
                    -- NEON
                    local _label = ''
                    if currentMods.modXenon then
                        _label = Lang:t('neon') .. ' - <span style="color:cornflowerblue;">' .. Lang:t('installed') .. '</span>'
                    else
                        price = math.floor(vehiclePrice * v.price / 100)
                        _label = Lang:t('neon') .. ' - <span style="color:green;">$' .. price .. ' </span>'
                    end
                    table.insert(elements, {
                        label = _label,
                        modType = k,
                        modNum = true
                    })
                elseif v.modType == 'xenonColor' then
                    -- XENON COLOR
                    local xenonColors = GetXenonColors()
                    price = math.floor(vehiclePrice * v.price / 100)
                    for i = 1, #xenonColors, 1 do
                        table.insert(elements, {
                            label = xenonColors[i].label .. ' - <span style="color:green;">$' .. price .. '</span>',
                            modType = k,
                            modNum = xenonColors[i].index
                        })
                    end
                elseif v.modType == 'neonColor' or v.modType == 'tyreSmokeColor' then
                    -- NEON & SMOKE COLOR
                    local neons = GetNeons()
                    price = math.floor(vehiclePrice * v.price / 100)
                    for i = 1, #neons, 1 do
                        table.insert(elements, {
                            label = '<span style="color:rgb(' .. neons[i].r .. ',' .. neons[i].g .. ',' .. neons[i].b ..
                                    ');">' .. neons[i].label .. ' - <span style="color:green;">$' .. price .. '</span>',
                            modType = k,
                            modNum = { neons[i].r, neons[i].g, neons[i].b }
                        })
                    end
                elseif v.modType == 'color1' or v.modType == 'color2' or v.modType == 'pearlescentColor' or v.modType ==
                        'wheelColor' then
                    -- RESPRAYS
                    local colors = GetColors(data.color)
                    for j = 1, #colors, 1 do
                        local _label = ''
                        price = math.floor(vehiclePrice * v.price / 100)
                        _label = colors[j].label .. ' - <span style="color:green;">$' .. price .. ' </span>'
                        table.insert(elements, {
                            label = _label,
                            modType = k,
                            modNum = colors[j].index
                        })
                    end
                elseif v.modType == 'windowTint' then
                    -- WINDOWS TINT
                    for j = 1, 5, 1 do
                        local _label = ''
                        if j == currentMods.modHorns then
                            _label = GetWindowName(j) .. ' - <span style="color:cornflowerblue;">' .. Lang:t('installed') ..
                                    '</span>'
                        else
                            price = math.floor(vehiclePrice * v.price / 100)
                            _label = GetWindowName(j) .. ' - <span style="color:green;">$' .. price .. ' </span>'
                        end
                        table.insert(elements, {
                            label = _label,
                            modType = k,
                            modNum = j
                        })
                    end
                elseif v.modType == 23 then
                    -- WHEELS RIM & TYPE
                    local props = {}

                    props['wheels'] = v.wheelType
                    QBCore.Functions.SetVehicleProperties(vehicle, props)

                    local modCount = GetNumVehicleMods(vehicle, v.modType)
                    for j = 0, modCount, 1 do
                        local modName = GetModTextLabel(vehicle, v.modType, j)
                        if modName then
                            local _label = ''
                            if j == currentMods.modFrontWheels then
                                _label = GetLabelText(modName) .. ' - <span style="color:cornflowerblue;">' ..
                                        Lang:t('installed') .. '</span>'
                            else
                                price = math.floor(vehiclePrice * v.price / 100)
                                _label = GetLabelText(modName) .. ' - <span style="color:green;">$' .. price ..
                                        ' </span>'
                            end
                            table.insert(elements, {
                                label = _label,
                                modType = 'modFrontWheels',
                                modNum = j,
                                wheelType = v.wheelType,
                                price = v.price
                            })
                        end
                    end
                elseif v.modType == 11 or v.modType == 12 or v.modType == 13 or v.modType == 15 or v.modType == 16 then
                    SetVehicleModKit(vehicle, 0)
                    local modCount = GetNumVehicleMods(vehicle, v.modType) -- UPGRADES
                    for j = 0, modCount, 1 do
                        local _label = ''
                        if j == currentMods[k] then
                            _label = Lang:t('level', { s = j + 1 }) .. ' - <span style="color:cornflowerblue;">' .. Lang:t('installed') ..
                                    '</span>'
                        else
                            price = math.floor(vehiclePrice * v.price[j + 1] / 100)
                            _label = Lang:t('level', { s = j + 1 }) .. ' - <span style="color:green;">$' .. price .. ' </span>'
                        end
                        table.insert(elements, {
                            label = _label,
                            modType = k,
                            modNum = j
                        })
                        if j == modCount - 1 then
                            break
                        end
                    end
                elseif v.modType == 17 then
                    -- TURBO
                    local _label = ''
                    if currentMods[k] then
                        _label = 'Turbo - <span style="color:cornflowerblue;">' .. Lang:t('installed') .. '</span>'
                    else
                        _label = 'Turbo - <span style="color:green;">$' .. math.floor(vehiclePrice * v.price[1] / 100) ..
                                ' </span>'
                    end
                    table.insert(elements, {
                        label = _label,
                        modType = k,
                        modNum = true
                    })
                else
                    local modCount = GetNumVehicleMods(vehicle, v.modType) -- BODYPARTS
                    for j = 0, modCount, 1 do
                        local modName = GetModTextLabel(vehicle, v.modType, j)
                        if modName then
                            local _label = ''
                            if j == currentMods[k] then
                                _label = GetLabelText(modName) .. ' - <span style="color:cornflowerblue;">' ..
                                        Lang:t('installed') .. '</span>'
                            else
                                price = math.floor(vehiclePrice * v.price / 100)
                                _label = GetLabelText(modName) .. ' - <span style="color:green;">$' .. price ..
                                        ' </span>'
                            end
                            table.insert(elements, {
                                label = _label,
                                modType = k,
                                modNum = j
                            })
                        end
                    end
                end
            else
                if data.value == 'primaryRespray' or data.value == 'secondaryRespray' or data.value ==
                        'pearlescentRespray' or data.value == 'modFrontWheelsColor' then
                    for i = 1, #Config.Colors, 1 do
                        if data.value == 'primaryRespray' then
                            table.insert(elements, {
                                label = Config.Colors[i].label,
                                value = 'color1',
                                color = Config.Colors[i].value
                            })
                        elseif data.value == 'secondaryRespray' then
                            table.insert(elements, {
                                label = Config.Colors[i].label,
                                value = 'color2',
                                color = Config.Colors[i].value
                            })
                        elseif data.value == 'pearlescentRespray' then
                            table.insert(elements, {
                                label = Config.Colors[i].label,
                                value = 'pearlescentColor',
                                color = Config.Colors[i].value
                            })
                        elseif data.value == 'modFrontWheelsColor' then
                            table.insert(elements, {
                                label = Config.Colors[i].label,
                                value = 'wheelColor',
                                color = Config.Colors[i].value
                            })
                        end
                    end
                else
                    for l, w in pairs(v) do
                        if l ~= 'label' and l ~= 'parent' then
                            table.insert(elements, {
                                label = w,
                                value = l
                            })
                        end
                    end
                end
            end
            break
        end
    end

    table.sort(elements, function(a, b)
        return a.label < b.label
    end)

    OpenLSMenu(elements, menuTitle)
end

-- Blips
CreateThread(function()
    for k, v in pairs(Config.Zones) do
        local blip = AddBlipForCoord(v.Pos.x, v.Pos.y, v.Pos.z)

        SetBlipSprite(blip, 72)
        SetBlipScale(blip, 0.8)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(v.Name)
        EndTextCommandSetBlipName(blip)
    end
end)

-- Activate menu when player is inside marker
CreateThread(function()
    while true do
        local Sleep = 1500
        local Near = false
        local playerPed = PlayerPedId()

        if IsPedInAnyVehicle(playerPed, false) then
            local coords = GetEntityCoords(playerPed)
            local currentZone, zone, lastZone
            local playerJob = QBCore.Functions.GetPlayerData().job

            if (playerJob and playerJob.name == 'mechanic') or not Config.IsMechanicJobOnly then
                for k, v in pairs(Config.Zones) do
                    local zonePos = vector3(v.Pos.x, v.Pos.y, v.Pos.z)
                    if #(coords - zonePos) < 10.0 then
                        Near = true
                        Sleep = 0
                        if not lsMenuIsShowed then
                            if not HintDisplayed then
                                HintDisplayed = true
                                SetTextComponentFormat("STRING")
                                AddTextComponentString(v.Hint)
                                DisplayHelpTextFromStringLabel(0, 0, 1, 20000)
                            end
                            if IsControlJustReleased(0, 38) then
                                local vehicle = GetVehiclePedIsIn(playerPed, false)
                                myCar = QBCore.Functions.GetVehicleProperties(vehicle)

                                local netId = NetworkGetNetworkIdFromEntity(vehicle)
                                TriggerServerEvent('esx_lscustom:startModing', myCar, netId)

                                closeMenu()
                                GetAction({
                                    value = 'main'
                                })

                                -- Prevent Free Tunning Bug
                                CreateThread(function()
                                    while true do
                                        local Sleep = 1000
                                        if lsMenuIsShowed then
                                            Sleep = 0
                                            DisableControlAction(2, 288, true)
                                            DisableControlAction(2, 289, true)
                                            DisableControlAction(2, 170, true)
                                            DisableControlAction(2, 167, true)
                                            DisableControlAction(2, 168, true)
                                            DisableControlAction(2, 23, true)
                                            DisableControlAction(0, 75, true) -- Disable exit vehicle
                                            DisableControlAction(27, 75, true) -- Disable exit vehicle
                                        end
                                        Wait(Sleep)
                                    end
                                end)
                            end
                        end
                    end
                end
                if not Near and HintDisplayed then
                    HintDisplayed = false
                    closeMenu()
                end
            end
        end
        Wait(Sleep)
    end
end)