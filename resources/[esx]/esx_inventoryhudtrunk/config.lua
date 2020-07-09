local Keys = {
    ["ESC"] = 322,
    ["F1"] = 288,
    ["F2"] = 289,
    ["F3"] = 170,
    ["F5"] = 166,
    ["F6"] = 167,
    ["F7"] = 168,
    ["F8"] = 169,
    ["F9"] = 56,
    ["F10"] = 57,
    ["~"] = 243,
    ["1"] = 157,
    ["2"] = 158,
    ["3"] = 160,
    ["4"] = 164,
    ["5"] = 165,
    ["6"] = 159,
    ["7"] = 161,
    ["8"] = 162,
    ["9"] = 163,
    ["-"] = 84,
    ["="] = 83,
    ["BACKSPACE"] = 177,
    ["TAB"] = 37,
    ["Q"] = 44,
    ["W"] = 32,
    ["E"] = 38,
    ["R"] = 45,
    ["T"] = 245,
    ["Y"] = 246,
    ["U"] = 303,
    ["P"] = 199,
    ["["] = 39,
    ["]"] = 40,
    ["ENTER"] = 18,
    ["CAPS"] = 137,
    ["A"] = 34,
    ["S"] = 8,
    ["D"] = 9,
    ["F"] = 23,
    ["G"] = 47,
    ["H"] = 74,
    ["K"] = 311,
    ["L"] = 182,
    ["LEFTSHIFT"] = 21,
    ["Z"] = 20,
    ["X"] = 73,
    ["C"] = 26,
    ["V"] = 0,
    ["B"] = 29,
    ["N"] = 249,
    ["M"] = 244,
    [","] = 82,
    ["."] = 81,
    ["-"] = 84,
    ["LEFTCTRL"] = 36,
    ["LEFTALT"] = 19,
    ["SPACE"] = 22,
    ["RIGHTCTRL"] = 70,
    ["HOME"] = 213,
    ["PAGEUP"] = 10,
    ["PAGEDOWN"] = 11,
    ["DELETE"] = 178,
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
    ["TOP"] = 27,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N8"] = 61,
    ["N9"] = 118
}

Config = {}

Config.CheckOwnership = false -- If true, Only owner of vehicle can store items in trunk.
Config.AllowPolice = false -- If true, police will be able to search players' trunks.

Config.Locale = "en"

Config.OpenKey = Keys["L"]

-- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 25000

-- Default weight for an item:
-- weight == 0 : The item do not affect character inventory weight
-- weight > 0 : The item cost place on inventory
-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 30

Config.localWeight = {
    bread = 10,
    water = 50,
    accessories = 30,
    axe = 200,
    bandage = 30,
    bottle = 50,
    cement = 1000,
    cleaning_liquld = 100,
    copper = 200,
    copper_bullet = 400,
    deionized_water = 50,
    diamond = 100,
    drill = 500,
    driver = 5,
    fish = 20,
    fishbait = 80,
    fishingrod = 10,
    gold = 200,
    gold_ingot = 400,
    grouper = 20,
    iron = 300,
    iron_ingot = 600,
    lockpick = 80,
    marijuana = 50,
    orange = 30,
    oxygen_mask = 100,
    alive_chicken = 50,
    packaged_chicken = 50,
    paper = 100,
    petrol = 1000,
    petrol_raffin = 500,
    phone = 100,
    radio = 100,
    rope = 25,
    rubber_band = 100,
    salmon = 20,
    shellfish = 20,
    shellfish_packaged = 50,
    shells = 5,
    siem = 100,
    stone = 200,
    vacuum_bag = 10,
    weed = 10,
    WEAPON_SMG = 5000
}

Config.VehicleLimit = {
    [0] = 6000, --Compact
    [1] = 6000, --Sedan
    [2] = 12000, --SUV
    [3] = 6000, --Coupes
    [4] = 6000, --Muscle
    [5] = 6000, --Sports Classics
    [6] = 6000, --Sports
    [7] = 7000, --Super
    [8] = 1000, --Motorcycles
    [9] = 12000, --Off-road
    [10] = 300000, --Industrial
    [11] = 70000, --Utility
    [12] = 12000, --Vans
    [13] = 0, --Cycles
    [14] = 5000, --Boats
    [15] = 20000, --Helicopters
    [16] = 800000, --Planes
    [17] = 40000, --Service
    [18] = 40000, --Emergency
    [19] = 0, --Military
    [20] = 300000, --Commercial
    [21] = 0 --Trains
}

Config.VehiclePlate = {
    taxi = "TAXI",
    cop = "POLICE",
    ambulance = "AMBULANCE",
    mecano = "MECA"
}
