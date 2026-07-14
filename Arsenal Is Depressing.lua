--[[
    Extra info: 
    -> Library has notifications
    -> Library has an unload function and doesnt have auto unload on re-execute.
    -> Please credit me this lib took SOOO long
]]
-- Variables
    -- Game / Random Functions
    local services = loadstring(game:HttpGet("https://raw.githubusercontent.com/iampro1240/GeekClient.gg---Apocalypse-Rising-2/refs/heads/main/services.lua"))()
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
        local Players = services:GetService("Players")
        local UserInputService = services:GetService("UserInputService")
        local RunService = services:GetService("RunService")
        local httpservice = services:GetService("HttpService")
        local Workspace = services:GetService("Workspace")
        local CoreGui = services:GetService("CoreGui")
        local ContextActionService = services:GetService("ContextActionService")
        local TeleportService = services:GetService("TeleportService")
        local Lighting = services:GetService("Lighting")
        local Stats = services:GetService("Stats")
        local TweenService = services:GetService("TweenService")
        local Debris = services:GetService("Debris")
        local TextChatService = services:GetService("TextChatService")
        local ReplicatedStorage = services:GetService("ReplicatedStorage")
        local MarketplaceService = services:GetService("MarketplaceService")
        local Client = Players.LocalPlayer

    --

    -- Game
        local Camera = Workspace.CurrentCamera
        local LocalPlayer = Players.LocalPlayer
        local PlaceId = game.PlaceId
        local Mouse = LocalPlayer:GetMouse()
        local TextChannels = FindFirstChild(TextChatService, "TextChannels")
        local MainChannel = TextChannels and FindFirstChild(TextChannels, "RBXGeneral")
        local CameraViewport = Camera.ViewportSize
        local mousePos = Client:GetMouse()
    --

    -- Position Spaces
        local Vector2new = services:CloneFunction(Vector2.new)
        local Vector3new = services:CloneFunction(Vector3.new)
        local CFramenew = services:CloneFunction(CFrame.new)
        local CFrameAngles = services:CloneFunction(CFrame.Angles)
        local Vector2zero = Vector2new(0, 0, 0)
        local Vector3zero = Vector3new(0, 0, 0)
        local UDim2new = services:CloneFunction(UDim2.new)
        local UDimnew = services:CloneFunction(UDim.new)
        local UDim2offset = services:CloneFunction(UDim2.fromOffset)
        local CameraOrigin = Vector2new(CameraViewport.X / 2, CameraViewport.Y / 2)
        local CameraPos = Camera.CFrame.Position
    --

    -- Math Functions
        local mathclamp = math.clamp
        local mathfloor = math.floor
        local mathceil = math.ceil
        local mathcos = math.cos
        local mathabs = math.abs
        local mathatan = math.atan
        local mathatan2 = math.atan2
        local mathrad = math.rad
        local mathsin = math.sin
        local mathmax = math.max
        local mathmin = math.min
        local mathtan = math.tan
        local mathtanh = math.tanh
        local mathpi = math.pi
        local mathacos = math.acos
        local mathsqrt = math.sqrt
        local mathrandom = math.random
        local mathdeg = math.deg
        local mathmodf = math.modf
        local mathlog = math.log
        local mathpow = math.pow
        local mathclamp = math.clamp
        local mathround = math.round
        local mathsign = math.sign
        local halfpi = mathpi / 2
    --

    -- Color Functions
        local Color3new = Color3.new
        local Color3fromRGB = Color3.fromRGB
        local Color3fromHSV = Color3.fromHSV
        local Color3fromHex = Color3.fromHex
        local NewGradient, GradientSequence, GradientNumberKeypoint, GradientNumberSequence = ColorSequence.new, ColorSequenceKeypoint.new, NumberSequenceKeypoint.new, NumberSequence.new
        local color3ToHex = function(color)
           local r = mathfloor(color.R * 255)
           local g = mathfloor(color.G * 255)
           local b = mathfloor(color.B * 255)
          return stringformat("#%02X%02X%02X", r, g, b)
        end
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
        local taskdefer = task.defer
        local Drawingnew = Drawing.new
        local Instancenew = Instance.new
        local taskspawn = task.spawn
    --


    -- Other Variables
    local hitDamage, hitUI
    local muzzlevelocity
    local bgravity

    --


    writefile("Minecraftia1.ttf", game:HttpGet("https://github.com/i77lhm/storage/blob/refs/heads/main/fonts/Minecraftia-Regular.ttf"))
    writefile("SmallestPixel71.ttf", game:HttpGet("https://github.com/sametexe001/luas/raw/refs/heads/main/fonts/windows-xp-tahoma.ttf"))
    local Minecraftia = {
	  name = "Minecraftia",
	  faces = {
	    {
		name = "Regular",
		weight = 400,
		style = "normal",
		assetId = getcustomasset("Minecraftia1.ttf")
	    }
	  }
    }



    local SmallestPixel7 = {
	  name = "SmallestPixel7",
	  faces = {
	    {
		name = "Regular",
		weight = 200,
		style = "normal",
		assetId = getcustomasset("SmallestPixel71.ttf")
	    }
	  }
    }




    writefile("Minecraftia.ttf", httpservice:JSONEncode(Minecraftia))
    writefile("SmallestPixel7.ttf", httpservice:JSONEncode(SmallestPixel7))

