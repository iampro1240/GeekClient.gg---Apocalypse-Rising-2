local services = loadstring(game:HttpGet("https://raw.githubusercontent.com/iampro1240/GeekClient.gg---Apocalypse-Rising-2/refs/heads/main/services.lua"))()
local lib = {}



local WS, ws = services:GetService("Workspace"), services:CloneReference(workspace)
local Players, ReplicatedStorage, RunService, TweenService, UserInputService, Lighting, Camera, Drawing, ReplicatedFirst = services:GetService("Players"), services:GetService("ReplicatedStorage"), services:GetService("RunService"), services:GetService("TweenService"), services:GetService("UserInputService"), services:GetService("Lighting"), services:CloneReference(workspace.CurrentCamera), Drawing.new, services:GetService("ReplicatedFirst")
local HttpService = services:GetService("HttpService")
local Client, ClientChar = Players.LocalPlayer, Players.LocalPlayer.Character
local mousePos = Client:GetMouse()
local CameraVector = Camera.CFrame.Position
local currenthitsound



local tan, floor, rad, sign, clamp, round, hideui = services:CloneFunction(math.tan), services:CloneFunction(math.floor), services:CloneFunction(math.rad), services:CloneFunction(math.sign), services:CloneFunction(math.clamp), services:CloneFunction(math.round), gethui()



local FromRGB, hex, NewGradient, GradientSequence, GradientNumberKeypoint, GradientNumberSequence = services:CloneFunction(Color3.fromRGB), services:CloneFunction(Color3.fromHex), services:CloneFunction(ColorSequence.new), services:CloneFunction(ColorSequenceKeypoint.new), services:CloneFunction(NumberSequenceKeypoint.new), services:CloneFunction(NumberSequence.new)
local dim2, dim, Vector2, Vector3, CreateVector, New = clonefunction(UDim2.new), clonefunction(UDim.new), clonefunction(Vector2.new), clonefunction(Vector3.new), clonefunction(vector.create), services:CloneFunction(Instance.new)



local CameraViewport = Camera.ViewportSize
local CameraOrigin = Vector2(CameraViewport.X / 2, CameraViewport.Y / 2)



local library, themes = loadstring(game:HttpGet("https://raw.githubusercontent.com/iampro1240/GeekClient.gg---Apocalypse-Rising-2/refs/heads/main/library.lua"))()
local window = library:window({name = os.date('$ AryanWare.xyz $ | executor: dev ~ %b %d %Y '), size = dim2(0, 900, 0, 900)})
library.target = Client



local cheat = {
  tabs = {
	aiming = window:tab({name = "Aiming"});
	visuals = window:tab({name = "Visuals"});
    movement = window:tab({name = "Movement"});
  };



  visualcache = {};
  corpsecache = {};
  vehiclecache = {};


  -- basically add the oldGunStats to the current gun stats value, and just use it if you don't wanna return the value to 0 lol
  oldGunStats = {
    Spread = 0
  };



  newGunStats = {
    Spread = 0
  };



  itemsList = {};



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
  };



  BulletTrails = {
    Electricity = "rbxassetid://7151777149";
    Lightning = "rbxassetid://7151778302";
    Pulse = "rbxassetid://11226108137";
    LightPulse = "rbxassetid://917186750";
    Reflex = "rbxassetid://833874434";
    Shards = "rbxassetid://13712007292";
  };



  values = {
  };



  soundassets = {
	xp = writefile("xp.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/minecraftxp.txt?ref_type=heads")));
	neverlose = writefile("neverlose.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/neverlose.txt?ref_type=heads")));
	rust  = writefile("rust.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/rust.txt?ref_type=heads")));
	niggers  = writefile("niggers.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/niggers_string.txt?ref_type=heads")));
    jewellxx = writefile("jewellxx.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/jewellxx.txt?ref_type=heads")));
    tf2 = writefile("tf2.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/tf2.txt")));
    skeet = writefile("skeet.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/skeet2.txt")));
    sonic = writefile("sonic.mp3", base64decode(game:HttpGet("https://gitlab.com/jaydenmyers215/sigma-hook-assets/-/raw/main/Audios/sonic.txt")));
  }; 



  modules = {
  };


}



writefile("Minecraftia1.ttf", game:HttpGet("https://github.com/i77lhm/storage/blob/refs/heads/main/fonts/Minecraftia-Regular.ttf"))
writefile("SmallestPixel71.ttf", game:HttpGet("https://github.com/i77lhm/storage/raw/refs/heads/main/fonts/smallest_pixel-7.ttf"))
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
		weight = 400,
		style = "normal",
		assetId = getcustomasset("SmallestPixel71.ttf")
	  }
	}
}



writefile("Minecraftia.ttf", HttpService:JSONEncode(Minecraftia))
writefile("SmallestPixel7.ttf", HttpService:JSONEncode(SmallestPixel7))
lib.ProggyClean = Font.new(getcustomasset("Minecraftia.ttf"), Enum.FontWeight.Regular)
lib.SmallestPixel7 = Font.new(getcustomasset("SmallestPixel7.ttf"), Enum.FontWeight.Regular)



local noclipvalue = function(value)
 if Client.Character == nil then return end

  for _, part in pairs(Client.Character:GetChildren()) do
    if part:IsA("MeshPart") or part:IsA("Part") then
        part.CanCollide = value
    end
  end
end



RunService.PreRender:Connect(function(deltatime)
 services:framelimit(deltatime)
 local hum


if library.flags["Zoom"] then
    if library.flags["ZoomBind"].active then
        Camera.FieldOfView = library.flags["ZoomAmount"]
    end
end


if library.flags["CustomTime"] then
    if not Lighting.TimeOfDay then
       return 
    end

    Lighting.TimeOfDay = library.flags["TimeOfDay"]
end



if library.flags["CustomAmbient"] then
    if not Lighting.Ambient then
       return 
    end

    Lighting.Ambient = library.flags["AmbientColor"].Color
end



if library.flags["CustomAtmosphere"] then
    if not Lighting.Atmosphere then
       return 
    end

    Lighting.Atmosphere.Glare = library.flags["GlareAmount"]
    Lighting.Atmosphere.Haze = library.flags["HazeAmount"]
end



if library.flags["CustomClouds"] then
    if not ws.Terrain.Clouds then
       return 
    end

    ws.Terrain.Clouds.Color = library.flags["CloudColor"].Color
    ws.Terrain.Clouds.Cover = library.flags["CloudCover"]
    ws.Terrain.Clouds.Density = library.flags["CloudDensity"]
end



if Client.Character == nil then
    return 
end



if services:findfirstchild(Client.Character, "Humanoid") then
   hum = services:CloneReference(Client.Character["Humanoid"])
end



if library.flags["SpeedHack"] then
 if library.flags["SpeedBind"].active and hum then
    hum.WalkSpeed = library.flags["WalkSpeed"]
end



if library.flags["JumpHack"] and hum then
    hum.JumpPower = library.flags["JumpHeight"]
end



if library.flags["NoClip"] then
 if library.flags["NoClipBind"].active then
    noclipvalue(false)
else
    noclipvalue(true)
 end
    noclipvalue(false)
  end
 end
end)



