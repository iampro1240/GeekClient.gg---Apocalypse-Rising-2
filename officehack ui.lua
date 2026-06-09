repeat 
    task.wait() 
until game:IsLoaded()

local StartTick = tick()
local Env = getgenv()

if Env.Cheat and Env.Cheat.Libraries and Env.Cheat.Libraries.Utility and Env.Cheat.Libraries.Utility.Unload then
    Env.Cheat.Libraries.Utility:Unload()
end

-- Variables
    -- Game / Random Functions
        local game = game
        local assert, 
            loadstring, 
            select, 
            next, 
            type, 
            typeof, 
            pcall, 
            xpcall, 
            setmetatable, 
            tick, 
            warn, 
            pairs 
            = 
            assert, 
            loadstring, 
            select, 
            next, 
            type, 
            typeof, 
            pcall, 
            xpcall, 
            setmetatable, 
            tick, 
            warn, 
            pairs
        local stringformat = string.format
        local getgenv, 
            getrawmetatable, 
            gethiddenproperty 
            = 
            getgenv, 
            getrawmetatable, 
            gethiddenproperty
        local osclock = os.clock

        local game_mt = getrawmetatable(game)

        local game_index = game_mt.__index

        local GetServiceFunc = game_index(game, "GetService")

        local GetService = function(...) return GetServiceFunc(game, ...) end

        local FindFirstChild = game_index(game, "FindFirstChild")

        local FindFirstChildWhichIsA = game_index(game, "FindFirstChildWhichIsA")

        local IsA = game_index(game, "IsA") 

        local camera_mt = getrawmetatable(workspace.CurrentCamera)

        local camera_index = camera_mt.__index
        
        local WorldToViewportPoint = camera_index(workspace.CurrentCamera, "WorldToViewportPoint")

        local workspace_mt = getrawmetatable(workspace)

        local workspace_index = workspace_mt.__index
        
        local Raycast = workspace_index(workspace, "Raycast")
    --

    -- Services
        local Players = GetService("Players")
        local UserInputService = GetService("UserInputService")
        local RunService = GetService("RunService")
        local httpservice = GetService("HttpService")
        local Workspace = GetService("Workspace")
        local CoreGui = GetService("CoreGui")
        local ContextActionService = GetService("ContextActionService")
        local TeleportService = GetService("TeleportService")
        local Lighting = GetService("Lighting")
        local Stats = GetService("Stats")
        local TweenService = GetService("TweenService")
        local Debris = GetService("Debris")
        local TextChatService = GetService("TextChatService")
    --

    -- Game
        local Camera = Workspace.CurrentCamera
        local LocalPlayer = Players.LocalPlayer
        local PlaceId = game.PlaceId
        local Mouse = LocalPlayer:GetMouse()
        local TextChannels = FindFirstChild(TextChatService, "TextChannels")
        local MainChannel = TextChannels and FindFirstChild(TextChannels, "RBXGeneral")
    --

    -- Position Spaces
        local Vector2new = Vector2.new
        local Vector3new = Vector3.new
        local CFramenew = CFrame.new
        local CFrameAngles = CFrame.Angles
        local Vector2zero = Vector2.zero
        local Vector3zero = Vector3.zero
        local UDim2new = UDim2.new
        local UDimnew = UDim.new
        local UDim2offset = UDim2.fromOffset
    --

    -- Math Functions
        local mathclamp = math.clamp
        local mathfloor = math.floor
        local mathcos = math.cos
        local mathabs = math.abs
        local mathatan2 = math.atan2
        local mathrad = math.rad
        local mathsin = math.sin
        local mathmax = math.max
        local mathmin = math.min
        local mathpi = math.pi
        local mathacos = math.acos
        local mathsqrt = math.sqrt
        local mathrandom = math.random
        local mathdeg = math.deg
        local halfpi = mathpi / 2
    --

    -- Color Functions
        local Color3new = Color3.new
        local Color3fromRGB = Color3.fromRGB
        local Color3fromHSV = Color3.fromHSV
        local Color3fromHex = Color3.fromHex
    --

    -- Table Functions
        local tableremove = table.remove
        local tableinsert = table.insert
        local tablefind = table.find
        local tablesort = table.sort
        local tableclear = table.clear
        local tableconcat = table.concat
        local tableunpack = table.unpack
    --

    -- Extra Functions
        local coroutinewrap = coroutine.wrap
        local taskwait = task.wait
        local Drawingnew = Drawing.new
        local Instancenew = Instance.new
        local taskspawn = task.spawn
        local MouseMoveRel = Env.mousemoverel
    --

    local Controller = {
        Alive = false,
        RootPart = nil,
        Humanoid = nil,
        Character = nil
    }

    local Misc = {
        ChatSpam = {
            Nerd = {
                "im such a skid 😜",
                "math is hard 🧮",
                "i speak klingon 👽",
                "i wear socks with sandals 👣",
                "my pocket 😎 protector brings all the nerds to the yard",
                "phd in quantum mechanics from hogwarts 🎓",
                "im a nerd and im proud 🤓👊",
                "i mainframe 💻 for fun",
                "i dream in binary 💭",
                "im fluent in c++ 💻",
                "my code is poetry 📝",
            },
            Random = {
                "sorry i hurt your roblox ego but look -> 🤏 I DON'T CARE",
                "i 😎 hacked my toaster",
                "i eat ones 😋 and zeros for breakfast",
                "i hacked nasa 🚀",
                "im a keyboard ninja ⌨️🥋",
                "i hacked 😈 my calculator",
                "banlands 🔨 🗻 down 🏚️  ⏬ STOP CRASHING BANLANDS!! 🤣",
                "password is 😡 password",
                "i can hack anything 💻🔓",
                "i can play doom on a pregnancy test 🎮🤰😎",
                "i can play doom on my fridge 🎮🍕",
                "my screen 🎨 is my canvas",
                "i'm the king 👑 of cyber",
                "TURN YOUR HACKS OFF!!! 🥹🥹😤😡😡😡",
                "BROO THIS IS SO UNFAIR 😭😢 TURN OFF PATHFINDING 😡💢💢💢💢💢😒🙄",
                "TURN TELEPORT SCANNING OFF NOWWW 😡😡💢💢💢💢💢💢😭😭😭",
                "i surf the dark web 🕸️",
                "votekick him!!!!!!! 😠 vk VK VK VK VOTEKICK HIM!!!!!!!!! 😠 😢 VOTE KICK !!!!! PRESS Y WHY DIDNT U PRESS Y LOL!!!!!! 😭 ",
                "YOU VOtEkickED tHe wrong PERson!!!!!!!!!",
                "i dream in code 💭💻",
                "i kick kittens 🐱👟",
                "i once 😂 kicked a soccer ball",
                "庆崇你好我讨厌你愚蠢的母愚蠢的母庆崇",
                "完成与草屋两个苏巴完成与草屋两个苏巴完成与草屋",
                "诶比西迪伊艾弗吉艾尺艾杰开艾勒艾马艾娜哦屁吉吾",
                "持有毁灭性的神经重景气游行脸红青铜色类别创意案",
                "音频少年公民记忆欲求无尽 heywe 僵尸强迫身体哑集中排水",
                "SETBASEWALKSPEED(999) SPEED CHEAT!!!!",
                "i kick 🚪 doors open",
                "i kicked a hole in space ⏰ time",
                "i kicked my computer 💻👟",
                "PASTE PASTE ITS PASTEEEEEDDDDDDD!!!!!!!",
                "HAHAHAHAHAHAHA",
                "i kicked a can down the road 🥫👟",
                "i kickflip in my dreams 🛹💭",
                "i kickstart my day ☕ with coffee",
                "i kick back 🛋️ and relax",
                "i kickstart revolutions 🔄👟",
                "i kickflip over obstacles 🛹↗️",
                "global🌍  warming🥵 freezing ❄️",
                "i cooked soup 🍲 in the fridge ❄️",
                "im a 🍦 popsicle",
                "sweating like a ☀️ snowman in summer 😅",
                "squirrel using 🐿️ oven mitts 🥊",
                "cold as polar bear 🐻❄️ toenails",
                "im hotter than the ☀️ sun 🔥",
                "im colder than 🪐 pluto ❄️",
                "im as cool as ice ❄️",
                "im melting like 🧈 butter 🔥",
                "im burning like a 🔥 furnace 💨",
                "monkey see 🐒",
                "monkey do 🙈",
                "banana time 🍌",
                "monkey business 🐵💼",
                "monkeying around 🙊",
                "ape escape 🦍",
                "chimp champ 🐵🏆",
                "gorilla warfare 🦍⚔️",
                "jungle swing 🌴🐒",
                "primate party 🎉🐵",
                "ape-tastic 🦍🎉",
            },
        },
        Emojis = {
            [1] = "😊",
            [2] = "😢",
            [3] = "😂",
            [4] = "❤️",
            [5] = "👍",
            [6] = "👎",
            [7] = "🔥",
            [8] = "👏",
            [9] = "🚀",
            [10] = "🤔",
            [11] = "😮",
            [12] = "😎",
            [13] = "😍",
            [14] = "😡",
            [15] = "👻",
            [16] = "👽",
            [17] = "🤖",
            [18] = "🦄",
            [19] = "😺",
            [20] = "🐶",
            [21] = "🐠",
            [22] = "🍕",
            [23] = "🌮",
            [24] = "🍰",
            [25] = "☕",
            [26] = "🍺",
            [27] = "🍷",
            [28] = "🍹",
            [29] = "🎵",
            [30] = "🎬",
            [31] = "🎮",
            [32] = "⚽",
            [33] = "🏀",
            [34] = "⚾",
            [35] = "🏈",
            [36] = "🎾",
            [37] = "⛳",
            [38] = "🏄",
            [39] = "⛷️",
            [40] = "🏂",
            [41] = "🚴",
            [42] = "🏊",
            [43] = "🏃",
            [44] = "🥾",
        },
        Symbols = {
            [1] = "!",
            [2] = "@",
            [3] = "#",
            [4] = "$",
            [5] = "%",
            [6] = "^",
            [7] = "&",
            [8] = "*",
            [9] = "(",
            [10] = ")",
            [11] = "-",
            [12] = "_",
            [13] = "+",
            [14] = "=",
            [15] = "[",
            [16] = "{",
            [17] = "]",
            [18] = "}",
            [19] = "|",
            [20] = [[\]],
            [21] = ";",
            [22] = ":",
            [23] = '"',
            [24] = "'",
            [25] = "<",
            [26] = ",",
            [27] = ">",
            [28] = ".",
            [29] = "?",
            [30] = "/",
        },
        Sleeping = false,

    }

    local Visuals = {
        BulletTracers = {
            ["Default"] = "rbxassetid://446111271",
            ["Beam"] = "rbxassetid://7151777149",
            ["Ion Beam"] = "rbxassetid://2950987173",
            ["Lightning"] = "rbxassetid://7151778302",
            ["Pulsing"] = "rbxassetid://11226108137",
            ["DNA"] = "rbxassetid://6511613786",
        },
        Materials = {
            ["ForceField"] = Enum.Material.ForceField,
            ["Glass"] = Enum.Material.Glass,
            ["Neon"] = Enum.Material.Neon,
            ["Plastic"] = Enum.Material.Plastic,
            ["Foil"] = Enum.Material.Foil,
            ["Ice"] = Enum.Material.Ice,
            ["Snow"] = Enum.Material.Snow,
            ["Cobblestone"] = Enum.Material.Cobblestone,
            ["Marble"] = Enum.Material.Marble,
        },
        Skyboxes = {
            ["Purple Nebula"] = {
                SkyboxBk = "rbxassetid://159454299",
                SkyboxDn = "rbxassetid://159454296",
                SkyboxFt = "rbxassetid://159454293",
                SkyboxLf = "rbxassetid://159454286",
                SkyboxRt = "rbxassetid://159454300",
                SkyboxUp = "rbxassetid://159454288"
            },
            ["Night Sky"] = {
                SkyboxBk = "rbxassetid://12064107",
                SkyboxDn = "rbxassetid://12064152",
                SkyboxFt = "rbxassetid://12064121",
                SkyboxLf = "rbxassetid://12063984",
                SkyboxRt = "rbxassetid://12064115",
                SkyboxUp = "rbxassetid://12064131"
            },
            ["Pink Daylight"] = {
                SkyboxBk = "rbxassetid://271042516",
                SkyboxDn = "rbxassetid://271077243",
                SkyboxFt = "rbxassetid://271042556",
                SkyboxLf = "rbxassetid://271042310",
                SkyboxRt = "rbxassetid://271042467",
                SkyboxUp = "rbxassetid://271077958"
            },
            ["Morning Glow"] = {
                SkyboxBk = "rbxassetid://1417494030",
                SkyboxDn = "rbxassetid://1417494146",
                SkyboxFt = "rbxassetid://1417494253",
                SkyboxLf = "rbxassetid://1417494402",
                SkyboxRt = "rbxassetid://1417494499",
                SkyboxUp = "rbxassetid://1417494643"
            },
            ["Setting Sun"] = {
                SkyboxBk = "rbxassetid://626460377",
                SkyboxDn = "rbxassetid://626460216",
                SkyboxFt = "rbxassetid://626460513",
                SkyboxLf = "rbxassetid://626473032",
                SkyboxRt = "rbxassetid://626458639",
                SkyboxUp = "rbxassetid://626460625"
            },
            ["Cache"] = {
                SkyboxBk = "rbxassetid://220513302",
                SkyboxDn = "rbxassetid://213221473",
                SkyboxFt = "rbxassetid://220513328",
                SkyboxLf = "rbxassetid://220513318",
                SkyboxRt = "rbxassetid://220513279",
                SkyboxUp = "rbxassetid://220513345"
            },
            ["Fade Blue"] = {
                SkyboxBk = "rbxassetid://153695414",
                SkyboxDn = "rbxassetid://153695352",
                SkyboxFt = "rbxassetid://153695452",
                SkyboxLf = "rbxassetid://153695320",
                SkyboxRt = "rbxassetid://153695383",
                SkyboxUp = "rbxassetid://153695471"
            },
            ["Elegant Morning"] = {
                SkyboxBk = "rbxassetid://153767241",
                SkyboxDn = "rbxassetid://153767216",
                SkyboxFt = "rbxassetid://153767266",
                SkyboxLf = "rbxassetid://153767200",
                SkyboxRt = "rbxassetid://153767231",
                SkyboxUp = "rbxassetid://153767288"
            },
            ["Neptune"] = {
                SkyboxBk = "rbxassetid://218955819",
                SkyboxDn = "rbxassetid://218953419",
                SkyboxFt = "rbxassetid://218954524",
                SkyboxLf = "rbxassetid://218958493",
                SkyboxRt = "rbxassetid://218957134",
                SkyboxUp = "rbxassetid://218950090"
            },
            ["Redshift"] = {
                SkyboxBk = "rbxassetid://401664839",
                SkyboxDn = "rbxassetid://401664862",
                SkyboxFt = "rbxassetid://401664960",
                SkyboxLf = "rbxassetid://401664881",
                SkyboxRt = "rbxassetid://401664901",
                SkyboxUp = "rbxassetid://401664936"
            },
            ["Aesthetic Night"] = {
                SkyboxBk = "rbxassetid://1045964490",
                SkyboxDn = "rbxassetid://1045964368",
                SkyboxFt = "rbxassetid://1045964655",
                SkyboxLf = "rbxassetid://1045964655",
                SkyboxRt = "rbxassetid://1045964655",
                SkyboxUp = "rbxassetid://1045962969"
            },
            ["Minecraft"] = {
                SkyboxBk = "rbxassetid://1876545003",
                SkyboxDn = "rbxassetid://1876544331",
                SkyboxFt = "rbxassetid://1876542941",
                SkyboxLf = "rbxassetid://1876543392",
                SkyboxRt = "rbxassetid://1876543764",
                SkyboxUp = "rbxassetid://1876544642"
            }
        },
        PartMaterials = {
            Minecraft = {
                Wood = "rbxassetid://3258599312",
                WoodPlanks = "rbxassetid://8676581022",
                Brick = "rbxassetid://8558400252",
                Cobblestone = "rbxassetid://5003953441",
                Concrete = "rbxassetid://7341687607",
                DiamondPlate = "rbxassetid://6849247561",
                Fabric = "rbxassetid://118776397",
                Granite = "rbxassetid://4722586771",
                Grass = "rbxassetid://4722588177",
                Ice = "rbxassetid://3823766459",
                Marble = "rbxassetid://62967586",
                Metal = "rbxassetid://62967586",
                Sand = "rbxassetid://152572215"
            },
        }
    }

    local ESP = {
        Players = {},
        Items = {},
        Image = nil,
        EnemyImage = nil,
        TeamImage = nil,
        FileType = nil,
        EnemyFileType = nil,
        TeamFileType = nil,
    }

    local Aimbot = {
        Targets = {},
        Target = nil,
        elapsedTime = 0,
        OldTarget = nil,
        Position = nil,
    }

    local SilentAim = {
        Targets = {},
        Target = nil,
        Position = nil,
    }

    local ConvertKeys = {
        [Enum.KeyCode.LeftShift] = "LS",
        [Enum.KeyCode.RightShift] = "RS",
        [Enum.KeyCode.LeftControl] = "LC",
        [Enum.KeyCode.RightControl] = "RC",
        [Enum.KeyCode.Insert] = "INS",
        [Enum.KeyCode.Backspace] = "BS",
        [Enum.KeyCode.Return] = "Ent",
        [Enum.KeyCode.LeftAlt] = "LA",
        [Enum.KeyCode.RightAlt] = "RA",
        [Enum.KeyCode.CapsLock] = "CAPS",
        [Enum.KeyCode.One] = "1",
        [Enum.KeyCode.Two] = "2",
        [Enum.KeyCode.Three] = "3",
        [Enum.KeyCode.Four] = "4",
        [Enum.KeyCode.Five] = "5",
        [Enum.KeyCode.Six] = "6",
        [Enum.KeyCode.Seven] = "7",
        [Enum.KeyCode.Eight] = "8",
        [Enum.KeyCode.Nine] = "9",
        [Enum.KeyCode.Zero] = "0",
        [Enum.KeyCode.KeypadOne] = "Num1",
        [Enum.KeyCode.KeypadTwo] = "Num2",
        [Enum.KeyCode.KeypadThree] = "Num3",
        [Enum.KeyCode.KeypadFour] = "Num4",
        [Enum.KeyCode.KeypadFive] = "Num5",
        [Enum.KeyCode.KeypadSix] = "Num6",
        [Enum.KeyCode.KeypadSeven] = "Num7",
        [Enum.KeyCode.KeypadEight] = "Num8",
        [Enum.KeyCode.KeypadNine] = "Num9",
        [Enum.KeyCode.KeypadZero] = "Num0",
        [Enum.KeyCode.Minus] = "-",
        [Enum.KeyCode.Equals] = "=",
        [Enum.KeyCode.Tilde] = "~",
        [Enum.KeyCode.LeftBracket] = "[",
        [Enum.KeyCode.RightBracket] = "]",
        [Enum.KeyCode.RightParenthesis] = ")",
        [Enum.KeyCode.LeftParenthesis] = "(",
        [Enum.KeyCode.Semicolon] = ",",
        [Enum.KeyCode.Quote] = "'",
        [Enum.KeyCode.BackSlash] = "\\",
        [Enum.KeyCode.Comma] = ",",
        [Enum.KeyCode.Period] = ".",
        [Enum.KeyCode.Slash] = "/",
        [Enum.KeyCode.Asterisk] = "*",
        [Enum.KeyCode.Plus] = "+",
        [Enum.KeyCode.Period] = ".",
        [Enum.KeyCode.Backquote] = "`",
        [Enum.UserInputType.MouseButton1] = "MB1",
        [Enum.UserInputType.MouseButton2] = "MB2",
        [Enum.UserInputType.MouseButton3] = "MB3",
        [Enum.KeyCode.Escape] = "ESC",
        [Enum.KeyCode.Space] = "SPC",
    }

    local Library = {
        Objects = {},
        ThemeMap = {},
        ThemeInstances = {},
        Images = {
            Saturation = "rbxassetid://13901004307",
            Checkers = "http://www.roblox.com/asset/?id=18274452449",
            Scroll = "rbxassetid://12776289446"
        },
        Theme = {
            ["Outline"] = Color3fromRGB(0, 0, 0),
            ["Background"] = Color3fromRGB(37, 37, 37),
            ["Accent"] = Color3fromRGB(0, 122, 204),
            ["Text"] = Color3fromRGB(255, 255, 255),
            ["Tab Enabled"] = Color3fromRGB(65, 65, 65),
            ["Tab Disabled"] = Color3fromRGB(45, 45, 45),
            ["Element Background"] = Color3fromRGB(45, 45, 45),
            ["Dark Text"] = Color3fromRGB(190, 190, 190)
        },
        OriginalTheme = {
            ["Outline"] = Color3fromRGB(0, 0, 0),
            ["Background"] = Color3fromRGB(37, 37, 37),
            ["Accent"] = Color3fromRGB(0, 122, 204),
            ["Text"] = Color3fromRGB(255, 255, 255),
            ["Tab Enabled"] = Color3fromRGB(65, 65, 65),
            ["Tab Disabled"] = Color3fromRGB(45, 45, 45),
            ["Element Background"] = Color3fromRGB(45, 45, 45),
            ["Dark Text"] = Color3fromRGB(190, 190, 190)
        },
        Folder = "Cheat",
        ScreenGui = nil,
        TweenSpeed = 0.2,
        LerpSpeed = 0.02,
        TweenEasingStyle = Enum.EasingStyle.Quint,
        Flags = {},
        ConfigFlags = {},
        CopiedColor = {
            c = Color3fromRGB(255, 255, 255),
            a = 1,
        },
        Keybinds = {},
        Notifications = {},
        Fps = 0
    }

    local Utility = {
        Connections = {},
        Objects = {},
        Drawings = {},
        BindToRenderSteps = {},
        DrawingTypes = {
            "Quad",
            "Square",
            "Circle",
            "Text",
            "Line",
            "Triangle",
            "Font"
        },
        Errors = {}
    }

    local Desync = {
        Positions = {
            Old = nil,
            New = nil
        },
        Overwriten = nil,
        ClonedCharacter = nil,
        NewStatus = nil,
    }
    
    local Cheat = {
        Libraries = {
            Controller = Controller,
            Misc = Misc,
            Visuals = Visuals,
            ESP = ESP,
            Aimbot = Aimbot,
            Library = Library,
            Utility = Utility,
            Desync = Desync
        },
        User = "developer",
        Players = {},
    }

    local Gravity = Vector3new(0, workspace.Gravity, 0)

    Env.Cheat = Cheat