local dim_offset = UDim2.fromOffset
local Library, Esp, MiscOptions, Options = loadstring(game:HttpGet("https://raw.githubusercontent.com/iampro1240/Octohook-Mod/refs/heads/main/Octohook(Finobe's%20Version).lua"))()
local lib = {}
local cheat = {
  visualcache = {circle = Drawingnew("Circle"), outlinecircle = Drawingnew("Circle"), clientHighlight = Instancenew("Highlight", gethui()), vmHighlight = Instancenew("Highlight", gethui())};
  corpsecache = {};
  vehiclecache = {};


  -- basically add the oldGunStats to the current gun stats value, and just use it if you don't wanna return the value to 0 lol
  oldGunStats = {
    Spread = 0
  };



  connections = {
    silent;
    lock;
    facetarget;
    speedhack;
    jumpheight;
    zoom;
    customfov;
    removevfx;
    customtime;
    customambient;
    TPKill;
    chams;
    selfchams;
    noclip;
    customatmosphere;
    removeinventoryblur;
    customclouds;
    custombloom;
    spinbot;


    PAdded;
    PRemoved;
  };



  BulletTrails = {
    Electricity = "rbxassetid://12996830609";
    Lightning = "rbxassetid://7151778302";
    Pulse = "rbxassetid://11226108137";
    LightPulse = "rbxassetid://917186750";
    Reflex = "rbxassetid://833874434";
    Shards = "rbxassetid://13712007292";
  };



  HitVFX = {
   Firework = function(pos)
    taskspawn(function()
     local part = Instancenew("Part", Workspace.Terrain)
     local holder = Instancenew("Attachment", part)
     local impact, l1, l2, l3, stars = Instancenew("ParticleEmitter", holder), Instancenew("ParticleEmitter", holder), Instancenew("ParticleEmitter", holder), Instancenew("ParticleEmitter", holder), Instancenew("ParticleEmitter", holder)
     impact.Texture = "rbxassetid://7948615545"
     impact.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, returnflagcolor("HitVFXColor")), ColorSequenceKeypoint.new(1, returnflagcolor("HitVFXColor"))}
     impact.Lifetime = NumberRange.new(0, 5)
     impact.Rate = NumberRange.new(79, 80)
     impact.Speed = NumberRange.new(14, 15)
     impact.Rotation = NumberRange.new(89, 90)


     l1.Texture = "rbxassetid://1380079888"
     l1.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, returnflagcolor("HitVFXColor")), ColorSequenceKeypoint.new(1, returnflagcolor("HitVFXColor"))}
     l2.Texture = "rbxassetid://7216849703"
     l2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, returnflagcolor("HitVFXColor")), ColorSequenceKeypoint.new(1, returnflagcolor("HitVFXColor"))}
     l3.Texture = "rbxassetid://7216854486"
     l3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, returnflagcolor("HitVFXColor")), ColorSequenceKeypoint.new(1, returnflagcolor("HitVFXColor"))}
     stars.Texture = "rbxassetid://9563725822"
     stars.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, returnflagcolor("HitVFXColor")), ColorSequenceKeypoint.new(1, returnflagcolor("HitVFXColor"))}
     

     l1.Lifetime = NumberRange.new(0, 5)
     l1.Rate = NumberRange.new(79, 80)
     l1.Speed = NumberRange.new(14, 15)
     l1.Rotation = NumberRange.new(89, 90)


     l2.Lifetime = NumberRange.new(0, 5)
     l2.Rate = NumberRange.new(79, 80)
     l2.Speed = NumberRange.new(14, 15)
     l2.Rotation = NumberRange.new(89, 90)


     l3.Lifetime = NumberRange.new(0, 5)
     l3.Rate = NumberRange.new(79, 80)
     l3.Speed = NumberRange.new(14, 15)
     l3.Rotation = NumberRange.new(89, 90)


     stars.Lifetime = NumberRange.new(0, 5)
     stars.Rate = NumberRange.new(79, 80)
     stars.Speed = NumberRange.new(14, 15)
     stars.Rotation = NumberRange.new(89, 90)


     part.Transparency = 1
     part.Anchored = true
     part.Position = pos
     part.CanCollide = false

     taskwait(returnflag("HitVFXLifetime") / 1)
     part:Destroy()
     
    end)
   end
  };



  soundassets = {
	xp = writefile("xp.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/minecraftxp.txt?ref_type=heads")));
	neverlose = writefile("neverlose.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/neverlose.txt?ref_type=heads")));
	rust  = writefile("rust.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/rust.txt?ref_type=heads")));
	niggers  = writefile("niggers.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/niggers_string.txt?ref_type=heads")));
    tf2 = writefile("tf2.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/tf2.txt")));
    skeet = writefile("skeet.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/skeet2.txt")));
    sonic = writefile("sonic.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/sonic.txt")));
    fingersnap = writefile("fingersnap.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/fingersnap.txt")));
    bow = writefile("bow.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/bow_shoot.txt?ref_type=heads")));
  }; 



  oldGunAssets = {};



  modules = {
   
  };



  crosshairs = {
  };



  locktarget;
  gunmodel;
  barrelspoof;
  hitplr;
  targetvis;
  targetmanip;



}
lib.Minecraftia = Font.new(getcustomasset("Minecraftia.ttf"), Enum.FontWeight.Regular)
lib.SmallestPixel7 = Font.new(getcustomasset("SmallestPixel7.ttf"), Enum.FontWeight.Regular)
local Holder = Library:Window({Name = "Euphoria"})


local Window = Holder:Panel({
    Name = "Euphoria", 
    ButtonName = "Euphoria", 
    Size = dim_offset(550, 709), 
    Position = UDim2new(0, (Camera.ViewportSize.X / 2) - 550/2, 0, (Camera.ViewportSize.Y / 2) - 709/2), -- offset based on sizing 
})


local Tabs = {
    Combat = Window:Tab({Name = "Combat"}),
    Visuals = Window:Tab({Name = "Visuals"}),
    Players = Window:Tab({Name = "Players"}),
}


-- Main documentation
    local tab = Tabs.Combat
    local col1 = tab:Column({})

    local silent = col1:Section({Name = "Silent"})
    silent:Toggle({Name = "Enabled", Flag = "SilentAimToggle"})
    silent:Toggle({Name = "Visualize FOV", Flag = "FOVToggle"}):Colorpicker({Color = Color3fromRGB(255, 255, 255), Flag = "FOV_Color", Alpha = 1})
    silent:Toggle({Name = "Visualize FOV Outline", Flag = "FOVOutline"}):Colorpicker({Color = Color3fromRGB(255, 255, 255), Flag = "Outline_Color", Alpha = 1})
    silent:Toggle({Name = "Magic Bullet", Flag = "MagicBullet", Tooltip = {Text = "Teleports the bullet origin to the target, Which lets you wallbang obviously.", Title = "Magic Bullet(AKA Wallbang)"}})
    silent:Slider({Name = "Radius", Flag = "FOVRadius", Min = 50, Max = 200, Decimal = 1})
    silent:Slider({Name = "Vertices", Flag = "FOVNumSides", Min = 0, Max = 90, Decimal = 1})
   

    local config = col1:Section({Name = "Configuration"})
    config:Toggle({
        Name = "Resolver", 
        Tooltip = {
            Title = "Resolver", 
            Text = "Uses advanced scanning to determine an appropriate shoot position.\nMay be very laggy!!", 
            Width = 200,
        },
        Default = false
    })
    
    config:Toggle({Name = "Target Bots"})
    config:Toggle({Name = "Target Indicator"})
    :Colorpicker({Color = Color3fromRGB(255, 255, 255), Alpha = 1}) 
    config:Dropdown({Name = "Indicator Values", Options = {"none"}, Default = "none", Multi = false})
    config:Dropdown({Name = "Conditions", Options = {"none"}, Default = "none", Multi = false})
    config:Dropdown({Name = "Ignorelist", Options = {"none"}, Default = "none", Multi = false})

    local col2 = tab:Column({})

    local silent = col2:Section({Name = "Silent-Aim"})
    silent:Toggle({Name = "Enabled"})
    silent:Toggle({Name = "Visualize FOV"})
    :Colorpicker({Color = Color3fromRGB(255, 255, 255), Alpha = 1})
    silent:Slider({Min = -100, Max = 100, Decimal = 1})
    silent:Slider({Name = "Head Hitchance", Min = 0, Max = 100, Decimal = 1})
    silent:Slider({Name = "Body Hitchance", Min = 0, Max = 100, Decimal = 1})
    silent:Slider({Name = "Target Distance", Min = 0, Max = 500, Decimal = 1})
    silent:Slider({Name = "Max Distance", Min = 100, Max = 20000, Decimal = 1, Flag = "MaxDistance"})
    

    local mods = col2:Section({Name = "Gun Modifications"})
    mods:Toggle({Name = "Manipulation", Tooltip = {
            Title = "<font color = '#FFFF00'>WARNING!!</font>", 
            Text = "This may be detected, please use with caution.\nDesyncs your shoot position on the serverside.", 
            Width = 200,
        }
    })  

    -- Example of usage (Can be tweaked)
    local List;
    mods:Textbox({Name = "Search", Callback = function(text)
        if not List then 
            return 
        end 

        List.Filter(text)
    end})

    List = mods:Dropdown({Name = "Search + Scroll", Scrolling = true, Size = 100, Search = true, Callback = function(option)
        print(option)
    end})
        
    local Table = {}

    for i = 1, 100 do 
        table.insert(Table, tostring(i))
    end

    List.RefreshOptions(Table)

    local List;
    mods:Textbox({Name = "Search", Callback = function(text)
        if not List then 
            return 
        end 

        List.Filter(text)
    end})

    List = mods:List({Name = "Search + Scroll", Scrolling = true, Size = 100, Callback = function(option)
        print(option)
    end})
        
    local Table = {}

    for i = 1, 100 do 
        table.insert(Table, tostring(i))
    end

    List.RefreshOptions(Table)

    mods:Slider({Min = 0.1, Max = 10, Decimal = 1}) 
