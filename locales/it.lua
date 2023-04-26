local Translations = {
    by_default = 'default',
    installed = 'installato',
    already_own = 'possiedi già: %{s}',
    not_enough_money = 'non puoi permetterti questa modifica!',
    purchased = 'hai acquistato la modifica!',
    press_custom = 'premi ~b~[E]~s~ per personalizzare il tuo veicolo',
    level = 'livello %{s}',
    neon = 'neon',
    blip_name = 'los Santos Customs',
    cancel = '✖ Annulla',
    -- Paint Colors
    -- Black
    black = 'nero',
    graphite = 'grafite',
    black_metallic = 'nero metallico',
    caststeel = 'acciaio fuso',
    black_anth = 'nero antacite',
    matteblack = 'nero opaco',
    darknight = 'notte oscura',
    deepblack = 'nero profondo',
    oil = 'olio',
    carbon = 'carbonio',
    -- White
    white = 'bianco',
    vanilla = 'vaniglia',
    creme = 'crema',
    polarwhite = 'bianco polare',
    beige = 'beige',
    mattewhite = 'bianco opaco',
    snow = 'neve',
    cotton = 'cotone',
    alabaster = 'alabastro',
    purewhite = 'bianco puro',
    -- Grey
    grey = 'grigio',
    silver = 'argento',
    metallicgrey = 'grigio metallico',
    laminatedsteel = 'acciaio laminato',
    darkgray = 'grigio scuro',
    rockygray = 'grigio roccioso',
    graynight = 'grigio notte',
    aluminum = 'alluminio',
    graymat = 'grigio opaco',
    lightgrey = 'grigio chiaro',
    asphaltgray = 'grigio asfalto',
    grayconcrete = 'grigio cemento',
    darksilver = 'argento scuro',
    magnesite = 'magnesite',
    nickel = 'nickel',
    zinc = 'zinco',
    dolomite = 'dolomite',
    bluesilver = 'argento blu',
    titanium = 'titanio',
    steelblue = 'blu acciaio',
    champagne = 'champagne',
    grayhunter = 'grigio cacciatore',
    -- Red
    red = 'rosso',
    torino_red = 'rosso torino',
    poppy = 'papavero',
    copper_red = 'rosso rame',
    cardinal = 'rosso cardinale',
    brick = 'rosso mattone',
    garnet = 'Granato',
    cabernet = 'rosso cabernet',
    candy = 'caramella rossa',
    matte_red = 'rosso opaco',
    dark_red = 'rosso scuro',
    red_pulp = 'polpa rossa',
    bril_red = 'rosso brillante',
    pale_red = 'rosso pallido',
    wine_red = 'vino rosso',
    volcano = 'vulcano',
    -- Pink
    pink = 'rosa',
    electricpink = 'rosa elettrico',
    brightpink = 'rosa brillante',
    salmon = 'rosa salmone',
    sugarplum = 'rosa prugna',
    -- Blue
    blue = 'blu',
    topaz = 'blu topazio',
    light_blue = 'azzurro',
    galaxy_blue = 'blu galassia',
    dark_blue = 'blu scuro',
    azure = 'azzurro',
    navy_blue = 'blu marino',
    lapis = 'blu lapislazzulo',
    blue_diamond = 'blu diamante',
    surfer = 'surfista',
    pastel_blue = 'blu pastello',
    celeste_blue = 'blu celeste',
    rally_blue = 'rally Blue',
    blue_paradise = 'blu Paradiso',
    blue_night = 'blu notte',
    cyan_blue = 'blu ciano',
    cobalt = 'cobalto',
    electric_blue = 'blue elettrico',
    horizon_blue = 'blu orizzonte',
    metallic_blue = 'blu metallico',
    aquamarine = 'acquamarina',
    blue_agathe = 'blu agata',
    zirconium = 'zirconio',
    spinel = 'spinello',
    tourmaline = 'tormalina',
    paradise = 'paradiso',
    bubble_gum = 'blu gomma',
    midnight_blue = 'blu mezzanotte',
    forbidden_blue = 'blu proibito',
    glacier_blue = 'blu glaciale',
    -- Yellow
    yellow = 'giallo',
    wheat = 'giallo grano',
    raceyellow = 'giallo gara',
    paleyellow = 'giallo pallido',
    lightyellow = 'giallo chiaro',
    -- Green
    green = 'verde',
    met_dark_green = 'verde scuro metallico',
    rally_green = 'verde Rally',
    pine_green = 'verde pino',
    olive_green = 'verde oliva',
    light_green = 'verde chiaro',
    lime_green = 'verde lime',
    forest_green = 'verde foresta',
    lawn_green = 'verde prato',
    imperial_green = 'verde imperiale',
    green_bottle = 'verde bottiglia',
    citrus_green = 'verde agrumi',
    green_anis = 'verde anici',
    khaki = 'cachi',
    army_green = 'verde militare',
    dark_green = 'verde scuro',
    hunter_green = 'verde cacciatore',
    matte_foilage_green = 'verde foglia',
    -- Orange
    orange = 'arancione',
    tangerine = 'mandarino',
    matteorange = 'arancio opaco',
    lightorange = 'arancione chiaro',
    peach = 'pesca',
    pumpkin = 'zucca',
    orangelambo = 'arancione Lambo',
    -- Brown
    brown = 'marrone',
    copper = 'rame',
    lightbrown = 'marrone chiaro',
    darkbrown = 'marrone scuro',
    bronze = 'Bronzo',
    brownmetallic = 'marrone metallico',
    expresso = 'Espresso',
    chocolate = 'cioccolato',
    terracotta = 'Terracotta',
    marble = 'Marmo',
    sand = 'Sabbia',
    sepia = 'Seppia',
    bison = 'Bisonte',
    palm = 'Palmo',
    caramel = 'Caramello',
    rust = 'Ruggine',
    chestnut = 'Castagna',
    hazelnut = 'nocciola',
    shell = 'guscio',
    mahogany = 'Mogano',
    cauldron = 'marrone calderone',
    blond = 'marrone biondo',
    gravel = 'marrone ghiaia',
    darkearth = 'marrone terra scura',
    desert = 'deserto',
    -- Purple
    purple = 'viola',
    indigo = 'Indaco',
    deeppurple = 'viola intenso',
    darkviolet = 'viola scuro',
    amethyst = 'emetista',
    mysticalviolet = 'viola mistico',
    purplemetallic = 'viola metallico',
    matteviolet = 'viola opaco',
    mattedeeppurple = 'viola intenso opaco',
    -- Chrome
    chrome = 'cromato',
    brushedchrome = 'cromato spazzolato',
    blackchrome = 'nero gromato',
    brushedaluminum = 'alluminio spazzolato',
    -- Metal
    gold = 'oro',
    puregold = 'oro puro',
    brushedgold = 'oro spazzolato',
    lightgold = 'oro chiaro',
    -- License Plates
    blue_on_white_1 = 'blu su bianco 1',
    yellow_on_black = 'giallo su nero',
    yellow_blue = 'giallo su blu',
    blue_on_white_2 = 'blu su bianco 2',
    blue_on_white_3 = 'blu su bianco 3',
    -- Upgrades
    upgrades = 'aggiornamenti',
    engine = 'motore',
    brakes = 'freni',
    transmission = 'trasmissione',
    suspension = 'ssospensione',
    armor = 'armatura',
    turbo = 'turbo',
    no_turbo = 'no turbo',
    -- Cosmetics
    cosmetics = 'cosmetici',
    -- Body Parts
    bodyparts = 'parti del corpo',
    leftfender = 'parafango sinistro',
    rightfender = 'parafango destro',
    spoilers = 'spoiler',
    sideskirt = 'gonna laterale',
    cage = 'gabbia',
    hood = 'cappuccio',
    grille = 'griglia',
    rearbumper = 'paraurti posteriore',
    frontbumper = 'paraurti anteriore',
    exhaust = 'scarico',
    roof = 'tetto',
    -- Paint
    respray = 'verici',
    primary = 'primaria',
    secondary = 'secondaria',
    pearlescent = 'perlescente',
    -- Misc
    headlights = 'fari',
    licenseplates = 'targa',
    windowtint = 'tinta finestrino',
    horns = 'clacson',
    -- Neon
    neons = 'neon',
    -- Wheels
    wheels = 'ruote',
    tiresmoke = 'fumo pneumatici',
    wheel_type = 'tipo di ruota',
    wheel_color = 'colore cerchione',
    sport = 'sport',
    muscle = 'muscle',
    lowrider = 'lowrider',
    suv = 'SUV',
    allterrain = 'tutti i terreni',
    tuning = 'tuning',
    motorcycle = 'moto',
    highend = 'fascia alta',

    modplateholder = 'targa - posteriore',
    modvanityplate = 'targa - anteriore',
    interior = 'interni',
    trim = 'trim',
    dashboard = 'cruscotto',
    speedometer = 'tachimetro',
    door_speakers = 'casse audio',
    seats = 'sedili',
    steering_wheel = 'volante',
    gear_lever = 'leva del cambio',
    quarter_deck = 'quarter-deck',
    speakers = 'altoparlanti',
    trunk = 'tronco',
    hydraulic = 'idraulica',
    engine_block = 'blocco motore',
    air_filter = 'filtro aria',
    struts = 'puntoni',
    arch_cover = 'cover',
    aerials = 'antenne',
    wings = 'ali',
    fuel_tank = 'serbatoio carburante',
    windows = 'finestrini',
    stickers = 'Livrea',

    -- Xenon Colors
    mintgreen = 'Mint Green',
    goldenshower = 'Golden Shower',
    ponypink = 'Pony Pink',
    hotpink = 'Hot Pink',
    blacklight = 'Blacklight',
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})