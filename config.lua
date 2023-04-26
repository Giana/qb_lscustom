Config = {}
Config.DrawDistance = 10.0
Config.IsMechanicJobOnly = false

Config.Zones = {

    ls1 = {
        Pos = { x = -337.38, y = -136.92, z = 38.57 },
        Size = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 204, g = 204, b = 0 },
        Marker = 1,
        Name = Lang:t('blip_name'),
        Hint = Lang:t('press_custom')
    },

    ls2 = {
        Pos = { x = -1155.53, y = -2007.18, z = 12.74 },
        Size = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 204, g = 204, b = 0 },
        Marker = 1,
        Name = Lang:t('blip_name'),
        Hint = Lang:t('press_custom')
    },

    ls3 = {
        Pos = { x = 731.81, y = -1088.82, z = 21.73 },
        Size = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 204, g = 204, b = 0 },
        Marker = 1,
        Name = Lang:t('blip_name'),
        Hint = Lang:t('press_custom')
    },

    ls4 = {
        Pos = { x = 1175.04, y = 2640.21, z = 37.32 },
        Size = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 204, g = 204, b = 0 },
        Marker = 1,
        Name = Lang:t('blip_name'),
        Hint = Lang:t('press_custom')
    },

    ls5 = {
        Pos = { x = 110.99, y = 6626.39, z = 30.89 },
        Size = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 204, g = 204, b = 0 },
        Marker = 1,
        Name = Lang:t('blip_name'),
        Hint = Lang:t('press_custom')
    }

}

Config.Colors = {
    { label = Lang:t('black'), value = 'black' },
    { label = Lang:t('white'), value = 'white' },
    { label = Lang:t('grey'), value = 'grey' },
    { label = Lang:t('red'), value = 'red' },
    { label = Lang:t('pink'), value = 'pink' },
    { label = Lang:t('blue'), value = 'blue' },
    { label = Lang:t('yellow'), value = 'yellow' },
    { label = Lang:t('green'), value = 'green' },
    { label = Lang:t('orange'), value = 'orange' },
    { label = Lang:t('brown'), value = 'brown' },
    { label = Lang:t('purple'), value = 'purple' },
    { label = Lang:t('chrome'), value = 'chrome' },
    { label = Lang:t('gold'), value = 'gold' }
}

Config.DefaultWheelsPriceMultiplier = 2