local getweapon = function(self)
    local weapon = services:findfirstchildofclass(self, "Tool")

    if weapon then
       return weapon.Name or tostring(weapon)
    else
       return "Hands"
    end
end



local TestHitSound = function(sfx)
  task.spawn(function()
    if not getcustomasset(sfx) then
        return
    end

    local asset_id = getcustomasset(sfx)
    local sound = New("Sound", hideui)

    sound.SoundId = asset_id
    sound.Volume = library.flags["HitSoundVolume"]
    currenthitsound = sfx
    sound:Play()

    task.wait(3)
    sound:Destroy()
      
  end)
end



function lib:DrawGui(self)
	lib[self] = {holder = New("BillboardGui"), cache = {}, connection, Colors = New("Folder"), Borders = New("Folder"), chamsholder = New("Folder"), highlight = New("Highlight")}
	lib[self].holder.Name = self.Name
    lib[self].holder.Size = dim2(7, 0, 7, 0)
	lib[self].holder.Parent = hideui
	lib[self].holder.AlwaysOnTop = true
    lib[self].holder.StudsOffset = Vector3(0, .45)
    

    lib[self].chamsholder.Parent = lib[self].holder
    lib[self].highlight.Parent = hideui


    lib[self].Colors.Parent = lib[self].holder
    lib[self].Borders.Parent = lib[self].holder


   do -- boxhandleadornments
    local Head = New("BoxHandleAdornment", lib[self].chamsholder)
    local UpperTorso = New("BoxHandleAdornment", lib[self].chamsholder)
    local LowerTorso = New("BoxHandleAdornment", lib[self].chamsholder)


    local LeftUpperArm = New("BoxHandleAdornment", lib[self].chamsholder)
    local LeftLowerArm = New("BoxHandleAdornment", lib[self].chamsholder)
    local LeftHand = New("BoxHandleAdornment", lib[self].chamsholder)


    local RightUpperArm = New("BoxHandleAdornment", lib[self].chamsholder)
    local RightLowerArm = New("BoxHandleAdornment", lib[self].chamsholder)
    local RightHand = New("BoxHandleAdornment", lib[self].chamsholder)


    local LeftUpperLeg = New("BoxHandleAdornment", lib[self].chamsholder)
    local LeftLowerLeg = New("BoxHandleAdornment", lib[self].chamsholder)
    local LeftFoot = New("BoxHandleAdornment", lib[self].chamsholder)


    local RightUpperLeg = New("BoxHandleAdornment", lib[self].chamsholder)
    local RightLowerLeg = New("BoxHandleAdornment", lib[self].chamsholder)
    local RightFoot = New("BoxHandleAdornment", lib[self].chamsholder)


    Head.Name = "Head"
    UpperTorso.Name = "UpperTorso"
    LowerTorso.Name = "LowerTorso"


    LeftUpperArm.Name = "LeftUpperArm"
    LeftLowerArm.Name = "LeftLowerArm"
    LeftHand.Name = "LeftHand"


    RightUpperArm.Name = "RightUpperArm"
    RightLowerArm.Name = "RightLowerArm"
    RightHand.Name = "RightHand"


    LeftUpperLeg.Name = "LeftUpperLeg"
    LeftLowerLeg.Name = "LeftLowerLeg"
    LeftFoot.Name = "LeftFoot"


    RightUpperLeg.Name = "RightUpperLeg"
    RightLowerLeg.Name = "RightLowerLeg"
    RightFoot.Name = "RightFoot"
   end


    return lib[self], lib[self].chamsholder, lib[self].highlight
end



function lib:DrawGradient(properties)
    local obj = New("UIGradient")
    obj.Name = "UIGradient"
    obj.Parent = properties.Parent

    obj.Rotation = properties.Rotation
    obj.Color = properties.Color
end



function lib:DrawUIStroke(properties)
    local obj = New("UIStroke")
    obj.Parent = properties.Parent
end



function lib:DrawText(properties)
    local obj = New("TextLabel")
    local stroke = New("UIStroke")
        
    obj.Name = properties.Name
    obj.TextSize = properties.TextSize

    obj.Parent = properties.Parent
    obj.BackgroundTransparency = 1
        
    obj.BorderColor3 = FromRGB(0, 0, 0)
    obj.BorderSizePixel = 0

    obj.TextStrokeTransparency = 1
	obj.FontFace = lib.SmallestPixel7

    obj.AnchorPoint = properties.AnchorPoint
    stroke.Parent = obj
end



function lib:DrawFrame(properties)
    local obj = New("Frame")
    obj.Name = properties.Name
    obj.Parent = properties.Parent

    obj.BackgroundTransparency = properties.BackgroundTransparency
	obj.BackgroundColor3 = properties.Color
	obj.BorderColor3 = FromRGB(0, 0, 0)

	obj.BorderSizePixel = properties.BorderSizePixel
	obj.Position = properties.Position
	obj.Size = properties.Size

    obj.ZIndex = properties.Zindex
    obj.Rotation = properties.Rotation
    obj.AnchorPoint = properties.AnchorPoint
end



function lib:DrawImage(properties)
    local obj = New("ImageLabel")
    obj.Name = properties.Name
    obj.Parent = properties.Parent
    obj.Image = properties.Image

    obj.BackgroundTransparency = 1
	obj.BorderColor3 = FromRGB(0, 0, 0)

	obj.BorderSizePixel = properties.BorderSizePixel
	obj.Position = properties.Position
	obj.Size = properties.Size

    obj.ZIndex = properties.Zindex
    obj.Rotation = properties.Rotation
    obj.AnchorPoint = properties.AnchorPoint
end



function lib:disconnect(self)
    lib[self].holder:Destroy()

    for _, cham in pairs(lib[self].chamsholder:GetChildren()) do
        cham:Destroy()
    end

    lib[self].chamsholder:Destroy()
    lib[self].connection:Disconnect()
    task.wait()
    lib[self] = nil
end



local returnflag = function(library, flag)
    return library.flags[flag]