-- 


do --// Visuals
    local playerColumn, vehicleolumn = Tabs.Visuals:Column({}), Tabs.Visuals:Column({})
    local playerSection = playerColumn:Section({Name = "Player"})

    playerSection:Toggle({Name = "Name", Tooltip = {Text = "Fuck The Niggers", Title = "NiggerHater"}, Flag = "Names"}):Colorpicker({Color = Color3fromRGB(255, 255, 255), Alpha = 1, Flag = "Name_Color"})
    playerSection:Toggle({Name = "Distance", Flag = "Distance"}):Colorpicker({Color = Color3fromRGB(255, 255, 255), Alpha = 1, Flag = "Distance_Color"})
    playerSection:Toggle({Name = "Weapon", Flag = "Weapon"}):Colorpicker({Color = Color3fromRGB(255, 255, 255), Alpha = 1, Flag = "Weapon_Color"})
    playerSection:Toggle({Name = "Health Count", Flag = "Manipulated"}):Colorpicker({Color = Color3fromRGB(255, 255, 255), Alpha = 1, Flag = "Manipulated_Color2"})

    playerSection:Toggle({Name = "Box", Flag = "Boxes"}):Colorpicker({Color = Color3fromRGB(255, 255, 255), Alpha = 1, Flag = "Box_Color"})
    playerSection:Toggle({Name = "Healthbar", Flag = "Healthbar"}):Colorpicker({Color = Color3fromRGB(255, 255, 255), Alpha = 1, Flag = "Health_High"})

    playerSection:Toggle({Name = "Glow Chams", Flag = "GlowChams"}):Colorpicker({Color = Color3fromRGB(255, 255, 255), Alpha = 1, Flag = "GlowChamColor"})
    playerSection:Toggle({Name = "Highlights", Flag = "Highlights"}):Colorpicker({Color = Color3fromRGB(255, 255, 255), Alpha = 1, Flag = "OutlineColor"})

end


Tabs.Settings = Window:Tab({Name = "Settings"})
Library:Configs(Holder, Tabs.Settings)


-- Loops for text
    task.spawn(function()
        while task.wait(1) do
            if not Holder.Items.Holder.Visible then 
                continue
            end 

            Holder.ChangeMenuTitle(string.format("%s - Apocalypse Rising 2. - %s", "Euphoria", os.date("%b. %d %Y, %X")))
        end 
    end)

    Holder.ChangeMenuTitle(string.format("%s - Apocalypse Rising 2. - %s", "Euphoria", os.date("%b. %d %Y, %X")))
-- 