function GetColors(color)
    local colors = {}
    if color == 'black' then
        colors = {
            { index = 0, label = Lang:t('black') },
            { index = 1, label = Lang:t('graphite') },
            { index = 2, label = Lang:t('black_metallic') },
            { index = 3, label = Lang:t('caststeel') },
            { index = 11, label = Lang:t('black_anth') },
            { index = 12, label = Lang:t('matteblack') },
            { index = 15, label = Lang:t('darknight') },
            { index = 16, label = Lang:t('deepblack') },
            { index = 21, label = Lang:t('oil') },
            { index = 147, label = Lang:t('carbon') }
        }
    elseif color == 'white' then
        colors = {
            { index = 106, label = Lang:t('vanilla') },
            { index = 107, label = Lang:t('creme') },
            { index = 111, label = Lang:t('white') },
            { index = 112, label = Lang:t('polarwhite') },
            { index = 113, label = Lang:t('beige') },
            { index = 121, label = Lang:t('mattewhite') },
            { index = 122, label = Lang:t('snow') },
            { index = 131, label = Lang:t('cotton') },
            { index = 132, label = Lang:t('alabaster') },
            { index = 134, label = Lang:t('purewhite') }
        }
    elseif color == 'grey' then
        colors = {
            { index = 4, label = Lang:t('silver') },
            { index = 5, label = Lang:t('metallicgrey') },
            { index = 6, label = Lang:t('laminatedsteel') },
            { index = 7, label = Lang:t('darkgray') },
            { index = 8, label = Lang:t('rockygray') },
            { index = 9, label = Lang:t('graynight') },
            { index = 10, label = Lang:t('aluminum') },
            { index = 13, label = Lang:t('graymat') },
            { index = 14, label = Lang:t('lightgrey') },
            { index = 17, label = Lang:t('asphaltgray') },
            { index = 18, label = Lang:t('grayconcrete') },
            { index = 19, label = Lang:t('darksilver') },
            { index = 20, label = Lang:t('magnesite') },
            { index = 22, label = Lang:t('nickel') },
            { index = 23, label = Lang:t('zinc') },
            { index = 24, label = Lang:t('dolomite') },
            { index = 25, label = Lang:t('bluesilver') },
            { index = 26, label = Lang:t('titanium') },
            { index = 66, label = Lang:t('steelblue') },
            { index = 93, label = Lang:t('champagne') },
            { index = 144, label = Lang:t('grayhunter') },
            { index = 156, label = Lang:t('grey') }
        }
    elseif color == 'red' then
        colors = {
            { index = 27, label = Lang:t('red') },
            { index = 28, label = Lang:t('torino_red') },
            { index = 29, label = Lang:t('poppy') },
            { index = 30, label = Lang:t('copper_red') },
            { index = 31, label = Lang:t('cardinal') },
            { index = 32, label = Lang:t('brick') },
            { index = 33, label = Lang:t('garnet') },
            { index = 34, label = Lang:t('cabernet') },
            { index = 35, label = Lang:t('candy') },
            { index = 39, label = Lang:t('matte_red') },
            { index = 40, label = Lang:t('dark_red') },
            { index = 43, label = Lang:t('red_pulp') },
            { index = 44, label = Lang:t('bril_red') },
            { index = 46, label = Lang:t('pale_red') },
            { index = 143, label = Lang:t('wine_red') },
            { index = 150, label = Lang:t('volcano') }
        }
    elseif color == 'pink' then
        colors = {
            { index = 135, label = Lang:t('electricpink') },
            { index = 136, label = Lang:t('salmon') },
            { index = 137, label = Lang:t('sugarplum') }
        }
    elseif color == 'blue' then
        colors = {
            { index = 54, label = Lang:t('topaz') },
            { index = 60, label = Lang:t('light_blue') },
            { index = 61, label = Lang:t('galaxy_blue') },
            { index = 62, label = Lang:t('dark_blue') },
            { index = 63, label = Lang:t('azure') },
            { index = 64, label = Lang:t('navy_blue') },
            { index = 65, label = Lang:t('lapis') },
            { index = 67, label = Lang:t('blue_diamond') },
            { index = 68, label = Lang:t('surfer') },
            { index = 69, label = Lang:t('pastel_blue') },
            { index = 70, label = Lang:t('celeste_blue') },
            { index = 73, label = Lang:t('rally_blue') },
            { index = 74, label = Lang:t('blue_paradise') },
            { index = 75, label = Lang:t('blue_night') },
            { index = 77, label = Lang:t('cyan_blue') },
            { index = 78, label = Lang:t('cobalt') },
            { index = 79, label = Lang:t('electric_blue') },
            { index = 80, label = Lang:t('horizon_blue') },
            { index = 82, label = Lang:t('metallic_blue') },
            { index = 83, label = Lang:t('aquamarine') },
            { index = 84, label = Lang:t('blue_agathe') },
            { index = 85, label = Lang:t('zirconium') },
            { index = 86, label = Lang:t('spinel') },
            { index = 87, label = Lang:t('tourmaline') },
            { index = 127, label = Lang:t('paradise') },
            { index = 140, label = Lang:t('bubble_gum') },
            { index = 141, label = Lang:t('midnight_blue') },
            { index = 146, label = Lang:t('forbidden_blue') },
            { index = 157, label = Lang:t('glacier_blue') }
        }
    elseif color == 'yellow' then
        colors = {
            { index = 42, label = Lang:t('yellow') },
            { index = 88, label = Lang:t('wheat') },
            { index = 89, label = Lang:t('raceyellow') },
            { index = 91, label = Lang:t('paleyellow') },
            { index = 126, label = Lang:t('lightyellow') }
        }
    elseif color == 'green' then
        colors = {
            { index = 49, label = Lang:t('met_dark_green') },
            { index = 50, label = Lang:t('rally_green') },
            { index = 51, label = Lang:t('pine_green') },
            { index = 52, label = Lang:t('olive_green') },
            { index = 53, label = Lang:t('light_green') },
            { index = 55, label = Lang:t('lime_green') },
            { index = 56, label = Lang:t('forest_green') },
            { index = 57, label = Lang:t('lawn_green') },
            { index = 58, label = Lang:t('imperial_green') },
            { index = 59, label = Lang:t('green_bottle') },
            { index = 92, label = Lang:t('citrus_green') },
            { index = 125, label = Lang:t('green_anis') },
            { index = 128, label = Lang:t('khaki') },
            { index = 133, label = Lang:t('army_green') },
            { index = 151, label = Lang:t('dark_green') },
            { index = 152, label = Lang:t('hunter_green') },
            { index = 155, label = Lang:t('matte_foilage_green') }
        }
    elseif color == 'orange' then
        colors = {
            { index = 36, label = Lang:t('tangerine') },
            { index = 38, label = Lang:t('orange') },
            { index = 41, label = Lang:t('matteorange') },
            { index = 123, label = Lang:t('lightorange') },
            { index = 124, label = Lang:t('peach') },
            { index = 130, label = Lang:t('pumpkin') },
            { index = 138, label = Lang:t('orangelambo') }
        }
    elseif color == 'brown' then
        colors = {
            { index = 45, label = Lang:t('copper') },
            { index = 47, label = Lang:t('lightbrown') },
            { index = 48, label = Lang:t('darkbrown') },
            { index = 90, label = Lang:t('bronze') },
            { index = 94, label = Lang:t('brownmetallic') },
            { index = 95, label = Lang:t('expresso') },
            { index = 96, label = Lang:t('chocolate') },
            { index = 97, label = Lang:t('terracotta') },
            { index = 98, label = Lang:t('marble') },
            { index = 99, label = Lang:t('sand') },
            { index = 100, label = Lang:t('sepia') },
            { index = 101, label = Lang:t('bison') },
            { index = 102, label = Lang:t('palm') },
            { index = 103, label = Lang:t('caramel') },
            { index = 104, label = Lang:t('rust') },
            { index = 105, label = Lang:t('chestnut') },
            { index = 108, label = Lang:t('brown') },
            { index = 109, label = Lang:t('hazelnut') },
            { index = 110, label = Lang:t('shell') },
            { index = 114, label = Lang:t('mahogany') },
            { index = 115, label = Lang:t('cauldron') },
            { index = 116, label = Lang:t('blond') },
            { index = 129, label = Lang:t('gravel') },
            { index = 153, label = Lang:t('darkearth') },
            { index = 154, label = Lang:t('desert') }
        }
    elseif color == 'purple' then
        colors = {
            { index = 71, label = Lang:t('indigo') },
            { index = 72, label = Lang:t('deeppurple') },
            { index = 76, label = Lang:t('darkviolet') },
            { index = 81, label = Lang:t('amethyst') },
            { index = 142, label = Lang:t('mysticalviolet') },
            { index = 145, label = Lang:t('purplemetallic') },
            { index = 148, label = Lang:t('matteviolet') },
            { index = 149, label = Lang:t('mattedeeppurple') }
        }
    elseif color == 'chrome' then
        colors = {
            { index = 117, label = Lang:t('brushedchrome') },
            { index = 118, label = Lang:t('blackchrome') },
            { index = 119, label = Lang:t('brushedaluminum') },
            { index = 120, label = Lang:t('chrome') }
        }
    elseif color == 'gold' then
        colors = {
            { index = 37, label = Lang:t('gold') },
            { index = 158, label = Lang:t('puregold') },
            { index = 159, label = Lang:t('brushedgold') },
            { index = 160, label = Lang:t('lightgold') }
        }
    end
    return colors