end



function returnflagcolor(color)
    return library.flags[color].Color
end



function returnflagtransparency(color)
    return library.flags[color].Transparency
end



function returngradientcolor(color, colortwo)
    return NewGradient{GradientSequence(0, library.flags[color].Color), GradientSequence(1, library.flags[colortwo].Color)}
end



function returnGradientTransparency(color, colortwo)
    return GradientNumberSequence{GradientNumberKeypoint(0, library.flags[color].Transparency), GradientNumberKeypoint(1, library.flags[colortwo].Transparency)}
end



function ESPObject(self, lib2)
   if self == Client then 
      return 
   end
   local esp, chams, highlight = lib:DrawGui(self)
   local Colors = esp["Colors"]
   local Borders = esp["Borders"]



   do -- main text
    lib:DrawFrame({
        Name = "PName",
        Parent = esp.holder,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(.5, 0, .12, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 1,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "UpperFlags",
        Parent = esp.holder,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Position = dim2(.995, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 1,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "Flags",
        Parent = esp.holder,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Position = dim2(.5, 0, .99, 0),
        Size = dim2(0, 0, .5, 0),
        Zindex = 1,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })


    local FlagPadding = New("UIPadding", esp.holder["Flags"])
    local NamePadding = New("UIPadding", esp.holder["PName"])
    

    FlagPadding.PaddingTop = dim(-0.01, 0)
    FlagPadding.PaddingBottom = dim(0.4, 0)
    NamePadding.PaddingTop = dim(0.5, 0)



    lib:DrawText({
        Name = "PName", 
		Parent = esp.holder["PName"],
        TextSize = 9,
        AnchorPoint = Vector2(0, 0)
    })



    lib:DrawText({
        Name = "Distance", 
		Parent = esp.holder["Flags"],
        TextSize = 9,
        AnchorPoint = Vector2(0, .05)
    })



    lib:DrawText({
        Name = "Weapon", 
		Parent = esp.holder["Flags"],
        TextSize = 9,
        AnchorPoint = Vector2(0, .05)
    })



   end



   do -- upper flags
    lib:DrawText({
        Name = "Priority", 
		Parent = esp.holder["UpperFlags"],
        TextSize = 9,
        AnchorPoint = Vector2(0, .05)
    })



    lib:DrawText({
        Name = "Velocity", 
		Parent = esp.holder["UpperFlags"],
        TextSize = 9,
        AnchorPoint = Vector2(0, .05)
    })



    lib:DrawText({
        Name = "WalkSpeed", 
		Parent = esp.holder["Flags"],
        TextSize = 9,
        AnchorPoint = Vector2(0, .05)
    })


   end



   do -- box
    lib:DrawFrame({
        Name = "Box",
        Parent = esp.holder,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 1,
        BorderSizePixel = 1,
        Position = dim2(0.17, 0, 0.12, 0),
        Size = dim2(0.65, 0, 0.88, 0),
        Zindex = 1,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    local Colors = esp["Colors"]
    local Borders = esp["Borders"]
    Colors.Parent = esp.holder["Box"]
    Borders.Parent = esp.holder["Box"]



    lib:DrawFrame({
        Name = "TopC",
        Parent = Colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 1,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "LeftC",
        Parent = Colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 1,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "RightC",
        Parent = Colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(1, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 1,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "BottomC",
        Parent = Colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 1,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })




    lib:DrawFrame({
        Name = "TopB",
        Parent = Borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "LeftB",
        Parent = Borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "RightB",
        Parent = Borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(1, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "BottomB",
        Parent = Borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(0, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    Colors.Parent = esp.holder["Box"]
    Borders.Parent = esp.holder["Box"]
   end



   do -- HealthBar
    lib:DrawFrame({
        Name = "HealthBar",
        Parent = esp.holder,
        Color = FromRGB(0, 0, 0),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(0.075, 0, 0.059, 0),
        Size = dim2(0.0049, 0, 0.87, 0),
        Zindex = 0,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "Bar",
        Parent = esp.holder["HealthBar"],
        Color = FromRGB(0, 240, 0),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(1, 0, 1, 0),
        Zindex = 0,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })
    
   end




   local UI = {
    GUI = esp.holder;
    PName = esp.holder["PName"]["PName"];
    Distance = esp.holder["Flags"]["Distance"];
    Weapon = esp.holder["Flags"]["Weapon"];
    WalkSpeed = esp.holder["Flags"]["WalkSpeed"];



    Priority = esp.holder["UpperFlags"]["Priority"];
    Velocity = esp.holder["UpperFlags"]["Velocity"];



    UpperFlags = esp.holder["UpperFlags"];
    Flags = esp.holder["Flags"];



    Box = esp.holder["Box"];
    TopB = Borders["TopB"];
    LeftB = Borders["LeftB"];
    RightB = Borders["RightB"];
    BottomB = Borders["BottomB"];

    TopC = Colors["TopC"];
    LeftC = Colors["LeftC"];
    RightC = Colors["RightC"];
    BottomC = Colors["BottomC"];



    HealthBar = esp.holder["HealthBar"];
    Bar = esp.holder["HealthBar"]["Bar"];



    Chams = chams;
    Head = chams["Head"];
    UpperTorso = chams["UpperTorso"];
    LowerTorso = chams["LowerTorso"];

    LeftUpperArm = chams["LeftUpperArm"];
    LeftLowerArm = chams["LeftLowerArm"];
    LeftHand = chams["LeftHand"];

    RightUpperArm = chams["RightUpperArm"];
    RightLowerArm = chams["RightLowerArm"];
    RightHand = chams["RightHand"];

    LeftUpperLeg = chams["LeftUpperLeg"];
    LeftLowerLeg = chams["LeftLowerLeg"];
    LeftFoot = chams["LeftFoot"];

    RightUpperLeg = chams["RightUpperLeg"];
    RightLowerLeg = chams["RightLowerLeg"];
    RightFoot = chams["RightFoot"];

   }



    esp.connection = RunService.PreRender:Connect(function(deltatime)
       services:framelimit(deltatime)
       local Character = self.Character

    if Character ~= nil and services:findfirstchild(Character, "HumanoidRootPart") and services:findfirstchild(Character, "Humanoid") then
        local RootPart, Humanoid = Character["HumanoidRootPart"], Character["Humanoid"]


       if RootPart ~= nil and Humanoid ~= nil and Humanoid.Health ~= 0 then
        local pos, os = services:wtvp(RootPart.CFrame.p)
        local RootMag, PosMag, DistanceMag = vector.magnitude(RootPart.Position), vector.magnitude(pos), round(UI.GUI.CurrentDistance) .. " Studs"
        local distancemath = floor(( 5 / sign(round(RootMag)) * sign(round(UI.GUI.CurrentDistance)) * .5 ))
        --floor(( 5 / sign(round(RootMag)) * sign(round(UI.GUI.CurrentDistance)) * .5 ))



       do -- GUI
        UI.GUI.Enabled = returnflag(lib2, "Enabled") and os
        UI.GUI.Adornee = RootPart
	    UI.GUI.StudsOffset = Vector3(0, RootPart.Size.Y^2 / -RootPart.Size.Y^2 + 1, 0)
        UI.GUI.Size = dim2(6, 0 * distancemath + 6, 7, 0 * distancemath + 7, 0)
        UI.GUI.MaxDistance = returnflag(lib2, "MaxDistance")
       end



       do -- Box
        local isfullbox, boxcolor = returnflag(lib2, "Boxes") and returnflag(lib2, "Box_Type") == "Full" and os, returnflagcolor("Box_Color")

        UI.TopB.Size = dim2(1, 0 * distancemath / -.001, 0, 1)
        UI.TopB.Visible = isfullbox

        UI.TopC.Size = UI.TopB.Size
        UI.TopC.Visible = isfullbox
        UI.TopC.BackgroundColor3 = boxcolor



        UI.BottomB.Size = dim2(1, 0 * distancemath / -.001, 0, -1)
        UI.BottomB.Visible = isfullbox

        UI.BottomC.Size = UI.BottomB.Size
        UI.BottomC.Visible = isfullbox
        UI.BottomC.BackgroundColor3 = boxcolor



        UI.LeftB.Size = dim2(0, 1 * distancemath + -.001, 1, 0)
        UI.LeftB.Visible = isfullbox

        UI.LeftC.Size = UI.LeftB.Size
        UI.LeftC.Visible = isfullbox
        UI.LeftC.BackgroundColor3 = boxcolor



        UI.RightB.Size = dim2(0, 1 * distancemath + -.001, 1, 0)
        UI.RightB.Visible = isfullbox

        UI.RightC.Size = UI.RightB.Size
        UI.RightC.Visible = isfullbox
        UI.RightC.BackgroundColor3 = boxcolor
       end



       do -- texts   
        if library.target == self and library.flags["TargetColor"] then
           UI.PName.TextColor3 = returnflagcolor("Target_Color")
           UI.Distance.TextColor3 = returnflagcolor("Target_Color")
           UI.Weapon.TextColor3 = returnflagcolor("Target_Color")


           UI.TopC.BackgroundColor3 = returnflagcolor("Target_Color")
           UI.BottomC.BackgroundColor3 = returnflagcolor("Target_Color")
           UI.LeftC.BackgroundColor3 = returnflagcolor("Target_Color")
           UI.RightC.BackgroundColor3 = returnflagcolor("Target_Color")
            
        else

           UI.PName.TextColor3 = returnflagcolor("Name_Color")
           UI.Distance.TextColor3 = returnflagcolor("Distance_Color")
           UI.Weapon.TextColor3 = returnflagcolor("Weapon_Color")


           UI.TopC.BackgroundColor3 = returnflagcolor("Box_Color")
           UI.BottomC.BackgroundColor3 = returnflagcolor("Box_Color")
           UI.LeftC.BackgroundColor3 = returnflagcolor("Box_Color")
           UI.RightC.BackgroundColor3 = returnflagcolor("Box_Color")
        end



        UI.PName.Text = self.Name
        UI.PName.Size = dim2(0.751, 0 * distancemath + .1, 0, .8 / distancemath / 8 - 20)
        UI.PName.Position = dim2(0.5, 0, 0.1, 0)
        UI.PName.Visible = returnflag(lib2, "Names") and os
        UI.PName.TextSize = returnflag(lib2, "TextSize")
        UI.PName.FontFace = lib.SmallestPixel7



        UI.Distance.Text = DistanceMag
        UI.Distance.Visible = returnflag(lib2, "Distance") and os
        UI.Distance.Size = dim2(0.75, 0 * distancemath - .1, 0, 1 / distancemath / 5 + 20)
        UI.Distance.Position = dim2(1, 0, 1, 0)
        UI.Distance.TextSize = returnflag(lib2, "TextSize")
        UI.Distance.FontFace = lib.SmallestPixel7



        UI.Weapon.Text = getweapon(Character)
        UI.Weapon.Visible = returnflag(lib2, "Weapon") and os
        UI.Weapon.Size = dim2(0.75, 0 * distancemath - .1, 0, 1 / distancemath / 9 + 48)
        UI.Weapon.Position = dim2(1, 0, 1, 0)
        UI.Weapon.TextSize = returnflag(lib2, "TextSize")
        UI.Weapon.FontFace = lib.SmallestPixel7



        UI.WalkSpeed.Text = "WalkSpeed: " .. Humanoid.WalkSpeed
        UI.WalkSpeed.Visible = returnflag(lib2, "WalkSpeedText") and os
        UI.WalkSpeed.Size = dim2(0.75, 0 * distancemath - .1, 0, 1 / distancemath / 30 + 75)
        UI.WalkSpeed.Position = dim2(1, 0, 1, 0)
        UI.WalkSpeed.TextSize = returnflag(lib2, "TextSize")
        UI.WalkSpeed.FontFace = lib.SmallestPixel7
        UI.WalkSpeed.TextColor3 = returnflag(lib2, "WalkSpeed_Color").Color
        


        UI.Flags.Size = dim2(.371, 0, .8, 0)
        UI.Flags.Position = dim2(0, 0, .52, 0)



        UI.UpperFlags.Size = dim2(.34, 0, .48, 0)
        UI.UpperFlags.Position = dim2(.48, 0, -.35, 0)



        UI.Priority.Text = library.get_priority(self)
        UI.Priority.Visible = returnflag(lib2, "Priority") and os
        UI.Priority.Size = dim2(0, 1 / distancemath * 20 + 35, 0, 1 / distancemath / 1 + 4)
        UI.Priority.Position = dim2(1, 0, 1, 0)
        UI.Priority.TextColor3 = returnflagcolor("Priority_Color")
        UI.Priority.TextSize = returnflag(lib2, "TextSize")
        UI.Priority.FontFace = lib.SmallestPixel7



        UI.Velocity.Text = "        Vehicle: " .. tostring(Humanoid.Sit)
        UI.Velocity.Visible = returnflag(lib2, "Velocity") and os
        UI.Velocity.Size = dim2(0, 1 / distancemath * 15 + 30, 0, 1 / distancemath / 20 + 25)
        UI.Velocity.Position = dim2(1, 0, 1, 0)
        UI.Velocity.TextColor3 = returnflagcolor("Velocity_Color")
        UI.Velocity.TextSize = returnflag(lib2, "TextSize")
        UI.Velocity.FontFace = lib.SmallestPixel7


       end



       do -- healthbar
        UI.HealthBar.Visible = returnflag(lib2, "Healthbar") and os
        UI.HealthBar.Size = dim2(0, 1 + math.tan(.001) / round(distancemath - 3) * -distancemath + .001, .88, 0)
        UI.HealthBar.Position = dim2(.16, 0 * -distancemath + .13, .12, 0)
        --dim2(.14 / distancemath / (2 + 4), 0, .12, 0)
        --dim2(0, 1 / distancemath / (3 - 2), .12, 0)



        UI.HealthBar.Rotation = 180
        UI.Bar.BackgroundColor3 = returnflagcolor("Health_High")
        UI.Bar.Size = dim2(1, 0, Humanoid.Health / Humanoid.MaxHealth, 0)



        if tonumber(Humanoid.Health / Humanoid.MaxHealth) < .25 then
           UI.Bar.BackgroundColor3 = returnflagcolor("Health_Low")
        elseif tonumber(Humanoid.Health / Humanoid.MaxHealth) < .55 then
           UI.Bar.BackgroundColor3 = returnflagcolor("Health_Medium")
        elseif tonumber(Humanoid.Health / Humanoid.MaxHealth) < 1 then
           UI.Bar.Size = dim2(1, 0, Humanoid.Health / Humanoid.MaxHealth, 0)
          end
        end

          end
       end



       do -- highlight
        highlight.Enabled = returnflag(lib2, "HighlightsToggle") and os
        highlight.Adornee = Character
        highlight.OutlineColor = returnflagcolor("Outline_Color")
        highlight.FillColor = returnflagcolor("Fill_Color")
        highlight.OutlineTransparency = returnflagtransparency("Outline_Color")
        highlight.FillTransparency = returnflagtransparency("Fill_Color")
       end



  end)
end




function OnAdded(Player)
    if Player ~= Client then
        ESPObject(Player, library)
        library:notification({time = 2, text = "[AryanWare.xyz] " .. Player.Name .. " Joined The Server", flashing = false;})
    end
end



function OnRemoved(Player)
    if Player ~= Client then
        lib:disconnect(Player)
        library:notification({time = 2, text = "[AryanWare.xyz] " .. Player.Name .. " Left The Server", flashing = false;})
    end
end



function RenderESP()
 for _, Player in Players:GetPlayers() do
    ESPObject(Player, library)
   end
end



local esp;
local function update_elements() if esp and esp.refresh_elements then esp.refresh_elements() end end 



do -- Visuals
 local column = cheat.tabs.visuals:column()
 local section, weapon_skin_section = column:multi_section({names = {"Enemy", "Weapon"}})


 local misccolumn = cheat.tabs.visuals:column()
 local world_section, camera_section, weapon_visual_section = misccolumn:multi_section({names = {"World", "Camera", "Weapon"}})



 local EnabledToggle = section:toggle({
	name = "Enabled", 
	flag = "Enabled", 
	callback = update_elements
 })



 local NameToggle = section:toggle({
	name = "Name", 
	flag = "Names", 
	callback = update_elements
 }):colorpicker({flag = "Name_Color", callback = update_elements})



 local settings = section:toggle({
	name = "Box", 
	flag = "Boxes", 
	callback = update_elements
 })
 settings:colorpicker({name = "Box Color", flag = "Box_Color", callback = update_elements})
 section:dropdown({name = "Box Type", flag = "Box_Type", items = {"Corner", "Full"}, default = "Corner", callback = update_elements})



 local HealthBarToggle = section:toggle({
	name = "Healthbar", 
	flag = "Healthbar",
	callback = update_elements
 })
 HealthBarToggle:colorpicker({name = "High HP Color", flag = "Health_High", callback = update_elements})
 HealthBarToggle:colorpicker({name = "Medium HP Color", flag = "Health_Medium"})
 HealthBarToggle:colorpicker({name = "Low HP Color", flag = "Health_Low"})



 local HealthCountToggle = section:toggle({
	name = "Health Count", 
	flag = "Flag",
    callback = update_elements
 }):colorpicker({name = "Color", flag = "FlagColor"})



 local DistanceToggle = section:toggle({
	name = "Distance", 
	flag = "Distance", 
	callback = update_elements
 }):colorpicker({name = "Distance Color", flag = "Distance_Color", callback = update_elements})



 local WeaponToggle = section:toggle({
	name = "Weapon", 
	flag = "Weapon",
	callback = update_elements
 }):colorpicker({name = "Weapon Color", flag = "Weapon_Color", callback = update_elements})



 local PriorityToggle = section:toggle({
	name = "Priority", 
	flag = "Priority",
	callback = update_elements
 }):colorpicker({name = "Priority Color", flag = "Priority_Color", callback = update_elements})



 local VelocityToggle = section:toggle({
	name = "Vehicle Check", 
	flag = "Velocity",
	callback = update_elements
 }):colorpicker({name = "Velocity Color", flag = "Velocity_Color", callback = update_elements})



 local WalkSpeedToggle = section:toggle({
	name = "Walk Speed", 
	flag = "WalkSpeedText",
	callback = update_elements
 }):colorpicker({name = "WalkSpeed Color", flag = "WalkSpeed_Color", callback = update_elements})



 local ChamsToggle = section:toggle({
	name = "Chams", 
	flag = "ChamsToggle"
 }):colorpicker({name = "Color", flag = "ChamColor"})



 local HighlightsToggle = section:toggle({
	name = "Highlights", 
	flag = "HighlightsToggle"
 }):colorpicker({name = "Outline Color", flag = "Outline_Color"})
 :colorpicker({name = "Fill Color", flag = "Fill_Color"})



 section:slider({
    name = "Text Size", 
    min = 5, 
    max = 30, 
    default = 12, 
    interval = 1, 
    flag = "TextSize"
 })



 section:slider({
    name = "Max Distance", 
    min = 10, 
    max = 10000, 
    default = 1000, 
    interval = 1, 
    flag = "MaxDistance"
 })
 section:dropdown({name = "Cham Shading", flag = "Shading_Type", items = {"Default", "Shaded", "XRay", "XRayShaded", "AlwaysOnTop"}, default = "XRayShaded"})



 local SkinChangerToggle = weapon_skin_section:toggle({
	name = "SkinChanger",
	flag = "SkinChanger"
 })



 weapon_skin_section:dropdown({
    name = "Skins", 
    flag = "WeaponSkin", 
    items = skins, 
    default = ""
 })



 local RemoveViewmodelClothesToggle = weapon_visual_section:toggle({
	name = "Remove Viewmodel Clothes", 
	flag = "RemoveViewmodelClothes"
 })


 local WeaponChamsToggle = weapon_visual_section:toggle({
	name = "WeaponChams", 
	flag = "WeaponChams",
	callback = function(args)
     if args then
    end
  end
 }):colorpicker({
    name = "Viewmodel Color", 
    flag = "WeaponChamColor", 
 })



 local WeaponMaterialDropdown = weapon_visual_section:dropdown({
	name = "Viewmodel Materials", 
	flag = "Viewmodel_Cham_Material", 
	items = {"Neon", "ForceField", "Glass", "Plastic"},
	default = "ForceField"
 })



 local CustomTimeToggle = world_section:toggle({
	name = "Time", 
	flag = "CustomTime",
 })



 local CustomAmbientToggle = world_section:toggle({
	name = "Ambient", 
	flag = "CustomAmbient",
	callback = function(args)
     if args then
       --customambient()
     end  
  end
 }):colorpicker({
    name = "Ambient Color Color", 
    flag = "AmbientColor",
 })



 local CustomCloudsToggle = world_section:toggle({
	name = "Custom Clouds", 
	flag = "CustomClouds",
 }):colorpicker({
    name = "CloudColor", 
    flag = "CloudColor"
 })



 local CustomAtmosphereToggle = world_section:toggle({
	name = "Custom Atmosphere", 
	flag = "CustomAtmosphere",
 }):colorpicker({
    name = "Atmosphere Color", 
    flag = "AtmosphereColor"
 })
 :colorpicker({
    name = "Decay Color", 
    flag = "DecayColor"
 })



 world_section:slider({
    name = "Time", 
    min = 0, 
    max = 24, 
    default = 12, 
    interval = 1, 
    flag = "TimeOfDay"
 })



 world_section:slider({
    name = "Glare", 
    min = 0, 
    max = 10, 
    default = 0, 
    interval = .1, 
    flag = "GlareAmount"
 })



 world_section:slider({
    name = "Haze", 
    min = 0, 
    max = 10, 
    default = 0, 
    interval = .1, 
    flag = "HazeAmount"
 })



 world_section:slider({
    name = "Cloud Cover", 
    min = 0, 
    max = 10, 
    default = 0, 
    interval = .1, 
    flag = "CloudCover"
 })



 world_section:slider({
    name = "Cloud Density", 
    min = 0, 
    max = 10, 
    default = 0, 
    interval = .1, 
    flag = "CloudDensity"
 })




 local FOVToggle = camera_section:toggle({
	name = "Custom FOV", 
	flag = "CustomFOV",
 })



 local ZoomToggle = camera_section:toggle({
	name = "Zoom", 
	flag = "Zoom",
 }):keybind({
    name = "Zoom In/Out",
    key = Enum.KeyCode.B,
    mode = "toggle",
    flag = "ZoomBind"
 })



 camera_section:slider({
    name = "FOV Amount", 
    min = 80, 
    max = 120, 
    default = 1, 
    interval = 1, 
    flag = "FOVAmount"
 })



 camera_section:slider({
    name = "Zoom Amount", 
    min = 1, 
    max = 60, 
    default = 1, 
    interval = 1, 
    flag = "ZoomAmount"
 })

end



do -- Combat
  local RenderFOV = function(Distance)
  local maxdist
  local FOV = New("ScreenGui")
  local FOV_2 = New("Frame")
  local FOV_Outline = New("Frame")



  local UICorner = New("UICorner")
  local UICorner2 = New("UICorner")
  local UIStroke = New("UIStroke")
  local UIStroke2 = New("UIStroke")
  local UIGradient = New("UIGradient")



  do
   FOV.Name = "FOV"
   FOV.Parent = hideui



   FOV_2.Name = "FOV"
   FOV_2.Parent = FOV
   FOV_2.BackgroundTransparency = 1
   FOV_2.SizeConstraint = Enum.SizeConstraint.RelativeYY



   FOV_Outline.Name = "FOV"
   FOV_Outline.Parent = FOV
   FOV_Outline.BackgroundTransparency = 1
   FOV_Outline.ZIndex = -5



   UICorner.CornerRadius = dim(100, 0)
   UICorner.Parent = FOV_2
   UIStroke.Parent = FOV_2
   UIGradient.Parent = UIStroke



   UICorner2.CornerRadius = dim(100, 0)
   UICorner2.Parent = FOV_Outline
   UIStroke2.Parent = FOV_Outline


  end



  cheat.connections.silent = RunService.PreRender:Connect(function(deltatime)
  if library.flags["SilentAimToggle"] then
    services:framelimit(deltatime)
    local distance



   do
    FOV_2.Size = dim2(library.flags["FOVRadius"] / 500, 0, library.flags["FOVRadius"] / 500, 0)
    FOV_2.Visible = library.flags["SilentAimToggle"] and library.flags["FOVToggle"]
    FOV_2.Position = dim2(.5, 0, .5, 0)
    FOV_2.AnchorPoint = Vector2(.5, .52)



    FOV_Outline.Size = dim2(library.flags["FOVRadius"] / 500, 0, library.flags["FOVRadius"] / 500, 0)
    FOV_Outline.Visible = library.flags["SilentAimToggle"] and library.flags["FOVToggle"] and library.flags["FOVOutline"]
    FOV_Outline.Position = dim2(.5, 0, .5, 0)
    FOV_Outline.AnchorPoint = Vector2(.5, .52)
    FOV_Outline.ZIndex = -5



    UIStroke.Color = FromRGB(255, 255, 255)
    UIStroke.Thickness = library.flags["Thickness"]



    UIStroke2.Color = returnflagcolor("Outline_Color")
    UIStroke2.Thickness = library.flags["Thickness"] + 1.5
    UIStroke2.ZIndex = -5
    UIStroke2.LineJoinMode = Enum.LineJoinMode.Round



    UIGradient.Color = NewGradient{GradientSequence(0, library.flags["FOV_Color"].Color), GradientSequence(1, library.flags["FOV_Color2"].Color)}
    UIGradient.Rotation += library.flags["RotationSpeed"]
    UIGradient.Offset = Vector2(library.flags["GradientOffset"], 0)
   end



    for _, P in Players:GetPlayers() do
     if P == Client then 
        continue 
    end

    if P.Character and services:findfirstchild(P.Character, library.flags["Silent_Target"]) and services:findfirstchild(P.Character, "Humanoid") and library.get_priority(P) ~= "Friendly" then
      local char = P.Character
      local targetP = char[library.flags["Silent_Target"]]
      local pos2, os = services:wtvp(targetP.CFrame.p)
      local dist = (Vector2(mousePos.X, mousePos.Y) - Vector2(pos2.X, pos2.Y)).Magnitude

    
    if dist <= (distance or library.flags["FOVRadius"]) and os then
       Target = targetP
       distance = dist
       library.target = Players:GetPlayerFromCharacter(P.Character)
       

     end
    end
   end
   

   else

    FOV:Destroy()
    task.wait()
    cheat.connections.silent:Disconnect()

  end
 end)
end



 local silentcolumn = cheat.tabs.aiming:column()
 local silentsection, gunmods_section, weaponmods_section = silentcolumn:multi_section({names = {"Silent", "Mods", "Visuals"}})



 silentsection:toggle({
	name = "Silent Aim",
	flag = "SilentAimToggle",
    tooltip = "silent aim xd",
    risky = true,
	callback = function(args)
     if args then
       RenderFOV()
    end
  end
 })



 silentsection:toggle({
	name = "FOV", 
	flag = "FOVToggle",
 }):colorpicker({name = "FOV Color", flag = "FOV_Color"})
 :colorpicker({name = "FOV Color 2", flag = "FOV_Color2"})



 silentsection:toggle({
	name = "FOV Outline", 
	flag = "FOVOutline",
 }):colorpicker({name = "Outline Color", flag = "Outline_Color"})



 silentsection:toggle({
	name = "Target Info",
	flag = "Indicator",
 })



 silentsection:toggle({
	name = "Target Color",
	flag = "TargetColor",
 }):colorpicker({name = "Target Color", flag = "Target_Color"})



 silentsection:slider({
    name = "Radius", 
    min = 10, 
    max = 500, 
    default = 90, 
    interval = 1, 
    flag = "FOVRadius"
 })



 silentsection:slider({
    name = "Rotation Speed", 
    min = .1, 
    max = 10, 
    default = .1, 
    interval = .1, 
    flag = "RotationSpeed"
 })



 silentsection:slider({
    name = "Thickness", 
    min = 1, 
    max = 10, 
    default = 1, 
    interval = 1, 
    flag = "Thickness"
 })



 silentsection:slider({
    name = "Gradient Offset", 
    min = -.5, 
    max = 1, 
    default = .5, 
    interval = .1, 
    flag = "GradientOffset"
 })



 silentsection:dropdown({
	name = "Body Target", 
	flag = "Silent_Target", 
	items = {"Head", "HumanoidRootPart", "Random"}, 
	default = "Head",
 })



 gunmods_section:toggle({
	name = "No Recoil", 
	flag = "NoRecoil",
	callback = function(argument)
  end
 })



 gunmods_section:toggle({
	name = "No Spread", 
	flag = "NoSpread"
 })



 gunmods_section:toggle({
	name = "All FireModes[Switch Firemode To Work]", 
	flag = "AllFireModes",
 })



 weaponmods_section:toggle({
	name = "Hit Sounds", 
	flag = "HitSoundsToggle",
 })



 weaponmods_section:toggle({
	name = "Hit Notifications", 
	flag = "HitNotifications",
 })



 weaponmods_section:toggle({
	name = "Bullet Tracers", 
	flag = "BulletTracers",
 }):colorpicker({name = "Trail Color", flag = "TracerColor"})



 weaponmods_section:dropdown({
	name = "Hit Sounds", 
	flag = "HitSounds", 
	items = {"xp", "neverlose", "rust", "niggers", "jewellxx", "tf2", "skeet", "sonic"}, 
	default = "xp",
    callback = function(sfx)
    if sfx == "xp" then 
		TestHitSound("xp.mp3") 
	elseif sfx == "neverlose" then 
		TestHitSound("neverlose.mp3") 
	elseif sfx == "rust" then 
		TestHitSound("rust.mp3") 
	elseif sfx == "niggers" then 
		TestHitSound("niggers.mp3") 
    elseif sfx == "jewellxx" then
        TestHitSound("jewellxx.mp3") 
    elseif sfx == "tf2" then
        TestHitSound("tf2.mp3") 
    elseif sfx == "skeet" then
        TestHitSound("skeet.mp3")
    elseif sfx == "sonic" then
        TestHitSound("sonic.mp3") 
      end
	end
 })



 weaponmods_section:dropdown({
	name = "Trails", 
	flag = "TrailID", 
	items = {"Electricity", "Pulse", "Lightning", "LightPulse", "Reflex", "Shards"},
	default = "Electricity",
 })



 weaponmods_section:slider({name = "Texture Speed", min = .1, max = 1, default = 1, interval = .1, suffix = "m", flag = "TextureSpeed", tooltip = "makes the texture faster/slower"})
 weaponmods_section:slider({name = "Texture Length", min = .1, max = 1, default = 1, interval = .1, suffix = "m", flag = "TextureLength", tooltip = "makes the texture longer/shorter"})
 weaponmods_section:slider({name = "Trail Lifetime", min = 1, max = 10, default = 1, interval = 1, suffix = "lft", flag = "TracerLifetime", tooltip = "destroy time"})
 weaponmods_section:slider({name = "Head Hit Sound Volume", min = .1, max = 10, default = 1, interval = .1, suffix = "vlm", flag = "HitSoundVolume"})
end



do -- Movement
 local movementcolumn = cheat.tabs.movement:column()
 local movement_section = movementcolumn:multi_section({names = {"Player Movement"}})



 local speedhack = function()
    cheat.connections.speedhack = RunService.PreRender:Connect(function(deltatime)
     if Client.Character == nil then
        return 
     end

     services:framelimit(deltatime, 30)
        if library.flags["SpeedHack"] then
          if library.flags["SpeedBind"].active and Client.Character:FindFirstChild("Humanoid") then
            local hum = services:CloneReference(Client.Character["Humanoid"])
            hum.WalkSpeed = library.flags["WalkSpeed"]
        end
    else
        cheat.connections.speedhack:Disconnect()
     end
  end)
 end



 local jumphack = function()
    cheat.connections.jumpheight = RunService.PreRender:Connect(function(deltatime)
        services:framelimit(deltatime, 30)
        if Client.Character == nil then 
           return 
        end


        if library.flags["JumpHack"] and services:findfirstchild(Client.Character, "Humanoid") then
            local hum = services:CloneReference(Client.Character["Humanoid"])
            hum.JumpPower = library.flags["JumpHeight"]
            hum.JumpHeight = library.flags["JumpHeight"]
        else
            cheat.connections.jumpheight:Disconnect()
        end
    end)
 end



 local noclip = function()
    cheat.connections.noclip = RunService.PreRender:Connect(function(deltatime)
     services:framelimit(deltatime, 30)
      if Client.Character == nil then return end
        if library.flags["NoClip"] then
            if library.flags["NoClipBind"].active then
               noclipvalue(false)
            else
                noclipvalue(true)
            end
        else
            cheat.connections.noclip:Disconnect()
            --noclipvalue(true)
        end
    end)
 end



 local rakhook = function(packet)
	if packet.PacketId == 0x1B then
	   local buf = packet.AsBuffer
	   buffer.writeu32(buf, 1, 0xFFFFFFFF)
	   packet:SetData(buf)
	end

    if packet.PacketId == 0x86 then
	   local buf = packet.AsBuffer
	   buffer.writeu32(buf, 1, 0xFFFFFFFF)
	   packet:SetData(buf)
	end
 end



 local desync = function()
 if library.flags["Desync"] then
    raknet.add_send_hook(rakhook)
    library:notification({time = 2, text = "[GeekClient.gg] Desync Started"})
 else
	raknet.remove_send_hook(rakhook)
    library:notification({time = 2, text = "[GeekClient.gg] Desync Canceled"})
  end
 end



 movement_section:toggle({
	name = "Speed Hack", 
	flag = "SpeedHack",
    callback = function(args)
      if args then
        --speedhack()
      end
    end
 }):keybind({
    name = "Speed Hack",
    key = Enum.KeyCode.G,
    mode = "hold",
    flag = "SpeedBind",
 })



 movement_section:toggle({
	name = "Jump Hack", 
	flag = "JumpHack",
	callback = function(args)
      if args then
        --jumphack()
    end
  end
 })



 movement_section:toggle({
	name = "No Clip", 
	flag = "NoClip",
    callback = function(args)
      if args then
        --noclip()
      end
    end
 }):keybind({
    name = "No Clip",
    key = Enum.KeyCode.J,
    mode = "toggle",
    flag = "NoClipBind",
 })



 movement_section:toggle({
	name = "Desync", 
	flag = "Desync",
    callback = function(args)
      if args then
        desync()
      end
    end
 })



 movement_section:toggle({
	name = "Anti-Aim", 
	flag = "Anti-Aim"
 })



 movement_section:slider({name = "Walk Speed", min = 10, max = 100, default = 20, interval = 1, suffix = "wp", flag = "WalkSpeed"})
 movement_section:slider({name = "Jump Height", min = 4.5, max = 100, default = 20, interval = 1, suffix = "jh", flag = "JumpHeight"})
 movement_section:slider({name = "Pitch", min = -100, max = 100, default = 0, interval = 1, suffix = "p", flag = "Pitch"})
end



do -- esp preview stuff
 esp = window.esp_section:esp_preview({})
 cheat.tabs.visuals.open_tab()
 library:config_list_update()

 for index, value in themes.preset do
	pcall(function()
		library:update_theme(index, value)
	end)
 end


end



task.wait()
library.old_config = library:get_config()



Players.PlayerAdded:Connect(OnAdded)
Players.PlayerRemoving:Connect(OnRemoved)
RenderESP()



do -- Hooks



local raycall2
raycall2 = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
    local args = {...}
    local NamecallMethod = getnamecallmethod()


    if not checkcaller() and Self == ws or WS and NamecallMethod == "FindPartOnRayWithIgnoreList" and library.flags["SilentAimToggle"] then
      if Target ~= nil then
        local distance, targetMag = vector.magnitude(Target.Position - args[1].Origin), vector.magnitude(Target.Position)
        local magicEquation = Target.Position + CreateVector(0,  distance / math.cos(targetMag) / distance  ,0)
        
        
        local equation = Vector3(0,  distance / math.abs(targetMag) * math.cos(.01) / targetMag  ,0)

        --table.foreach(args, print)

        args[1] = Ray.new(args[1].Origin, CFrame.lookAt(args[1].Origin, Target.Position).LookVector * 9e9)
        --Ray.new(args[1].Origin, CFrame.lookAt(args[1].Origin, Target.Position).LookVector * 9e9)


        --args[1] = magicEquation
        --args[2] = CFrame.lookAt(args[1], Target.Position).LookVector * 9e9


        --9e9
        --CFrame.lookAt(args[1], Target.Position).LookVector * args[2].Magnitude
      end
      return raycall2(Self, unpack(args))
    end

    return raycall2(Self, ...)
end))



local raycall
raycall = hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
    local args = {...}
    local NamecallMethod = getnamecallmethod()


    if not checkcaller() and Self == ws or WS and NamecallMethod == "Raycast" and library.flags["SilentAimToggle"] then
      if Target ~= nil then
        local distance, targetMag = vector.magnitude(Target.Position - args[1]), vector.magnitude(Target.Position)
        local magicEquation = Target.Position + CreateVector(0,  distance / math.cos(targetMag) / distance  ,0)
        
        
        local equation = Vector3(0,  distance / math.abs(targetMag) * math.cos(.01) / targetMag  ,0)
        --args[1] = magicEquation
        --args[2] = CFrame.lookAt(args[1], Target.Position).LookVector * 9e9


        --9e9
        --CFrame.lookAt(args[1], Target.Position).LookVector * args[2].Magnitude
      end
      return raycall(Self, unpack(args))
    end

    return raycall(Self, ...)
end))



local rayNew
rayNew = hookfunction(Ray.new, newcclosure(function(origin, direction)
    if not checkcaller() and library.flags["SilentAimToggle"] and Target ~= nil then
        local distance = (Target.Position - origin).Magnitude
        local magicEquation = Target.Position + Vector3(0,  distance / math.cos(Target.Position.Magnitude) / distance  ,0)
        local equation = Vector3(0,  distance / math.abs(Target.Position.Magnitude) * math.cos(.01) / Target.Position.Magnitude  ,0)


        --origin = magicEquation
        --direction = (Target.Position - origin).Unit * 9e9


        --(Vector3(0, -10, 0) - origin).Unit
        --CFrame.lookAt(args[1], Target.Position).LookVector * args[2].Magnitude

      return rayNew(origin, direction)
    end
   return rayNew(origin, direction)
end))



end







library:indicator()