--


-- Custom Fonts

    local DrawingFontsEnum = { }
    local Fonts = {}

    local fonts = {
        __url = "https://raw.githubusercontent.com/luminbot/FontStorage/main/",
        __fontdata = {
            "Proggy",
            "ProggyTiny",
            "Minecraftia",
            "SmallestPixel7",
            "Verdana",
            "VerdanaBold",
            "Tahoma",
            "ProggyClean",
            "TahomaClean",
            "TahomaXP"
        }
    }; do
        function fonts.load(font)
            local __ttf = string.format("%s.tff", font)
            local __json = string.format("%s.json", font)
    
            if not isfile(__ttf) then
                local success, data = pcall(function()
                    return game:HttpGet( string.format("%s%s.txt", fonts.__url, font) )
                end)
    
                if success and data then
                    writefile(__ttf, base64_decode(data))
                else
                    return
                end
            end
    
            if not isfile(__json) then
                local __font = {
                    name = font,
                    faces = {{
                        name = "Regular",
                        weight = 400,
                        style = "normal",
                        assetId = getcustomasset(__ttf)
                    }}
                }
        
                writefile(__json, httpservice:JSONEncode(__font))
            end
    
            fonts[font] = Font.new(getcustomasset(__json), Enum.FontWeight.Regular)
            DrawingFontsEnum[#DrawingFontsEnum + 1] = fonts[font]
            Fonts[font] = #DrawingFontsEnum
        end
    
        for _,font in fonts.__fontdata do
            fonts.load(font)
        end
    end

    function GetFontFromIndex(fontIndex)
        return DrawingFontsEnum[fontIndex]
    end
--

-- Utility
    -- define random utils 
    local BLRayParams = RaycastParams.new()
    BLRayParams.FilterDescendantsInstances = { Camera, workspace:FindFirstChild("Ignore"), workspace:FindFirstChild("Ignored"), workspace:FindFirstChild("ignored"), workspace:FindFirstChild("ignore"), workspace:FindFirstChild("Debris"), workspace:FindFirstChild("debris") }
    BLRayParams.FilterType = Enum.RaycastFilterType.Exclude
    BLRayParams.IgnoreWater = true

    Utility.Blacklist = BLRayParams 

    function Utility:New(type, props, secondarg)
        local IsDrawing = tablefind(Utility.DrawingTypes, type)

        local NewFunction = IsDrawing and Drawingnew or Instancenew
        
        local Object = NewFunction(type, secondarg)

        if props then
            for _,v in props do
                Object[_] = v
            end
        end

        if IsDrawing then
            Utility.Drawings[#Utility.Drawings + 1] = Object
        else
            Utility.Objects[#Utility.Objects + 1] = Object
        end

        return Object
    end

    function Utility:Connect(signal, func, name)
        name = name or "Undefined"

        local Connection; Connection = signal:Connect(function(...)
            local Args = {...}

            local Success, Message = pcall(function() coroutinewrap(func)(unpack(Args)) end)

            if not Success and not Utility.Errors[Message] then
                warn(('ERROR!!!\nAn error has occurred with the message:\n%s\nSignal Type: %s\nName: %s'):format(Message, tostring(signal), name))

                if Library.Notify then
                    Library:Notify({
                        Text =('<font color="rgb(255, 0, 0)">ERROR!!! </font>\nAn error has occurred with the message:\n%s\nSignal Type: %s\nName: %s'):format(Message, tostring(signal), name),
                        Time = 5000,
                        Type = "Warning",
                        Animation = "Bounce",
                    })
                end

                Utility.Errors[Message] = Message
                
                if Utility.Connections[Connection] then
                    Utility.Connections[Connection] = nil
                end

                return Connection:Disconnect()
            end
        end)

        if Connection then
            tableinsert(Utility.Connections, Connection)
        end
        
        return Connection
    end

    function Utility:BindToRenderStep(name, enum, callback)
        RunService:BindToRenderStep(name, enum, callback)

        Utility.BindToRenderSteps[name] = name
    end 

    function Utility:CFrameToVector3(cframe)
        return Vector3new(cframe.X, cframe.Y, cframe.Z)
    end

    function Utility:Lerp(a, b, c)
        c = c or 1 / 8
        
        local offset = mathabs(b - a)
        if (offset < c) then 
            return b 
        end 

        return a + (b - a) * c
    end

    function Utility:Round(number, float)
        local multiplier = 1 / (float or 1)
        return mathfloor(number * multiplier + 0.5) / multiplier
    end

    function Utility:CalculateVelocity(part)
        local OldPosition = part.Position

        local Time = RunService.Heartbeat:Wait()
        
        local NewPosition = part.Position

        return (NewPosition - OldPosition) / Time
    end

    function Utility:ConvertToEnum(Value)
        local enumParts = {}
        for part in string.gmatch(Value, "[%w_]+") do
            tableinsert(enumParts, part)
        end

        local enumTable = Enum
        for i = 2, #enumParts do
            local enumItem = enumTable[enumParts[i]]

            enumTable = enumItem
        end

        return enumTable
    end

    function Utility:GetRotate(Vec, Rads)
        local vec = Vec.Unit
        local sin = mathsin(Rads)
        local cos = mathcos(Rads)
        local x = (cos * vec.x) - (sin * vec.y)
        local y = (sin * vec.x) + (cos * vec.y)

        return Vector2new(x, y).Unit * Vec.Magnitude
    end

    function Utility:PositionOver(position, object, s_y)
        s_y = s_y or 0

        local posX, posY = object.AbsolutePosition.X, (object.AbsolutePosition.Y - s_y)
        local size = object.AbsoluteSize
        local sizeX, sizeY = posX + size.X, posY + size.Y + s_y

        if position.X >= posX and position.Y >= posY and position.X <= sizeX and position.Y <= sizeY then
            return true
        end

        return false
    end

    function Utility:MouseOver(object)
        local posX, posY = object.AbsolutePosition.X, object.AbsolutePosition.Y
        local size = object.AbsoluteSize
        local sizeX, sizeY = posX + size.X, posY + size.Y
        local position = UserInputService:GetMouseLocation() - Vector2new(0, 38)

        if position.X >= posX and position.Y >= posY and position.X <= sizeX and position.Y <= sizeY then
            return true
        end

        return false
    end

    function Utility:CreateBulletTracer(origin, endpos, color, time, decal)
        local Decal = Visuals.BulletTracers[decal] or "rbxassetid://446111271"

        local OriginAttachment = Utility:New("Attachment", {
            Position = origin,
            Parent = workspace.Terrain
        })

        local EndAttachment = Utility:New("Attachment", {
            Position = endpos,
            Parent = workspace.Terrain
        })
        
        local Beam = Utility:New("Beam", {
            Texture = Decal,
            LightEmission = 1,
            LightInfluence = 0,
            TextureSpeed = 10,
            Color = ColorSequence.new(color),
            Width0 = 1.2,
            Width1 = 1.2,
            Attachment0 = OriginAttachment,
            Attachment1 = EndAttachment,
            Enabled = true,
            Parent = Workspace.Terrain
        })

        Debris:AddItem(OriginAttachment, time)
        Debris:AddItem(EndAttachment, time)
        Debris:AddItem(Beam, time)
    end

    function Utility:Trajectory(origin, acceleration, target, speed, extra)
		local invertedAcc = -acceleration
		local targetOriginDiff = target - origin
		local a = invertedAcc:Dot(invertedAcc)
		local b = 4 * targetOriginDiff:Dot(targetOriginDiff)
		local c = 4 * (invertedAcc:Dot(targetOriginDiff) + speed * speed)
		local cam = c / (2 * a)
		local sqrtPart = mathsqrt(cam * (cam) - b / a)
		local time = mathsqrt((cam - sqrtPart < 0) and cam + sqrtPart or cam - sqrtPart)
		
		return invertedAcc * time / 2 + (extra or Vector3zero) + targetOriginDiff / time, time
	end

    function Utility.GetFiles(folder, extensions)
        local LibraryFolder = `{Library.Folder}\\{folder}\\`

        if not isfolder(LibraryFolder) then
            makefolder(LibraryFolder)
        end

        local Files = isfolder(LibraryFolder) and listfiles(LibraryFolder) or {}
        local StoredFiles = {}
        local FileNames = {}

        for _,v in Files do
            for _,ext in extensions do
                if v:find(ext) then
                    StoredFiles[#StoredFiles + 1] = v
                    FileNames[#FileNames + 1] = v:gsub(LibraryFolder, ""):gsub(ext, "")
                end
            end
        end
    
        return StoredFiles, FileNames
    end

            
           
    -- generic unloading
    function Utility:Unload()
        for _,v in Utility.Connections do
            v:Disconnect()
        end

        for _,v in Utility.BindToRenderSteps do
            RunService:UnbindFromRenderStep(v)
        end

        for _,v in Utility.Objects do
            v:Destroy()
        end
        
        for _,v in Utility.Drawings do
            if v and v.Remove then
                v:Remove()
            end
        end
    end
--