end

function GetWindowName(index)
    if (index == 1) then
        return "Pure Black"
    elseif (index == 2) then
        return "Darksmoke"
    elseif (index == 3) then
        return "Lightsmoke"
    elseif (index == 4) then
        return "Limo"
    elseif (index == 5) then
        return "Green"
    else
        return "Unknown"
    end
end

function GetHornName(index)
    if (index == 0) then
        return "Truck Horn"
    elseif (index == 1) then
        return "Cop Horn"
    elseif (index == 2) then
        return "Clown Horn"
    elseif (index == 3) then
        return "Musical Horn 1"
    elseif (index == 4) then
        return "Musical Horn 2"
    elseif (index == 5) then
        return "Musical Horn 3"
    elseif (index == 6) then
        return "Musical Horn 4"
    elseif (index == 7) then
        return "Musical Horn 5"
    elseif (index == 8) then
        return "Sad Trombone"
    elseif (index == 9) then
        return "Classical Horn 1"
    elseif (index == 10) then
        return "Classical Horn 2"
    elseif (index == 11) then
        return "Classical Horn 3"
    elseif (index == 12) then
        return "Classical Horn 4"
    elseif (index == 13) then
        return "Classical Horn 5"
    elseif (index == 14) then
        return "Classical Horn 6"
    elseif (index == 15) then
        return "Classical Horn 7"
    elseif (index == 16) then
        return "Scale - Do"
    elseif (index == 17) then
        return "Scale - Re"
    elseif (index == 18) then
        return "Scale - Mi"
    elseif (index == 19) then
        return "Scale - Fa"
    elseif (index == 20) then
        return "Scale - Sol"
    elseif (index == 21) then
        return "Scale - La"
    elseif (index == 22) then
        return "Scale - Ti"
    elseif (index == 23) then
        return "Scale - Do"
    elseif (index == 24) then
        return "Jazz Horn 1"
    elseif (index == 25) then
        return "Jazz Horn 2"
    elseif (index == 26) then
        return "Jazz Horn 3"
    elseif (index == 27) then
        return "Jazz Horn Loop"
    elseif (index == 28) then
        return "Star Spangled Banner 1"
    elseif (index == 29) then
        return "Star Spangled Banner 2"
    elseif (index == 30) then
        return "Star Spangled Banner 3"
    elseif (index == 31) then
        return "Star Spangled Banner 4"
    elseif (index == 32) then
        return "Classical Horn 8 Loop"
    elseif (index == 33) then
        return "Classical Horn 9 Loop"
    elseif (index == 34) then
        return "Classical Horn 10 Loop"
    elseif (index == 35) then
        return "Classical Horn 8"
    elseif (index == 36) then
        return "Classical Horn 9"
    elseif (index == 37) then
        return "Classical Horn 10"
    elseif (index == 38) then
        return "Funeral Loop"
    elseif (index == 39) then
        return "Funeral"
    elseif (index == 40) then
        return "Spooky Loop"
    elseif (index == 41) then
        return "Spooky"
    elseif (index == 42) then
        return "San Andreas Loop"
    elseif (index == 43) then
        return "San Andreas"
    elseif (index == 44) then
        return "Liberty City Loop"
    elseif (index == 45) then
        return "Liberty City"
    elseif (index == 46) then
        return "Festive 1 Loop"
    elseif (index == 47) then
        return "Festive 1"
    elseif (index == 48) then
        return "Festive 2 Loop"
    elseif (index == 49) then
        return "Festive 2"
    elseif (index == 50) then
        return "Festive 3 Loop"
    elseif (index == 51) then
        return "Festive 3"
    else
        return "Unknown Horn"
    end