do --// ESP Functions
   function lib:DrawGui(self)
    	lib[self] = {holder = Instancenew("BillboardGui"), cache = {}, connection, Colors = Instancenew("Folder"), Borders = Instancenew("Folder"), chamsholder = Instancenew("Folder")}
    	lib[self].holder.Name = self.Name
        lib[self].holder.Size = UDim2new(7, 0, 7, 0)
    	lib[self].holder.Parent = gethui()
    	lib[self].holder.AlwaysOnTop = true
        lib[self].holder.StudsOffset = Vector3new(0, .45)
        
    
        lib[self].chamsholder.Parent = lib[self].holder
    
    
        lib[self].Colors.Parent = lib[self].holder
        lib[self].Borders.Parent = lib[self].holder
    
    
        lib[self].Colors.Name = "Colors"
        lib[self].Borders.Name = "Borders"
    
    
      return lib[self]
   end
   
   
   
   function lib:DrawGradient(properties)
       local obj = Instancenew("UIGradient")
       obj.Name = "UIGradient"
       obj.Parent = properties.Parent
   
       obj.Rotation = properties.Rotation
       obj.Color = properties.Color
   end
   
   
   
   function lib:DrawUIStroke(properties)
       local obj = Instancenew("UIStroke")
       obj.Parent = properties.Parent
   end
   
   
   
   function lib:DrawText(properties)
       local obj = Instancenew("TextLabel")
       local stroke = Instancenew("UIStroke")
           
       obj.Name = properties.Name
       obj.TextSize = properties.TextSize
       obj.RichText = true
   
       obj.Parent = properties.Parent
       obj.BackgroundTransparency = 1
           
       obj.BorderColor3 = Color3fromRGB(0, 0, 0)
       obj.BorderSizePixel = 0
   
       obj.TextStrokeTransparency = 1
   	   obj.FontFace = lib.Minecraftia
   
       obj.AnchorPoint = properties.AnchorPoint
       stroke.Parent = obj
   end
   
   
   
   function lib:DrawFrame(properties)
       local obj = Instancenew("Frame")
       obj.Name = properties.Name
       obj.Parent = properties.Parent
   
       obj.BackgroundTransparency = properties.BackgroundTransparency
   	   obj.BackgroundColor3 = properties.Color
   	   obj.BorderColor3 = Color3fromRGB(0, 0, 0)
   
       obj.BorderSizePixel = properties.BorderSizePixel
       obj.Position = properties.Position
       obj.Size = properties.Size
   
       obj.ZIndex = properties.Zindex
       obj.Rotation = properties.Rotation
       obj.AnchorPoint = properties.AnchorPoint
   end
   
   
   
   function lib:DrawImage(properties)
        local obj = Instancenew("ImageLabel")
        obj.Name = properties.Name
        obj.Parent = properties.Parent
        obj.Image = properties.Image
   
        obj.BackgroundTransparency = 1
    	obj.BorderColor3 = Color3fromRGB(0, 0, 0)
   
    	obj.BorderSizePixel = properties.BorderSizePixel
    	obj.Position = properties.Position
    	obj.Size = properties.Size
    
        obj.ZIndex = properties.Zindex
        obj.Rotation = properties.Rotation
        obj.AnchorPoint = properties.AnchorPoint
   end
   

   
   function lib:disconnect(self)
       lib[self].holder:Destroy()
       lib[self] = nil
   end
   
   
   
   function returnflag(flag)
       return Library.Flags[flag]
   end
   
   
   
   function returnflagcolor(color)
       return returnflag(color).Color
       --Library.Flags[color].c
   end
   
   
   
   function returnflagtransparency(color)
       return returnflag(color).Alpha or returnflag(color).Transparency
   end
   
   
   
   function returngradientcolor(color, colortwo)
       return NewGradient{GradientSequence(0, returnflagcolor(color)), GradientSequence(1, returnflagcolor(colortwo))}
   end
   
   
   
   function returnGradientTransparency(color, colortwo)
       return GradientNumberSequence{GradientNumberKeypoint(0, returnflagtransparency(color)), GradientNumberKeypoint(1, returnflagtransparency(colortwo))}
   end
   
   
   
   local GetPFromChar = function(p)
      return Players:GetPlayerFromCharacter(p)
   end
   
   
   
   function ESPObject(self)
     lib[self] = {Name = self.Name, Character = self.Character, holder = Instancenew("BillboardGui"), Visible = false, cache = {}, connection, Colors = Instancenew("Folder"), Borders = Instancenew("Folder"), chamsholder = Instancenew("Folder"), highlight = Instancenew("Highlight"), UI}
     local esp, player = lib[self], lib[self]
     local Colors = esp.Colors
     local Borders = esp.Borders 
     local espholder, cache, chamsholder, esphighlight = esp.holder, esp.cache, esp.chamsholder, esp.highlight
     
   
     espholder.Name = self.Name
     espholder.Size = UDim2new(7, 0, 7, 0)
     espholder.Parent = gethui()
     espholder.AlwaysOnTop = true
     espholder.StudsOffset = Vector3new(0, .45)
       
   
     chamsholder.Parent = espholder
     esphighlight.Parent = espholder
   
   
     Colors.Parent = espholder
     Borders.Parent = espholder
     Colors.Name = "Colors"
     Borders.Name = "Borders"
   
  
  
     esp.headHandle = Instancenew("BoxHandleAdornment", chamsholder)
     esp.leftUpperArmHandle = Instancenew("BoxHandleAdornment", chamsholder)
     esp.leftLowerArmHandle = Instancenew("BoxHandleAdornment", chamsholder)
     esp.leftHandHandle = Instancenew("BoxHandleAdornment", chamsholder)
   
   
     esp.rightUpperArmHandle = Instancenew("BoxHandleAdornment", chamsholder)
     esp.rightLowerArmHandle = Instancenew("BoxHandleAdornment", chamsholder)
     esp.rightHandHandle = Instancenew("BoxHandleAdornment", chamsholder)
   
   
     esp.upperTorsoHandle = Instancenew("BoxHandleAdornment", chamsholder)
     esp.lowerTorsoHandle = Instancenew("BoxHandleAdornment", chamsholder)
   
   
     esp.leftUpperLegHandle = Instancenew("BoxHandleAdornment", chamsholder)
     esp.leftLowerLegHandle = Instancenew("BoxHandleAdornment", chamsholder)
     esp.leftFootHandle = Instancenew("BoxHandleAdornment", chamsholder)
   
   
     esp.rightUpperLegHandle = Instancenew("BoxHandleAdornment", chamsholder)
     esp.rightLowerLegHandle = Instancenew("BoxHandleAdornment", chamsholder)
     esp.rightFootHandle = Instancenew("BoxHandleAdornment", chamsholder)


     esp.leftUpperArmBone = Drawingnew("Line")
     esp.leftLowerArmBone = Drawingnew("Line")
     esp.leftHandBone = Drawingnew("Line")
     

  
     for _, chams in chamsholder:GetChildren() do
       chams.ZIndex = 10
       chams.Transparency = -1
       chams.Shading = Enum.AdornShading.XRayShaded
     end
  
  
   
     do -- main text
       lib:DrawFrame({
           Name = "PName",
           Parent = esp.holder,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 1,
           BorderSizePixel = 1,
           Position = UDim2new(.5, 0, .12, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 9999999999,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
       lib:DrawFrame({
           Name = "UpperFlags",
           Parent = esp.holder,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 1,
           BorderSizePixel = 0,
           Position = UDim2new(.995, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 9999999999,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
       lib:DrawFrame({
           Name = "Flags",
           Parent = esp.holder,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 1,
           BorderSizePixel = 0,
           Position = UDim2new(.35, 0, .99, 0),
           Size = UDim2new(1, 0, .5, 0),
           Zindex = 1,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
       local FlagPadding = Instancenew("UIPadding", esp.holder["Flags"])
       local NamePadding = Instancenew("UIPadding", esp.holder["PName"])
       
   
       FlagPadding.PaddingTop = UDimnew(-0.01, 0)
       FlagPadding.PaddingBottom = UDimnew(0.4, 0)
       FlagPadding.PaddingLeft = UDimnew(1.78, 0)
       NamePadding.PaddingTop = UDimnew(0.5, 0)
   
   
   
       lib:DrawText({
           Name = "PName", 
   		Parent = esp.holder["PName"],
           TextSize = 12,
           AnchorPoint = Vector2new(0, 0)
       })
   
   
   
       lib:DrawText({
        Name = "Distance", 
   		Parent = esp.holder["Flags"],
        TextSize = 12,
        AnchorPoint = Vector2new(0, .05)
       })
   
   
   
       lib:DrawText({
        Name = "Weapon", 
   		Parent = esp.holder["Flags"],
        TextSize = 12,
        AnchorPoint = Vector2new(0, .05)
       })
   
   
   
       lib:DrawText({
        Name = "Manipulated", 
   		Parent = esp.holder,
        TextSize = 12,
        AnchorPoint = Vector2new(0, .05)
       })
   
   
     end
   
   
   
     do -- box
       lib:DrawFrame({
           Name = "Box",
           Parent = esp.holder,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 1,
           BorderSizePixel = 1,
           Position = UDim2new(0.17, 0, 0.12, 0),
           Size = UDim2new(0.65, 0, 0.88, 0),
           Zindex = 9999999999,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0),
       })
   
   
   
   
       lib:DrawFrame({
           Name = "Fill",
           Parent = esp.holder,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(0.17, 0, 0.12, 0),
           Size = UDim2new(0.65, 0, 0.88, 0),
           Zindex = 9999999999,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
       lib:DrawGradient({
           Parent = esp.holder["Fill"],
           Rotation = -90,
           Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3fromRGB(255, 255, 255))}
       })
   
   
   
       Colors.Parent = esp.holder["Box"]
       Borders.Parent = esp.holder["Box"]
   
   
   
       lib:DrawFrame({
           Name = "TopC",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(0, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 1,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
       lib:DrawFrame({
           Name = "LeftC",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(0, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 1,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
       lib:DrawFrame({
           Name = "RightC",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(1, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 1,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
       lib:DrawFrame({
           Name = "BottomC",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(0, 0, 1, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 1,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
   
       lib:DrawFrame({
           Name = "TopB",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(0, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
       lib:DrawFrame({
           Name = "LeftB",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(0, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
       lib:DrawFrame({
           Name = "RightB",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(1, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
       lib:DrawFrame({
           Name = "BottomB",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(0, 0, 1, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
     end
   
   
   
     do -- Corner
        lib:DrawFrame({
           Name = "cornertopsideL",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(0, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
        lib:DrawFrame({
           Name = "cornertopsideLC",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(0, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
        lib:DrawFrame({
           Name = "cornertopsideL2",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(0, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
       lib:DrawFrame({
           Name = "cornertopsidecL2C",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(0, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
   
        lib:DrawFrame({
           Name = "cornertopsideR",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(1, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
        lib:DrawFrame({
           Name = "cornertopsideRC",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(1, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
        lib:DrawFrame({
           Name = "cornertopsideR2",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(1, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
       lib:DrawFrame({
           Name = "cornertopsideRC2",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(1, 0, 0, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
       lib:DrawFrame({
           Name = "cornerbottomsideL",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(0, 0, 1, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
       lib:DrawFrame({
           Name = "cornerbottomsideLC",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(0, 0, 1, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
       lib:DrawFrame({
           Name = "cornerbottomsideL2",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(0, 0, 1, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -28,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
       lib:DrawFrame({
           Name = "cornerbottomsideLC2",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(0, 0, 1, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
       lib:DrawFrame({
           Name = "cornerbottomsideR",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(1, 0, 1, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
       lib:DrawFrame({
           Name = "cornerbottomsideRC",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(1, 0, 1, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
   
        lib:DrawFrame({
           Name = "cornerbottomsideR2",
           Parent = Borders,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(1, 0, 1, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = -25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
   
   
        lib:DrawFrame({
           Name = "cornerbottomsideRC2",
           Parent = Colors,
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(1, 0, 1, 0),
           Size = UDim2new(0, 0, 0, 0),
           Zindex = 25,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
        })
   
     end
   
   
   
     do -- HealthBar
       lib:DrawFrame({
           Name = "HealthBar",
           Parent = esp.holder,
           Color = Color3fromRGB(0, 0, 0),
           BackgroundTransparency = 0,
           BorderSizePixel = 1,
           Position = UDim2new(0.075, 0, 0.059, 0),
           Size = UDim2new(0.0049, 0, 0.87, 0),
           Zindex = 9999999999,
           Rotation = 180,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
       lib:DrawFrame({
           Name = "Bar",
           Parent = esp.holder["HealthBar"],
           Color = Color3fromRGB(255, 255, 255),
           BackgroundTransparency = 0,
           BorderSizePixel = 0,
           Position = UDim2new(0, 0, 0, 0),
           Size = UDim2new(1, 0, 1, 0),
           Zindex = 9999999999,
           Rotation = 0,
           AnchorPoint = Vector2new(0, 0, 0)
       })
   
   
   
       lib:DrawGradient({
           Parent = esp.holder.HealthBar["Bar"],
           Rotation = -90,
           Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3fromRGB(255, 255, 255))}
       })
     end
   
   
   
     esp.UI = {
        GUI = esp.holder;
        PName = esp.holder["PName"]["PName"];
        Distance = esp.holder["Flags"]["Distance"];
        Weapon = esp.holder["Flags"]["Weapon"];
        Manipulated = esp.holder["Manipulated"];
   
   
   
        UpperFlags = esp.holder["UpperFlags"];
        Flags = esp.holder["Flags"];
   
   
   
        Box = esp.holder["Box"];
        Fill = esp.holder["Fill"];
        TopB = esp.holder["Box"]["Borders"]["TopB"];
        LeftB = esp.holder["Box"]["Borders"]["LeftB"];
        RightB = esp.holder["Box"]["Borders"]["RightB"];
        BottomB = esp.holder["Box"]["Borders"]["BottomB"];
        
   
   
        TopC = esp.holder["Box"]["Colors"]["TopC"];
        LeftC = esp.holder["Box"]["Colors"]["LeftC"];
        RightC = esp.holder["Box"]["Colors"]["RightC"];
        BottomC = esp.holder["Box"]["Colors"]["BottomC"];
   
   
   
        CornerTopSideL = esp.holder["Box"]["Borders"]["cornertopsideL"],
        CornerTopSideLC = esp.holder["Box"]["Colors"]["cornertopsideLC"],
        CornerTopSideL2 = esp.holder["Box"]["Borders"]["cornertopsideL2"],
        CornerTopSideL2C = esp.holder["Box"]["Colors"]["cornertopsidecL2C"],
   
   
        CornerTopSideR = esp.holder["Box"]["Borders"]["cornertopsideR"],
        CornerTopSideRC = esp.holder["Box"]["Colors"]["cornertopsideRC"],
        CornerTopSideR2 = esp.holder["Box"]["Borders"]["cornertopsideR2"],
        CornerTopSideRC2 = esp.holder["Box"]["Colors"]["cornertopsideRC2"],
   
   
        CornerBottomSideL = esp.holder["Box"]["Borders"]["cornerbottomsideL"],
        CornerBottomSideLC = esp.holder["Box"]["Colors"]["cornerbottomsideLC"],
        CornerBottomSideL2 = esp.holder["Box"]["Borders"]["cornerbottomsideL2"],
        CornerBottomSideLC2 = esp.holder["Box"]["Colors"]["cornerbottomsideLC2"],
   
   
        CornerBottomSideR = esp.holder["Box"]["Borders"]["cornerbottomsideR"],
        CornerBottomSideRC = esp.holder["Box"]["Colors"]["cornerbottomsideRC"],
        CornerBottomSideR2 = esp.holder["Box"]["Borders"]["cornerbottomsideR2"],
        CornerBottomSideRC2 = esp.holder["Box"]["Colors"]["cornerbottomsideRC2"],
   
   
   
        HealthBar = esp.holder["HealthBar"];
        Bar = esp.holder["HealthBar"]["Bar"];
        BarGradient = esp.holder["HealthBar"]["Bar"]["UIGradient"];
     }
  
  
  
    --if self.Character or self.CharacterAdded:Wait() then
     esp.root, esp.humanoid = self.Character:WaitForChild("HumanoidRootPart", 60) or services:findfirstchild(self.Character, "HumanoidRootPart"), self.Character:WaitForChild("Humanoid", 60) or services:findfirstchild(self.Character, "Humanoid")
     esp.head = self.Character:WaitForChild("Head", 60) or services:findfirstchild(self.Character, "Head")
     esp.uppertorso = self.Character:WaitForChild("UpperTorso", 60) or services:findfirstchild(self.Character, "UpperTorso")
     esp.lowertorso = self.Character:WaitForChild("LowerTorso", 60) or services:findfirstchild(self.Character, "LowerTorso")
      
  
     esp.leftupperarm = self.Character:WaitForChild("LeftUpperArm", 60) or services:findfirstchild(self.Character, "LeftUpperArm")
     esp.leftlowerarm = self.Character:WaitForChild("LeftLowerArm", 60) or services:findfirstchild(self.Character, "LeftLowerArm")
     esp.lefthand = self.Character:WaitForChild("LeftHand", 60) or services:findfirstchild(self.Character, "LeftHand")
  
  
     esp.rightupperarm = self.Character:WaitForChild("RightUpperArm", 60) or services:findfirstchild(self.Character, "RightUpperArm")
     esp.rightlowerarm = self.Character:WaitForChild("RightLowerArm", 60) or services:findfirstchild(self.Character, "RightLowerArm")
     esp.righthand = self.Character:WaitForChild("RightHand", 60) or services:findfirstchild(self.Character, "RightHand")
  
  
     esp.leftupperleg = self.Character:WaitForChild("LeftUpperLeg", 60) or services:findfirstchild(self.Character, "LeftUpperLeg")
     esp.leftlowerleg = self.Character:WaitForChild("LeftLowerLeg", 60) or services:findfirstchild(self.Character, "LeftLowerLeg")
     esp.leftfoot = self.Character:WaitForChild("LeftFoot", 60) or services:findfirstchild(self.Character, "LeftFoot")
  
  
     esp.rightupperleg = self.Character:WaitForChild("RightUpperLeg", 60) or services:findfirstchild(self.Character, "RightUpperLeg")
     esp.rightlowerleg = self.Character:WaitForChild("RightLowerLeg", 60) or services:findfirstchild(self.Character, "RightLowerLeg")
     esp.rightfoot = self.Character:WaitForChild("RightFoot", 60) or services:findfirstchild(self.Character, "RightFoot")

  
    --end
 
 
 
     return lib[self]
   end
 
 
 
   local function newCharacter(Character)
       local esp = ESPObject(GetPFromChar(Character))
       esp.Character = Character
       esp.root, esp.humanoid = Character:WaitForChild("HumanoidRootPart", 60) or services:findfirstchild(Character, "HumanoidRootPart"), Character:WaitForChild("Humanoid", 60) or services:findfirstchild(Character, "Humanoid")
       esp.head = Character:WaitForChild("Head", 60) or services:findfirstchild(Character, "Head")
       esp.uppertorso = Character:WaitForChild("UpperTorso", 60) or services:findfirstchild(Character, "UpperTorso")
       esp.lowertorso = Character:WaitForChild("LowerTorso", 60) or services:findfirstchild(Character, "LowerTorso")
       
   
       esp.leftupperarm = Character:WaitForChild("LeftUpperArm", 60) or services:findfirstchild(Character, "LeftUpperArm")
       esp.leftlowerarm = Character:WaitForChild("LeftLowerArm", 60) or services:findfirstchild(Character, "LeftLowerArm")
       esp.lefthand = Character:WaitForChild("LeftHand", 60) or services:findfirstchild(Character, "LeftHand")
   
   
       esp.rightupperarm = Character:WaitForChild("RightUpperArm", 60) or services:findfirstchild(Character, "RightUpperArm")
       esp.rightlowerarm = Character:WaitForChild("RightLowerArm", 60) or services:findfirstchild(Character, "RightLowerArm")
       esp.righthand = Character:WaitForChild("RightHand", 60) or services:findfirstchild(Character, "RightHand")
   
   
       esp.leftupperleg = Character:WaitForChild("LeftUpperLeg", 60) or services:findfirstchild(Character, "LeftUpperLeg")
       esp.leftlowerleg = Character:WaitForChild("LeftLowerLeg", 60) or services:findfirstchild(Character, "LeftLowerLeg")
       esp.leftfoot = Character:WaitForChild("LeftFoot", 60) or services:findfirstchild(Character, "LeftFoot")
   
   
       esp.rightupperleg = Character:WaitForChild("RightUpperLeg", 60) or services:findfirstchild(Character, "RightUpperLeg")
       esp.rightlowerleg = Character:WaitForChild("RightLowerLeg", 60) or services:findfirstchild(Character, "RightLowerLeg")
       esp.rightfoot = Character:WaitForChild("RightFoot", 60) or services:findfirstchild(Character, "RightFoot")


   end
   
   
   
   local function OnRemoved(player)
       if lib[player] then
           lib[player].holder:Destroy()
           lib[player] = nil
       end
   
   
       if Library.Flags["PlayerLeaveNotification"] then
         Library:Notify({Text = "[GeekClient.Win] " .. player.Name .. " Left.", Time = 3, Animation = "Bounce"})
       end
   end
   
   
   
   local function newPlayer(player)
     if player.Character then
       taskdefer(newCharacter, player.Character)
     end
   
   
   
     player.CharacterAdded:Connect(newCharacter)
     player.CharacterRemoving:Connect(function()
       if lib[player] then
           lib[player].holder:Destroy()
           lib[player] = nil
       end
     end)
   
   
   
     if Library.Flags["PlayerJoinNotification"] then
       Library:Notify({Text = "[GeekClient.Win] " .. player.Name .. " Joined.", Time = 3, Animation = "Bounce"})
     end
   
   end



   Players.PlayerAdded:Connect(newPlayer)
   Players.PlayerRemoving:Connect(OnRemoved)
   for _, player in Players:GetPlayers() do
     if player.Name ~= Players.LocalPlayer.Name then
       taskdefer(newPlayer, player)
     end
   end


end


local Target
do --// Connections


 local distanceMath = function(root, pos)
    local rootPos = root.Position
    local Distance = mathceil(((Camera.CFrame.Position - rootPos).Magnitude))
      
    return mathfloor( mathpow(Camera.CFrame.LookVector.Magnitude * Distance, 2) / 100 * 2 )
    --return mathfloor(CameraPos.Z * mathsqrt(Distance) * 2 / Distance )
    --return (2 * Camera.ViewportSize.Y) / ((2 * Distance * mathtan(mathrad(Camera.FieldOfView) / 2)) * 1.5)
 end
   
   
 local distanceCheck = function(distancemag)
    if distancemag <= returnflag("MaxDistance") then
        return true
     else
        return false
    end
 end



 local getweapon = function(weapon)
    if weapon then
        return weapon.Name
     else
        return "Hands"
    end
 end
   

 --// ESP
 RunService.PreRender:Connect(function(deltatime)
  for _, player in lib do
   if typeof(player) ~= "table" then
      continue
   end
   if player and player.root and player.humanoid then
    local esp, UI = player.holder, player.UI
    local chams = player.chamsholder
    local root, humanoid = player.root, player.humanoid
    local pos, os = services:wtvp(root.Position)
    local distancemath, distancemag = distanceMath(root, pos), mathfloor((root.Position - Camera.CFrame.Position).Magnitude)
    
    
    local boxvis, healthcount, weapon = returnflag("Boxes"), mathfloor(humanoid.Health), services:findfirstchildofclass(player.Character, "Model")
    local health = humanoid.Health / humanoid.MaxHealth


    do -- GUI
     local cf, size = player.Character:GetBoundingBox()
     esp.Enabled = distanceCheck(distancemag, os)
     esp.Adornee = root
	 esp.StudsOffset = Vector3new(0, cf.Y / -cf.Z + -cf.Y / -cf.Z, 0)
     esp.Size = UDim2new(14, 0 * -distancemath + 20, 7, 0 * -distancemath + 10 + cf.Y / -cf.Z + -cf.Y / -cf.Z, 0)
    end


    do -- Texts
      UI.PName.TextColor3 = returnflagcolor("Name_Color")
      UI.Distance.TextColor3 = returnflagcolor("Distance_Color")
      UI.Weapon.TextColor3 = returnflagcolor("Weapon_Color")
     

      UI.PName.FontFace = lib.SmallestPixel7
      UI.Distance.FontFace = lib.SmallestPixel7
      UI.Weapon.FontFace = lib.SmallestPixel7
      UI.Manipulated.FontFace = lib.SmallestPixel7


      UI.PName.TextSize = 12
      UI.Distance.TextSize = 12
      UI.Weapon.TextSize = 12
      UI.Manipulated.TextSize = 12


      UI.PName.Size = UDim2new(1 + mathclamp((distancemath), 9, 9), 0, 0, -1 - mathclamp(-mathfloor(distancemath), 15, 15) )
      UI.Distance.Size = UDim2new(1 * mathclamp(distancemath, 9, 9), 0, 0, 1 + mathclamp(-mathfloor(distancemath), 13, 13) )
      UI.Weapon.Size = UDim2new(1 * mathclamp(distancemath, 9, 9), 0, 0, 1 + mathclamp(-mathfloor(distancemath), 37, 37) )
      UI.Manipulated.Size = UDim2new(0, -1 - mathclamp(mathfloor(-distancemath), 30, 30), .045, 1 + mathclamp(-mathfloor(distancemath), 7, 7))
      ---1 * mathclamp(-mathfloor(distancemath), 16, 16)
      --UDim2new(0, 1 - mathclamp(mathfloor(distancemath), 30, 30), .045, 1 * mathclamp(-mathfloor(distancemath), 7, 7))
      

      UI.PName.Text = player.Name
      --UI.PName.Text = player.Name .. stringformat("(" .. '<font color="%s">' .. Cheat.Players[player.Name].Status .. '</font><font color="%s"></font>)', color3ToHex(DataIndexColors[Cheat.Players[player.Name].Status]), color3ToHex(Library.Theme.Text))
      
      UI.PName.Position = UDim2new(0, 0, .1, 0)
      --UDim2new(0, 0, .1, 0)
      UI.PName.Visible = returnflag("Names") and os
      

      UI.Distance.Text = distancemag .. " Studs"
      UI.Distance.Visible = returnflag("Distance") and os
      UI.Distance.Position = UDim2new(0, 0, 1, 0)


      UI.Weapon.Text = getweapon(weapon)
      UI.Weapon.Visible = returnflag("Weapon") and os
      UI.Weapon.Position = UDim2new(0, 0, 1, 0)

      
      UI.Manipulated.Text = mathround(humanoid.Health)
      UI.Manipulated.Visible = returnflag("Manipulated") and os
      UI.Manipulated.Position = UDim2new(.35, 0, .12, 0)


      UI.Flags.Size = UDim2new(0, 0, .75, 0)
      UI.Flags.Position = UDim2new(.5, 0, .52, 0)


      UI.UpperFlags.Size = UDim2new(0, 1 + mathclamp(distancemath, 10, 10), .15, 0)
      UI.UpperFlags.Position = UDim2new(.36, 0 - mathclamp(-distancemath, 6, 6), .12, 0)
    end


    do -- Box
       UI.Box.Visible = boxvis 
       UI.Box.Size = UDim2new(.3, 0, .85, 0)
       UI.Box.Position = UDim2new(.35, 0, .12, 0)
     
     
       UI.TopB.Size = UDim2new(1, 0, 0, -1 * mathclamp(distancemath, -2, -1.5))
       UI.TopC.Size = UI.TopB.Size
       UI.TopB.Visible = boxvis
       UI.TopC.Visible = boxvis
        
        
       UI.BottomB.Size = UDim2new(1, 0, 0, -1 * mathclamp(-distancemath, 1.5, 2))
       UI.BottomC.Size = UI.BottomB.Size
       UI.BottomB.Visible = boxvis
       UI.BottomC.Visible = boxvis


       UI.LeftB.Size = UDim2new(0, 1 * mathclamp(distancemath, -2, -1.5), 1, 0)
       UI.LeftC.Size = UI.LeftB.Size
       UI.LeftB.Visible = boxvis
       UI.LeftC.Visible = boxvis

        
       UI.RightB.Size = UDim2new(0, -1 * mathclamp(-distancemath, 1.5, 2), 1, 0)
       UI.RightC.Size = UI.RightB.Size
       UI.RightB.Visible = boxvis
       UI.RightC.Visible = boxvis
 

       UI.Fill.Visible = false
       UI.Fill.Size = UI.Box.Size
       UI.Fill.Position = UI.Box.Position


       UI.TopC.BackgroundColor3 = returnflagcolor("Box_Color")
       UI.BottomC.BackgroundColor3 = returnflagcolor("Box_Color")
       UI.LeftC.BackgroundColor3 = returnflagcolor("Box_Color")
       UI.RightC.BackgroundColor3 = returnflagcolor("Box_Color")
    end


    do -- Healthbar
     UI.HealthBar.Visible = returnflag("Healthbar") and os
     UI.HealthBar.Size = UDim2new(0, 1 * mathclamp(-mathfloor(distancemath), 1.8, 2), .85, 0)
     UI.HealthBar.Position = UDim2new(.35, 0 - mathclamp(-mathfloor(distancemath), 5, 5), .12, 0)
     TweenService:Create(UI.Bar, TweenInfo.new(.8), {Size = UDim2new(1, 0, health, 0)}):Play()


     UI.BarGradient.Enabled = false
     UI.Bar.BackgroundColor3 = returnflagcolor("Health_High")
     UI.Manipulated.TextColor3  = returnflagcolor("Health_High")


     if health < .25 then
        UI.Bar.BackgroundColor3 = Color3fromRGB(179, 0, 0)
        UI.Manipulated.TextColor3  = Color3fromRGB(179, 0, 0)
        elseif health < .55 then
         UI.Bar.BackgroundColor3 = Color3fromRGB(255, 235, 0)
         UI.Manipulated.TextColor3  = Color3fromRGB(255, 235, 0)
         elseif health < 1 then
          UI.Bar.BackgroundColor3 = returnflagcolor("Health_High")
           UI.Manipulated.TextColor3  = returnflagcolor("Health_High")
     end

      
    end


    do -- Highlight Chams
        local highlight = player.highlight
        if returnflag("Highlights") then
           highlight.Adornee = root.Parent
           highlight.Enabled = returnflag("Highlights") and os or false
           highlight.OutlineColor = returnflagcolor("OutlineColor")
           highlight.FillColor = returnflagcolor("OutlineColor")
           highlight.OutlineTransparency = returnflagtransparency("OutlineColor")
           highlight.FillTransparency = -1
           --returnflagtransparency("FillColor")
         else
            highlight.Enabled = false
        end
    end
 

    do -- Box Chams
      local isChams = returnflag("GlowChams") and os and distanceCheck(distancemag, os) or false  
      local head = player.head
      local uppertorso = player.uppertorso
      local lowertorso = player.lowertorso
      
  
      local leftupperarm = player.leftupperarm
      local leftlowerarm = player.leftlowerarm
      local lefthand = player.lefthand
  
  
      local rightupperarm = player.rightupperarm
      local rightlowerarm = player.rightlowerarm
      local righthand = player.righthand
  
  
      local leftupperleg = player.leftupperleg
      local leftlowerleg = player.leftlowerleg
      local leftfoot = player.leftfoot
  
  
      local rightupperleg = player.rightupperleg
      local rightlowerleg = player.rightlowerleg
      local rightfoot = player.rightfoot
    
        if head and leftupperarm and leftlowerarm and lefthand and rightupperarm and rightlowerarm and righthand and uppertorso and lowertorso and leftupperleg and leftlowerleg and leftfoot and rightupperleg and rightlowerleg and rightfoot then
           local chamColor = Color3new(returnflagcolor("GlowChamColor").R * 15, returnflagcolor("GlowChamColor").G * 15, returnflagcolor("GlowChamColor").B * 15)
   
   
           local headhandle, upperTorsoHandle, lowerTorsoHandle = player.headHandle, player.upperTorsoHandle, player.lowerTorsoHandle
           local leftUpperArmHandle, leftLowerArmHandle, leftHandHandle = player.leftUpperArmHandle, player.leftLowerArmHandle, player.leftHandHandle
           local rightUpperArmHandle, rightLowerArmHandle, rightHandHandle = player.rightUpperArmHandle, player.rightLowerArmHandle, player.rightHandHandle
   
   
           local leftUpperLegHandle, leftLowerLegHandle, leftFootHandle = player.leftUpperLegHandle, player.leftLowerLegHandle, player.leftFootHandle
           local rightUpperLegHandle, rightLowerLegHandle, rightFootHandle = player.rightUpperLegHandle, player.rightLowerLegHandle, player.rightFootHandle
   
   
           headhandle.Adornee = head
           headhandle.Size = head.Size
           headhandle.Visible = isChams
           headhandle.Color3 = chamColor
   
   
           leftUpperArmHandle.Adornee = leftupperarm
           leftUpperArmHandle.Size = leftupperarm.Size
           leftUpperArmHandle.Visible = isChams
           leftUpperArmHandle.Color3 = chamColor
   
   
           leftLowerArmHandle.Adornee = leftlowerarm
           leftLowerArmHandle.Size = leftlowerarm.Size
           leftLowerArmHandle.Visible = isChams
           leftLowerArmHandle.Color3 = chamColor
   
   
           leftHandHandle.Adornee = lefthand
           leftHandHandle.Size = lefthand.Size
           leftHandHandle.Visible = isChams
           leftHandHandle.Color3 = chamColor
   
   
           rightUpperArmHandle.Adornee = rightupperarm
           rightUpperArmHandle.Size = rightupperarm.Size
           rightUpperArmHandle.Visible = isChams
           rightUpperArmHandle.Color3 = chamColor
   
   
           rightLowerArmHandle.Adornee = rightlowerarm
           rightLowerArmHandle.Size = rightlowerarm.Size
           rightLowerArmHandle.Visible = isChams
           rightLowerArmHandle.Color3 = chamColor
   
   
           rightHandHandle.Adornee = righthand
           rightHandHandle.Size = righthand.Size
           rightHandHandle.Visible = isChams
           rightHandHandle.Color3 = chamColor
   
   
           upperTorsoHandle.Adornee = uppertorso
           upperTorsoHandle.Size = uppertorso.Size
           upperTorsoHandle.Visible = isChams
           upperTorsoHandle.Color3 = chamColor
   
   
           lowerTorsoHandle.Adornee = lowertorso
           lowerTorsoHandle.Size = lowertorso.Size
           lowerTorsoHandle.Visible = isChams
           lowerTorsoHandle.Color3 = chamColor
   
   
           leftUpperLegHandle.Adornee = leftupperleg
           leftUpperLegHandle.Size = leftupperleg.Size
           leftUpperLegHandle.Visible = isChams
           leftUpperLegHandle.Color3 = chamColor
   
   
           leftLowerLegHandle.Adornee = leftlowerleg
           leftLowerLegHandle.Size = leftlowerleg.Size
           leftLowerLegHandle.Visible = isChams
           leftLowerLegHandle.Color3 = chamColor
   
   
           leftFootHandle.Adornee = leftfoot
           leftFootHandle.Size = leftfoot.Size
           leftFootHandle.Visible = isChams
           leftFootHandle.Color3 = chamColor
   
   
           rightUpperLegHandle.Adornee = rightupperleg
           rightUpperLegHandle.Size = rightupperleg.Size
           rightUpperLegHandle.Visible = isChams
           rightUpperLegHandle.Color3 = chamColor
   
   
           rightLowerLegHandle.Adornee = rightlowerleg
           rightLowerLegHandle.Size = rightlowerleg.Size
           rightLowerLegHandle.Visible = isChams
           rightLowerLegHandle.Color3 = chamColor
   
   
           rightFootHandle.Adornee = rightfoot
           rightFootHandle.Size = rightfoot.Size
           rightFootHandle.Visible = isChams
           rightFootHandle.Color3 = chamColor
      end

     end


    end



  end
 end)



 --// Targeting
 RunService.PreRender:Connect(function(deltatime)
   local circle, outlinecircle = cheat.visualcache.circle, cheat.visualcache.outlinecircle
   if returnflag("SilentAimToggle") then
    local distance

	circle.Radius = returnflag("FOVRadius")
    circle.Color = returnflagcolor("FOV_Color")
    circle.Transparency = returnflagtransparency("FOV_Color")
    circle.NumSides = returnflag("FOVNumSides")
    circle.Thickness = .5
    circle.Visible = returnflag("SilentAimToggle") and returnflag("FOVToggle") or false
    circle.ZIndex = 2

    

    outlinecircle.Radius = returnflag("FOVRadius")
    outlinecircle.Color = returnflagcolor("Outline_Color")
    outlinecircle.Transparency = returnflagtransparency("Outline_Color")
    outlinecircle.NumSides = returnflag("FOVNumSides")
    outlinecircle.Thickness = 3
    outlinecircle.Visible = returnflag("SilentAimToggle") and returnflag("FOVToggle") and returnflag("FOVOutline") or false
    outlinecircle.ZIndex = 1



    circle.Position = CameraOrigin
    outlinecircle.Position = CameraOrigin



    for _, P in lib do
     if typeof(P) ~= "table" then
        continue
      end
        if P and P.head and P.humanoid and P.humanoid.Health ~= 0 then
            local root = P.head
            local pos2, os = services:wtvp(root.Position)
            local dist = mathfloor((CameraOrigin - Vector2new(pos2.X, pos2.Y)).Magnitude)
            if dist <= (distance or returnflag("FOVRadius")) and os then
                Target = root
                distance = dist
            end
         end
      end
    end




 end)


end



do --// Hooks
  local SilentHook
  SilentHook = hookfunction(workspace.Raycast, newcclosure(function(p1, p2, p3, p4)
    if returnflag("SilentAimToggle") then
       local distance, targetMag = (Target.Position - p2).Magnitude, Target.Position.Magnitude
       local magicEquation = Target.Position + Vector3new(0,  distance / mathcos(targetMag) / distance  ,0)

     if Target ~= nil then
        if returnflag("MagicBullet") then
           p2 = magicEquation
        end

        p3 = CFrame.lookAt(p2, Target.Position).LookVector * 9e9
      
       return SilentHook(p1, p2, p3, p4)
    end

       return SilentHook(p1, p2, p3, p4)
    end
  end))



  local SilentHook2
  SilentHook2 = hookfunction(Ray.new, newcclosure(function(p1, p2)
    if returnflag("SilentAimToggle") then
       local distance, targetMag = (Target.Position - p1).Magnitude, Target.Position.Magnitude
       local magicEquation = Target.Position + Vector3new(0,  distance / mathcos(targetMag) / distance  ,0)

     if Target ~= nil then
        if returnflag("MagicBullet") then
           p1 = magicEquation
        end

        p2 = CFrame.lookAt(p2, Target.Position).LookVector * 9e9
		print(p2)
      
       return SilentHook2(p1, p2)
    end

       return SilentHook2(p1, p2)
    end
  end))




end