end

function GetNeons()
    local neons = {
        { label = Lang:t('white'), r = 255, g = 255, b = 255 },
        { label = "Slate Gray", r = 112, g = 128, b = 144 },
        { label = "Blue", r = 0, g = 0, b = 255 },
        { label = "Light Blue", r = 0, g = 150, b = 255 },
        { label = "Navy Blue", r = 0, g = 0, b = 128 },
        { label = "Sky Blue", r = 135, g = 206, b = 235 },
        { label = "Turquoise", r = 0, g = 245, b = 255 },
        { label = "Mint Green", r = 50, g = 255, b = 155 },
        { label = "Lime Green", r = 0, g = 255, b = 0 },
        { label = "Olive", r = 128, g = 128, b = 0 },
        { label = Lang:t('yellow'), r = 255, g = 255, b = 0 },
        { label = Lang:t('gold'), r = 255, g = 215, b = 0 },
        { label = Lang:t('orange'), r = 255, g = 165, b = 0 },
        { label = Lang:t('wheat'), r = 245, g = 222, b = 179 },
        { label = Lang:t('red'), r = 255, g = 0, b = 0 },
        { label = Lang:t('pink'), r = 255, g = 161, b = 211 },
        { label = Lang:t('brightpink'), r = 255, g = 0, b = 255 },
        { label = Lang:t('purple'), r = 153, g = 0, b = 153 },
        { label = "Ivory", r = 41, g = 36, b = 33 }
    }

    return neons
end

function GetXenonColors()
    local xenonColors = {
        { label = Lang:t('neon'), index = -1 },
        { label = Lang:t('white'), index = 0 },
        { label = Lang:t('blue'), index = 1 },
        { label = Lang:t('electric_blue'), index = 2 },
        { label = Lang:t('mintgreen'), index = 3 },
        { label = Lang:t('lime_green'), index = 4 },
        { label = Lang:t('yellow'), index = 5 },
        { label = Lang:t('goldenshower'), index = 6 },
        { label = Lang:t('orange'), index = 7 },
        { label = Lang:t('red'), index = 8 },
        { label = Lang:t('ponypink'), index = 9 },
        { label = Lang:t('hotpink'), index = 10 },
        { label = Lang:t('purple'), index = 11 },
        { label = Lang:t('blacklight'), index = 11 },
    }

    return xenonColors
end

function GetPlatesName(index)
    if (index == 0) then
        return Lang:t('blue_on_white_1')
    elseif (index == 1) then
        return Lang:t('yellow_on_black')
    elseif (index == 2) then
        return Lang:t('yellow_blue')
    elseif (index == 3) then
        return Lang:t('blue_on_white_2')
    elseif (index == 4) then
        return Lang:t('blue_on_white_3')
    end
end

Config.Menus = {
    main = {
        label = 'LS CUSTOMS',
        parent = nil,
        upgrades = Lang:t('upgrades'),
        cosmetics = Lang:t('cosmetics')
    },
    upgrades = {
        label = Lang:t('upgrades'),
        parent = 'main',
        modEngine = Lang:t('engine'),
        modBrakes = Lang:t('brakes'),
        modTransmission = Lang:t('transmission'),
        modSuspension = Lang:t('suspension'),
        modArmor = Lang:t('armor'),
        modTurbo = Lang:t('turbo')
    },
    modEngine = {
        label = Lang:t('engine'),
        parent = 'upgrades',
        modType = 11,
        price = { 13.95, 32.56, 65.12, 139.53 }
    },
    modBrakes = {
        label = Lang:t('brakes'),
        parent = 'upgrades',
        modType = 12,
        price = { 4.65, 9.3, 18.6, 13.95 }
    },
    modTransmission = {
        label = Lang:t('transmission'),
        parent = 'upgrades',
        modType = 13,
        price = { 13.95, 20.93, 46.51, 63.55 }
    },
    modSuspension = {
        label = Lang:t('suspension'),
        parent = 'upgrades',
        modType = 15,
        price = { 3.72, 7.44, 14.88, 29.77, 40.2 }
    },
    modArmor = {
        label = Lang:t('armor'),
        parent = 'upgrades',
        modType = 16,
        price = { 69.77, 116.28, 130.00, 150.00, 180.00, 190.00 }
    },
    modTurbo = {
        label = Lang:t('turbo'),
        parent = 'upgrades',
        modType = 17,
        price = { 55.81 }
    },
    cosmetics = {
        label = Lang:t('cosmetics'),
        parent = 'main',
        bodyparts = Lang:t('bodyparts'),
        windowTint = Lang:t('windowtint'),
        modHorns = Lang:t('horns'),
        neonColor = Lang:t('neons'),
        resprays = Lang:t('respray'),
        -- modXenon			= Lang:t('headlights'),
        xenonColor = Lang:t('headlights'),
        plateIndex = Lang:t('licenseplates'),
        wheels = Lang:t('wheels'),
        modPlateHolder = Lang:t('modplateholder'),
        modVanityPlate = Lang:t('modvanityplate'),
        modTrimA = Lang:t('interior'),
        modOrnaments = Lang:t('trim'),
        modDashboard = Lang:t('dashboard'),
        modDial = Lang:t('speedometer'),
        modDoorSpeaker = Lang:t('door_speakers'),
        modSeats = Lang:t('seats'),
        modSteeringWheel = Lang:t('steering_wheel'),
        modShifterLeavers = Lang:t('gear_lever'),
        modAPlate = Lang:t('quarter_deck'),
        modSpeakers = Lang:t('speakers'),
        modTrunk = Lang:t('trunk'),
        modHydrolic = Lang:t('hydraulic'),
        modEngineBlock = Lang:t('engine_block'),
        modAirFilter = Lang:t('air_filter'),
        modStruts = Lang:t('struts'),
        modArchCover = Lang:t('arch_cover'),
        modAerials = Lang:t('aerials'),
        modTrimB = Lang:t('wings'),
        modTank = Lang:t('fuel_tank'),
        modWindows = Lang:t('windows'),
        modLivery = Lang:t('stickers')
    },

    modPlateHolder = {
        label = Lang:t('modplateholder'),
        parent = 'cosmetics',
        modType = 25,
        price = 3.49
    },
    modVanityPlate = {
        label = Lang:t('modvanityplate'),
        parent = 'cosmetics',
        modType = 26,
        price = 1.1
    },
    modTrimA = {
        label = Lang:t('interior'),
        parent = 'cosmetics',
        modType = 27,
        price = 6.98
    },
    modOrnaments = {
        label = Lang:t('trim'),
        parent = 'cosmetics',
        modType = 28,
        price = 0.9
    },
    modDashboard = {
        label = Lang:t('dashboard'),
        parent = 'cosmetics',
        modType = 29,
        price = 4.65
    },
    modDial = {
        label = Lang:t('speedometer'),
        parent = 'cosmetics',
        modType = 30,
        price = 4.19
    },
    modDoorSpeaker = {
        label = Lang:t('door_speakers'),
        parent = 'cosmetics',
        modType = 31,
        price = 5.58
    },
    modSeats = {
        label = Lang:t('seats'),
        parent = 'cosmetics',
        modType = 32,
        price = 4.65
    },
    modSteeringWheel = {
        label = Lang:t('steering_wheel'),
        parent = 'cosmetics',
        modType = 33,
        price = 4.19
    },
    modShifterLeavers = {
        label = Lang:t('gear_lever'),
        parent = 'cosmetics',
        modType = 34,
        price = 3.26
    },
    modAPlate = {
        label = Lang:t('quarter_deck'),
        parent = 'cosmetics',
        modType = 35,
        price = 4.19
    },
    modSpeakers = {
        label = Lang:t('speakers'),
        parent = 'cosmetics',
        modType = 36,
        price = 6.98
    },
    modTrunk = {
        label = Lang:t('trunk'),
        parent = 'cosmetics',
        modType = 37,
        price = 5.58
    },
    modHydrolic = {
        label = Lang:t('hydraulic'),
        parent = 'cosmetics',
        modType = 38,
        price = 5.12
    },
    modEngineBlock = {
        label = Lang:t('engine_block'),
        parent = 'cosmetics',
        modType = 39,
        price = 5.12
    },
    modAirFilter = {
        label = Lang:t('air_filter'),
        parent = 'cosmetics',
        modType = 40,
        price = 3.72
    },
    modStruts = {
        label = Lang:t('struts'),
        parent = 'cosmetics',
        modType = 41,
        price = 6.51
    },
    modArchCover = {
        label = Lang:t('arch_cover'),
        parent = 'cosmetics',
        modType = 42,
        price = 4.19
    },
    modAerials = {
        label = Lang:t('aerials'),
        parent = 'cosmetics',
        modType = 43,
        price = 1.12
    },
    modTrimB = {
        label = Lang:t('wings'),
        parent = 'cosmetics',
        modType = 44,
        price = 6.05
    },
    modTank = {
        label = Lang:t('fuel_tank'),
        parent = 'cosmetics',
        modType = 45,
        price = 4.19
    },
    modWindows = {
        label = Lang:t('windows'),
        parent = 'cosmetics',
        modType = 46,
        price = 4.19
    },
    modLivery = {
        label = Lang:t('stickers'),
        parent = 'cosmetics',
        modType = 48,
        price = 9.3
    },

    wheels = {
        label = Lang:t('wheels'),
        parent = 'cosmetics',
        modFrontWheelsTypes = Lang:t('wheel_type'),
        modFrontWheelsColor = Lang:t('wheel_color'),
        tyreSmokeColor = Lang:t('tiresmoke')
    },
    modFrontWheelsTypes = {
        label = Lang:t('wheel_type'),
        parent = 'wheels',
        modFrontWheelsType0 = Lang:t('sport'),
        modFrontWheelsType1 = Lang:t('muscle'),
        modFrontWheelsType2 = Lang:t('lowrider'),
        modFrontWheelsType3 = Lang:t('suv'),
        modFrontWheelsType4 = Lang:t('allterrain'),
        modFrontWheelsType5 = Lang:t('tuning'),
        modFrontWheelsType6 = Lang:t('motorcycle'),
        modFrontWheelsType7 = Lang:t('highend')
    },
    modFrontWheelsType0 = {
        label = Lang:t('sport'),
        parent = 'modFrontWheelsTypes',
        modType = 23,
        wheelType = 0,
        price = 4.65
    },
    modFrontWheelsType1 = {
        label = Lang:t('muscle'),
        parent = 'modFrontWheelsTypes',
        modType = 23,
        wheelType = 1,
        price = 4.19
    },
    modFrontWheelsType2 = {
        label = Lang:t('lowrider'),
        parent = 'modFrontWheelsTypes',
        modType = 23,
        wheelType = 2,
        price = 4.65
    },
    modFrontWheelsType3 = {
        label = Lang:t('suv'),
        parent = 'modFrontWheelsTypes',
        modType = 23,
        wheelType = 3,
        price = 4.19
    },
    modFrontWheelsType4 = {
        label = Lang:t('allterrain'),
        parent = 'modFrontWheelsTypes',
        modType = 23,
        wheelType = 4,
        price = 4.19
    },
    modFrontWheelsType5 = {
        label = Lang:t('tuning'),
        parent = 'modFrontWheelsTypes',
        modType = 23,
        wheelType = 5,
        price = 5.12
    },
    modFrontWheelsType6 = {
        label = Lang:t('motorcycle'),
        parent = 'modFrontWheelsTypes',
        modType = 23,
        wheelType = 6,
        price = 3.26
    },
    modFrontWheelsType7 = {
        label = Lang:t('highend'),
        parent = 'modFrontWheelsTypes',
        modType = 23,
        wheelType = 7,
        price = 5.12
    },
    modFrontWheelsColor = {
        label = Lang:t('wheel_color'),
        parent = 'wheels'
    },
    wheelColor = {
        label = Lang:t('wheel_color'),
        parent = 'modFrontWheelsColor',
        modType = 'wheelColor',
        price = 0.66
    },
    plateIndex = {
        label = Lang:t('licenseplates'),
        parent = 'cosmetics',
        modType = 'plateIndex',
        price = 1.1
    },
    resprays = {
        label = Lang:t('respray'),
        parent = 'cosmetics',
        primaryRespray = Lang:t('primary'),
        secondaryRespray = Lang:t('secondary'),
        pearlescentRespray = Lang:t('pearlescent'),
    },
    primaryRespray = {
        label = Lang:t('primary'),
        parent = 'resprays',
    },
    secondaryRespray = {
        label = Lang:t('secondary'),
        parent = 'resprays',
    },
    pearlescentRespray = {
        label = Lang:t('pearlescent'),
        parent = 'resprays',
    },
    color1 = {
        label = Lang:t('primary'),
        parent = 'primaryRespray',
        modType = 'color1',
        price = 1.12
    },
    color2 = {
        label = Lang:t('secondary'),
        parent = 'secondaryRespray',
        modType = 'color2',
        price = 0.66
    },
    pearlescentColor = {
        label = Lang:t('pearlescent'),
        parent = 'pearlescentRespray',
        modType = 'pearlescentColor',
        price = 0.88
    },
    modXenon = {
        label = Lang:t('headlights'),
        parent = 'cosmetics',
        modType = 22,
        price = 3.72
    },
    xenonColor = {
        label = Lang:t('headlights'),
        parent = 'cosmetics',
        modType = 'xenonColor',
        price = 3.72
    },
    bodyparts = {
        label = Lang:t('bodyparts'),
        parent = 'cosmetics',
        modFender = Lang:t('leftfender'),
        modRightFender = Lang:t('rightfender'),
        modSpoilers = Lang:t('spoilers'),
        modSideSkirt = Lang:t('sideskirt'),
        modFrame = Lang:t('cage'),
        modHood = Lang:t('hood'),
        modGrille = Lang:t('grille'),
        modRearBumper = Lang:t('rearbumper'),
        modFrontBumper = Lang:t('frontbumper'),
        modExhaust = Lang:t('exhaust'),
        modRoof = Lang:t('roof')
    },
    modSpoilers = {
        label = Lang:t('spoilers'),
        parent = 'bodyparts',
        modType = 0,
        price = 4.65
    },
    modFrontBumper = {
        label = Lang:t('frontbumper'),
        parent = 'bodyparts',
        modType = 1,
        price = 5.12
    },
    modRearBumper = {
        label = Lang:t('rearbumper'),
        parent = 'bodyparts',
        modType = 2,
        price = 5.12
    },
    modSideSkirt = {
        label = Lang:t('sideskirt'),
        parent = 'bodyparts',
        modType = 3,
        price = 4.65
    },
    modExhaust = {
        label = Lang:t('exhaust'),
        parent = 'bodyparts',
        modType = 4,
        price = 5.12
    },
    modFrame = {
        label = Lang:t('cage'),
        parent = 'bodyparts',
        modType = 5,
        price = 5.12
    },
    modGrille = {
        label = Lang:t('grille'),
        parent = 'bodyparts',
        modType = 6,
        price = 3.72
    },
    modHood = {
        label = Lang:t('hood'),
        parent = 'bodyparts',
        modType = 7,
        price = 4.88
    },
    modFender = {
        label = Lang:t('leftfender'),
        parent = 'bodyparts',
        modType = 8,
        price = 5.12
    },
    modRightFender = {
        label = Lang:t('rightfender'),
        parent = 'bodyparts',
        modType = 9,
        price = 5.12
    },
    modRoof = {
        label = Lang:t('roof'),
        parent = 'bodyparts',
        modType = 10,
        price = 5.58
    },
    windowTint = {
        label = Lang:t('windowtint'),
        parent = 'cosmetics',
        modType = 'windowTint',
        price = 1.12
    },
    modHorns = {
        label = Lang:t('horns'),
        parent = 'cosmetics',
        modType = 14,
        price = 1.12
    },
    neonColor = {
        label = Lang:t('neons'),
        parent = 'cosmetics',
        modType = 'neonColor',
        price = 1.12
    },
    tyreSmokeColor = {
        label = Lang:t('tiresmoke'),
        parent = 'wheels',
        modType = 'tyreSmokeColor',
        price = 1.12
    }

}
