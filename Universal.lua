local services = loadstring(game:HttpGet("https://raw.githubusercontent.com/iampro1240/GeekClient.gg---Apocalypse-Rising-2/refs/heads/main/services.lua"))()
local lib = {}
setfpscap(99999)



local WS, ws = services:GetService("Workspace"), services:CloneReference(workspace)
local Players, ReplicatedStorage, RunService, TweenService, UserInputService, Lighting, Camera, Drawing, ReplicatedFirst = services:GetService("Players"), services:GetService("ReplicatedStorage"), services:GetService("RunService"), services:GetService("TweenService"), services:GetService("UserInputService"), services:GetService("Lighting"), services:CloneReference(workspace.CurrentCamera), Drawing.new, services:GetService("ReplicatedFirst")
local HttpService = services:GetService("HttpService")
local Client, ClientChar = Players.LocalPlayer, Players.LocalPlayer.Character
local mousePos = Client:GetMouse()
local CameraVector = Camera.CFrame.Position
local tweenInfo = TweenInfo.new(5)



local tan, floor, rad, clamp, round = services:CloneFunction(math.tan), services:CloneFunction(math.floor), services:CloneFunction(math.rad), services:CloneFunction(math.clamp), services:CloneFunction(math.round)
local New, hideui = services:CloneFunction(Instance.new), gethui()



local FromRGB, hex, NewGradient, GradientSequence, GradientNumberKeypoint, GradientNumberSequence = services:CloneFunction(Color3.fromRGB), services:CloneFunction(Color3.fromHex), services:CloneFunction(ColorSequence.new), services:CloneFunction(ColorSequenceKeypoint.new), services:CloneFunction(NumberSequenceKeypoint.new), services:CloneFunction(NumberSequence.new)
local dim2, dim, Vector2, Vector3, CreateVector = clonefunction(UDim2.new), clonefunction(UDim.new), clonefunction(Vector2.new), clonefunction(Vector3.new), clonefunction(vector.create)



local CameraViewport = Camera.ViewportSize
local CameraOrigin = Vector2(CameraViewport.X / 2, CameraViewport.Y / 2)



local library, themes = loadstring(game:HttpGet("https://raw.githubusercontent.com/iampro1240/GeekClient.gg---Apocalypse-Rising-2/refs/heads/main/library.lua"))()
local window = library:window({name = os.date('DaveSploit.xyz | Executor: ' .. identifyexecutor() .. ' Date ~ %b %d %Y'), size = dim2(0, 900, 0, 900)})
local muzzlevelocity
local bgravity
local predictPos
library.target = Client



local cheat = {
  tabs = {
	aiming = window:tab({name = "Combat"});
	visuals = window:tab({name = "Visuals"});
    movement = window:tab({name = "Movement"});
    misc = window:tab({name = "Miscellanious"});
  };


  visualcache = {circle = Drawing("Circle"), outlinecircle = Drawing("Circle")};
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
  };



  BulletTrails = {
    Electricity = "rbxassetid://7151777149";
    Lightning = "rbxassetid://7151778302";
    Pulse = "rbxassetid://11226108137";
    LightPulse = "rbxassetid://917186750";
    Reflex = "rbxassetid://833874434";
    Shards = "rbxassetid://13712007292";
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
  }; 



  modules = {
  };



  locktarget;
  gunmodel;
  barrelspoof;
  hitplr;
  targetvis;
  targetmanip;



}



writefile("Minecraftia1.ttf", game:HttpGet("https://github.com/i77lhm/storage/raw/refs/heads/main/fonts/ProggyClean.ttf"))
local Minecraftia = {
	name = "Minecraftia",
	faces = {
	  {
		name = "Regular",
		weight = 100,
		style = "normal",
		assetId = getcustomasset("Minecraftia1.ttf")
	  }
	}
}


writefile("Minecraftia.ttf", HttpService:JSONEncode(Minecraftia))
lib.Minecraftia = Font.new(getcustomasset("Minecraftia.ttf"), Enum.FontWeight.Regular)



function lib:DrawGui(self)
	lib[self] = {holder = New("BillboardGui"), cache = {}, connection, Colors = New("Folder"), Borders = New("Folder"), chamsholder = New("Folder")}
	lib[self].holder.Name = self.Name
    lib[self].holder.Size = dim2(7, 0, 7, 0)
	lib[self].holder.Parent = hideui
	lib[self].holder.AlwaysOnTop = true
    lib[self].holder.StudsOffset = Vector3(0, .45)
    

    lib[self].chamsholder.Parent = lib[self].holder


    lib[self].Colors.Parent = lib[self].holder
    lib[self].Borders.Parent = lib[self].holder



    return lib[self], lib[self].chamsholder
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
	obj.FontFace = lib.Minecraftia

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

    lib[self].connection:Disconnect()
    task.wait()
    lib[self] = nil
end



function returnflag(library, flag)
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



local GetPFromChar = function(p)
    return Players:GetPlayerFromCharacter(p)
end



local getweapon = function(weapon)
    if weapon then
       return weapon.Name
    else
       return "Hands"
    end
end



local createCrosshair = function()
    local G2L = {};
    



  do -- Crosshair shit
    G2L["1"] = New("ScreenGui", hideui);
    G2L["1"]["IgnoreGuiInset"] = true;
    G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
    G2L["1"]["Name"] = [[GunGUI]];
    G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
    G2L["1"].Enabled = false


    -- StarterGui.GunGUI.CrosshairFrame
    G2L["2"] = New("Frame", G2L["1"]);
    G2L["2"]["ZIndex"] = 0;
    G2L["2"]["BorderSizePixel"] = 0;
    G2L["2"]["BackgroundColor3"] = FromRGB(255, 255, 255);
    G2L["2"]["Position"] = dim2(0.5, 0, 0.5, 0);
    G2L["2"]["BorderColor3"] = FromRGB(28, 43, 54);
    G2L["2"]["Name"] = [[CrosshairFrame]];
    G2L["2"]["BackgroundTransparency"] = 1;


   -- StarterGui.GunGUI.CrosshairFrame.Left
   G2L["3"] = New("Frame", G2L["2"]);
   G2L["3"]["BorderSizePixel"] = 0;
   G2L["3"]["BackgroundColor3"] = FromRGB(255, 255, 255);
   G2L["3"]["Size"] = dim2(0, 40, 0, 2);
   G2L["3"]["Position"] = dim2(0, -60, 0, -1);
   G2L["3"]["BorderColor3"] = FromRGB(114, 114, 114);
   G2L["3"]["Name"] = [[Left]];


   -- StarterGui.GunGUI.CrosshairFrame.Left.UIStroke
   G2L["4"] = New("UIStroke", G2L["3"]);
   G2L["4"]["Thickness"] = 0.5;


   -- StarterGui.GunGUI.CrosshairFrame.Right
   G2L["5"] = New("Frame", G2L["2"]);
   G2L["5"]["BorderSizePixel"] = 0;
   G2L["5"]["BackgroundColor3"] = FromRGB(255, 255, 255);
   G2L["5"]["Size"] = dim2(0, -40, 0, 2);
   G2L["5"]["Position"] = dim2(0, 60, 0, -1);
   G2L["5"]["BorderColor3"] = FromRGB(114, 114, 114);
   G2L["5"]["Name"] = [[Right]]; 


    -- StarterGui.GunGUI.CrosshairFrame.Right.UIStroke
    G2L["6"] = New("UIStroke", G2L["5"]);
    G2L["6"]["Thickness"] = 1;


    -- StarterGui.GunGUI.CrosshairFrame.Bottom
    G2L["7"] = New("Frame", G2L["2"]);
    G2L["7"]["BorderSizePixel"] = 0;
    G2L["7"]["BackgroundColor3"] = FromRGB(255, 255, 255);
    G2L["7"]["Size"] = dim2(0, 2, 0, -40);
    G2L["7"]["Position"] = dim2(0, -1, 0, 60);
    G2L["7"]["BorderColor3"] = FromRGB(114, 114, 114);
    G2L["7"]["Name"] = [[Bottom]];


    -- StarterGui.GunGUI.CrosshairFrame.Bottom.UIStroke
    G2L["8"] = New("UIStroke", G2L["7"]);
    G2L["8"]["Thickness"] = 0.5;


    -- StarterGui.GunGUI.CrosshairFrame.Top
    G2L["9"] = New("Frame", G2L["2"]);
    G2L["9"]["BorderSizePixel"] = 0;
    G2L["9"]["BackgroundColor3"] = FromRGB(255, 255, 255);
    G2L["9"]["Size"] = dim2(0, 2, 0, 40);
    G2L["9"]["Position"] = dim2(0, -1, 0, -60);
    G2L["9"]["BorderColor3"] = FromRGB(114, 114, 114);
    G2L["9"]["Name"] = [[Top]];


    -- StarterGui.GunGUI.CrosshairFrame.Top.UIStroke
    G2L["a"] = New("UIStroke", G2L["9"]);
    G2L["a"]["Thickness"] = 0.5;
  end

   return G2L
end



local createFOV = function()
  local FOV = New("ScreenGui")
  local FOV_2 = New("Frame")
  local FOV_Outline = New("Frame")


  local UICorner = New("UICorner")
  local UICorner2 = New("UICorner")
  local UIStroke = New("UIStroke")
  local UIStroke2 = New("UIStroke")
  local UIGradient = New("UIGradient")


  do -- FOV shit
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
   FOV_Outline.SizeConstraint = Enum.SizeConstraint.RelativeYY



   UICorner.CornerRadius = dim(100, 0)
   UICorner.Parent = FOV_2
   UIStroke.Parent = FOV_2
   UIGradient.Parent = UIStroke



   UICorner2.CornerRadius = dim(100, 0)
   UICorner2.Parent = FOV_Outline
   UIStroke2.Parent = FOV_Outline
  end

    
   return FOV_2, FOV_Outline, UIStroke, UIStroke2, UIGradient
end



local createHitMarker = function(adornee)
    local G2L = {};
    



  do -- Hit Marker shit
    G2L["1"] = New("BillboardGui", hideui);
    G2L["1"].Enabled = library.flags["HitMarkerToggle"]
    G2L["1"].Size = dim2(0, 5, 0, 5)
    G2L["1"].Adornee = adornee


    G2L["3"].Size = dim2(0, library.flags["CrosshairLength"], 0, library.flags["CrosshairWidth"])
    G2L["5"].Size = dim2(0, -library.flags["CrosshairLength"], 0, library.flags["CrosshairWidth"])


    G2L["9"].Size = dim2(0, library.flags["CrosshairWidth"], 0, library.flags["CrosshairLength"])
    G2L["7"].Size = dim2(0, library.flags["CrosshairWidth"], 0, -library.flags["CrosshairLength"])


    G2L["3"].Position = dim2(0, -library.flags["CrosshairGap"] * 10, 0, -1)
    G2L["5"].Position = dim2(0, library.flags["CrosshairGap"] * 10, 0, -1)


    G2L["9"].Position = dim2(0, -1, 0, -library.flags["CrosshairGap"] * 10)
    G2L["7"].Position = dim2(0, -1, 0, library.flags["CrosshairGap"] * 10)


    G2L["3"].BackgroundColor3 = returnflagcolor("Crosshair_Color")
    G2L["5"].BackgroundColor3 = returnflagcolor("Crosshair_Color")
    G2L["9"].BackgroundColor3 = returnflagcolor("Crosshair_Color")
    G2L["7"].BackgroundColor3 = returnflagcolor("Crosshair_Color")



    G2L["4"].Thickness = library.flags["CrosshairStrokeSize"]
    G2L["6"].Thickness = library.flags["CrosshairStrokeSize"]
    G2L["8"].Thickness = library.flags["CrosshairStrokeSize"]
    G2L["a"].Thickness = library.flags["CrosshairStrokeSize"]



    if library.flags["CrosshairSpin"] then
        G2L["2"].Rotation += library.flags["CrosshairRotationSpeed"]
    else
        G2L["2"].Rotation = 0
    end

    task.wait(2)
    G2L["1"]:Destroy()

  end
end



local noclipvalue = function(value)
 if Client.Character == nil then return end

  for _, part in pairs(Client.Character:GetChildren()) do
    if part:IsA("MeshPart") or part:IsA("Part") then
        part.CanCollide = value
    end
  end
end



local getVis = function()
 if cheat.targetvis == self then
    if cheat.targetmanip == self then
        return "Visible + Manipulated"
    else
        return "Visible"
        end
    else
       return "Covered"
    end
end



local getVisColor = function()
    if cheat.targetvis == self then
     return returnflagcolor("VisColorOne")
    else
     return returnflagcolor("VisColorTwo")
    end
end



local distanceMath = function(root, pos)
    local Distance = math.sign( (root.Position - CameraVector).Magnitude )
    return rad( math.sign( math.tan(Distance) * rad(pos.Z) ) * math.tan(Distance) )
end



local frameLimit = function(deltatime)
    local rendertime = 0   
    rendertime += deltatime
	if (rendertime > 1 / library.flags["FrameRateLimit"]) then
		return
	end
	rendertime = 0
end



function lib:ESPObject(self, lib2)
    if self == Client then return end
    local esp, chams = lib:DrawGui(self)
    local cache = esp.cache



do -- main text
    lib:DrawFrame({
        Name = "PName",
        Parent = esp.holder,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(.5, 0, .12, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 9999999999,
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
        Zindex = 9999999999,
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
    FlagPadding.PaddingLeft = dim(1.75, 0)
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



    lib:DrawText({
        Name = "Priority", 
		Parent = esp.holder["Flags"],
        TextSize = 9,
        AnchorPoint = Vector2(0, .05)
    })



end



do -- upper flags
    lib:DrawText({
        Name = "HealthCount", 
		Parent = esp.holder["UpperFlags"],
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
        Zindex = 9999999999,
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
        Zindex = 9999999999,
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
        Zindex = 9999999999,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawGradient({
        Parent = esp.holder.HealthBar["Bar"],
        Rotation = -90,
        Color = ColorSequence.new{ColorSequenceKeypoint.new(0, FromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, FromRGB(255, 255, 255))}
    })
end



local Colors = esp["Colors"]
local Borders = esp["Borders"]
Colors.Parent = esp.holder["Box"]
Borders.Parent = esp.holder["Box"]



local UI = {
    GUI = esp.holder;
    PName = esp.holder["PName"]["PName"];
    Distance = esp.holder["Flags"]["Distance"];
    Weapon = esp.holder["Flags"]["Weapon"];



    Priority = esp.holder["Flags"]["Priority"];
    HealthCount = esp.holder["UpperFlags"]["HealthCount"];
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
    BarGradient = esp.holder["HealthBar"]["Bar"]["UIGradient"];
}



esp.connection = RunService.Heartbeat:Connect(function(deltatime)
  frameLimit(deltatime)

  if self.Character ~= nil and services:findfirstchild(self.Character, "HumanoidRootPart") and services:findfirstchild(self.Character, "Humanoid") then
    local character, getName = GetPFromChar(self.Character).Character, GetPFromChar(self.Character)
    local root, humanoid = character["HumanoidRootPart"], character["Humanoid"]



  if character ~= nil and root ~= nil and humanoid ~= nil and humanoid.Health ~= 0 then
    local iscornerbox, isfullbox, distance, name, healthcount, weapon = returnflag(lib2, "Boxes") and returnflag(lib2, "Box_Type") == "Corner" and os, returnflag(lib2, "Boxes") and returnflag(lib2, "Box_Type") == "Full" and os, round(UI.GUI.CurrentDistance) .. " FT", getName.Name .. " ($" .. getName.DisplayName .. ")", round(humanoid.Health), services:findfirstchildofclass(character, "Tool")
    local pos, os = services:wtvp(root.Position)
    local distancemath = distanceMath(root, pos)
    local health = humanoid.Health / humanoid.MaxHealth
    --floor((root.Size.X - root.Size.Z / character.WorldPivot.Position.Magnitude * root.Position.Magnitude / pos.Magnitude * (1/2)))
    --local distancemath = floor((root.Size.X - root.Size.Z / cache.character.WorldPivot.Position.Magnitude * root.Position.Magnitude / pos.Magnitude * pos.Z))



   do -- GUI
    UI.GUI.Enabled = lib2.flags["Enabled"] and os
    UI.GUI.Adornee = root
	UI.GUI.StudsOffset = Vector3(0, root.Size.Y^2 / -root.Size.Y^2 + 1, 0)
    UI.GUI.Size = dim2(14, 0 * distancemath + 30, 7, 0 * distancemath + 12, 0)
    UI.GUI.MaxDistance = returnflag(lib2, "MaxDistance")
   end

   

   do -- Texts
        if library.target == self and library.flags["TargetColor"] then
            
           UI.PName.TextColor3 = returnflagcolor("Target_Color")
           UI.Distance.TextColor3 = returnflagcolor("Target_Color")
           UI.Weapon.TextColor3 = returnflagcolor("Target_Color")
           UI.HealthCount.TextColor3 = returnflagcolor("Target_Color")
           UI.Priority.TextColor3 = returnflagcolor("Target_Color")



           UI.TopC.BackgroundColor3 = returnflagcolor("Target_Color")
           UI.BottomC.BackgroundColor3 = returnflagcolor("Target_Color")
           UI.LeftC.BackgroundColor3 = returnflagcolor("Target_Color")
           UI.RightC.BackgroundColor3 = returnflagcolor("Target_Color")
            
         else

           UI.PName.TextColor3 = returnflagcolor("Name_Color")
           UI.Distance.TextColor3 = returnflagcolor("Distance_Color")
           UI.Weapon.TextColor3 = returnflagcolor("Weapon_Color")
           UI.HealthCount.TextColor3 = returnflagcolor("Health_Count_Color")
           UI.Priority.TextColor3 = getVisColor()



           UI.TopC.BackgroundColor3 = returnflagcolor("Box_Color")
           UI.BottomC.BackgroundColor3 = returnflagcolor("Box_Color")
           UI.LeftC.BackgroundColor3 = returnflagcolor("Box_Color")
           UI.RightC.BackgroundColor3 = returnflagcolor("Box_Color")
        end



        UI.PName.Text = name
        UI.PName.Size = dim2(0.75, 0 * distancemath + .1, 0, .8 * clamp( distancemath - 8 - 22, distancemath - 8 - 15, distancemath - 2 - 4))
        --dim2(0.75, 0 * distancemath + .1, 0, .8 * clamp( distancemath - 8 - 22, distancemath - 5 - 15, distancemath - 2 - 5))
        UI.PName.Position = dim2(0, 0, 0.1, 0)
        UI.PName.Visible = returnflag(lib2, "Names") and os
        UI.PName.TextSize = 12
        UI.PName.FontFace = lib.Minecraftia


        UI.Distance.Text = distance
        UI.Distance.Visible = returnflag(lib2, "Distance") and os
        UI.Distance.Size = dim2(1, 0 * distancemath + .1, 0, .8 * clamp( distancemath + 5 + 10, distancemath + 8 + 15, distancemath + 15 + 25))
        --dim2(1, 0 * distancemath + .1, 0, .8 / distancemath / 5 + 20)
        UI.Distance.Position = dim2(0, 0, 1, 0)
        UI.Distance.TextSize = 12
        UI.Distance.FontFace = lib.Minecraftia


        UI.Weapon.Text = getweapon(weapon)
        UI.Weapon.Visible = returnflag(lib2, "Weapon") and os
        UI.Weapon.Size = dim2(1, 0 * distancemath + .1, 0, .8 * clamp( distancemath + 5 + 10, distancemath + 14 + 40, distancemath + 25 + 30))
        --dim2(1, 0 * distancemath + .1, 0, 1 / distancemath / 9 + 48)
        UI.Weapon.Position = dim2(0, 0, 1, 0)
        UI.Weapon.TextSize = 12
        UI.Weapon.FontFace = lib.Minecraftia


        UI.Flags.Size = dim2(.363, 0, .75, 0)
        UI.Flags.Position = dim2(0, 0, .52, 0)


        UI.UpperFlags.Size = dim2(.0999, 0, .042, 0)
        UI.UpperFlags.Position = dim2(.0999, 0, .145, 0)


        UI.Priority.Text = getVis()
        UI.Priority.Visible = returnflag(lib2, "Priority") and os
        UI.Priority.Size = dim2(1, 0 * distancemath + .1, 0, .8 * clamp( distancemath + 5 + 10, distancemath + 40 + 50, distancemath + 45 + 50))
        --dim2(0, 1 * clamp( distancemath + 1 + 1, distancemath + 25 + 30, distancemath + 25 + 30), 0, .05 / distancemath / .1 + .1)
        UI.Priority.Position = dim2(0, 0, 1, 0)
        UI.Priority.TextSize = 12
        UI.Priority.FontFace = lib.Minecraftia


        UI.HealthCount.Text = healthcount
        UI.HealthCount.Visible = returnflag(lib2, "HealthCount") and os
        UI.HealthCount.Size = dim2(0, .1 - distancemath + -3.5 - distancemath + math.abs(.08), 1, 0)
        --dim2(.62, 0 * distancemath + 5, 0, 1 * clamp(distancemath + 5, distancemath + 10, distancemath + 15))
        UI.HealthCount.Position = dim2(.35, 0 - distancemath - 3, .12, 0)
        UI.HealthCount.TextSize = 12
        UI.HealthCount.FontFace = lib.Minecraftia
    end
    


   do -- Full Box
    UI.Box.Size = dim2(.285, 0, .85, 0)
    UI.Box.Position = dim2(.35, 0, .12, 0)


    UI.TopB.Size = dim2(1, 0, 0, 1 * clamp( distancemath + .2, distancemath + 1.5, distancemath + 2))
    UI.TopC.Size = UI.TopB.Size
    UI.TopB.Visible = isfullbox
    UI.TopC.Visible = isfullbox
        
        
    UI.BottomB.Size = dim2(1, 0, 0, -1 * clamp( distancemath + .2, distancemath + 1.5, distancemath + 2))
    --dim2(1, 0, 0, 1 * clamp( math.modf(distancemath - 2), -1, .5))
    UI.BottomC.Size = UI.BottomB.Size
    UI.BottomB.Visible = isfullbox
    UI.BottomC.Visible = isfullbox


    UI.LeftB.Size = dim2(0, 1 * clamp( distancemath + .2, distancemath + 1.5, distancemath + 2), 1, 0)
    --dim2(0, 1 * distancemath - -.1, 1, 0)
    --dim2(0, 1 * distancemath - -.75, 1, 0)
    UI.LeftC.Size = UI.LeftB.Size
    UI.LeftB.Visible = isfullbox
    UI.LeftC.Visible = isfullbox

        
    UI.RightB.Size = dim2(0, -1 * clamp( distancemath + .2, distancemath + 1.5, distancemath + 2), 1, 0)
    --dim2(0, 1 * distancemath - -.75, 1, 0)
    UI.RightC.Size = UI.RightB.Size
    UI.RightB.Visible = isfullbox
    UI.RightC.Visible = isfullbox
   end



   do -- Healthbar


    UI.HealthBar.Visible = returnflag(lib2, "Healthbar") and os
    UI.HealthBar.Rotation = 180
    UI.Bar.Size = dim2(1, 0, health, 0)


    if library.flags["Bar_Position"] == "Left" then
        UI.HealthBar.Size = dim2(0, 1 + distancemath + -3.5 - distancemath + math.abs(.08), .85, 0)
        UI.HealthBar.Position = dim2(.35, 0 - distancemath - 3, .12, 0)
     elseif library.flags["Bar_Position"] == "Right" then
        UI.HealthBar.Size = dim2(0, 1 + distancemath + 1 - distancemath + math.abs(.08), .85, 0)
        UI.HealthBar.Position = dim2(.62, 0 + distancemath + 3.5, .12, 0)
    end


     if library.flags["HealthBarGradient"] then
        UI.Bar.BackgroundColor3 = FromRGB(255, 255, 255)
        UI.BarGradient.Enabled = true
        UI.BarGradient.Color = NewGradient{GradientSequence(0, returnflagcolor("HealthGradientColorOne")), GradientSequence(1, returnflagcolor("HealthGradientColorTwo"))}
      else
        UI.BarGradient.Enabled = false
        UI.Bar.BackgroundColor3 = returnflagcolor("Health_High")

        if health < .25 then
        UI.Bar.BackgroundColor3 = returnflagcolor("Health_Low")
      elseif health < .55 then
        UI.Bar.BackgroundColor3 = returnflagcolor("Health_Medium")
      elseif health < 1 then
        UI.Bar.BackgroundColor3 = returnflagcolor("Health_High")
       end
      end
     end

   
   else

       lib:disconnect(self)

      end
    end
  end)
end



function OnAdded(Player)
    if Player ~= Client and library.flags["Enabled"] then
        lib:ESPObject(Player, library)
        library:notification({time = 2, text = "[DaveSploit.gg] " .. Player.Name .. " Joined The Server", flashing = false;})
    end
end



function OnRemoved(Player)
    if Player ~= Client and library.flags["Enabled"] then
        lib:disconnect(Player)
    end
end



function OnCorpseRemoved(Corpse)
    lib:disconnect(Corpse)
end



function RenderESP()
   for _, Player in Players:GetPlayers() do
    lib:ESPObject(Player, library)
   end
end



local currenthitsound
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



local esp;
local function update_elements() if esp and esp.refresh_elements then esp.refresh_elements() end end 



do -- Combat
    local silentColumn = cheat.tabs.aiming:column()
    local manipulationColumn = cheat.tabs.aiming:column()


    local silentSection, visualSection = silentColumn:multi_section({names = {"Silent Aim", "SFX/VFX"}})
    local crosshairSection, HitMarkerSection = silentColumn:multi_section({names = {"Crosshair", "Hit Marker"}})
    local crosshair = createCrosshair()
    local FOV_2, FOV_Outline, UIStroke, UIStroke2, UIGradient = createFOV()
    


  local RenderFOV = function(Distance)
   local maxdist
   local G2L = crosshair


   cheat.connections.silent = RunService.PreRender:Connect(function(deltatime)
   if library.flags["SilentAimToggle"] then
    --services:framelimit(deltatime)
    local distance



   do -- FOV
    FOV_2.Size = dim2(library.flags["FOVRadius"] / 500, 0, library.flags["FOVRadius"] / 500, 0)
    FOV_2.Visible = library.flags["SilentAimToggle"] and library.flags["FOVToggle"]
    FOV_2.Position = dim2(.5, 0, .48, 0)
    FOV_2.AnchorPoint = Vector2(.5, .55)



    FOV_Outline.Size = FOV_2.Size
    FOV_Outline.Visible = library.flags["SilentAimToggle"] and library.flags["FOVToggle"] and library.flags["FOVOutline"]
    FOV_Outline.Position = FOV_2.Position
    FOV_Outline.AnchorPoint = FOV_2.AnchorPoint
    FOV_Outline.ZIndex = -5



    UIStroke.Color = FromRGB(255, 255, 255)
    UIStroke.Thickness = library.flags["Thickness"]



    UIStroke2.Color = returnflagcolor("Outline_Color")
    UIStroke2.Thickness = library.flags["Thickness"] + 1.5
    UIStroke2.ZIndex = -5



    UIGradient.Color = NewGradient{GradientSequence(0, library.flags["FOV_Color"].Color), GradientSequence(1, library.flags["FOV_Color2"].Color)}
    UIGradient.Rotation += library.flags["RotationSpeed"]
    UIGradient.Offset = Vector2(library.flags["GradientOffset"], 0)
   end



   do -- Crosshair
    G2L["3"].BackgroundColor3 = returnflagcolor("Crosshair_Color")
    G2L["5"].BackgroundColor3 = returnflagcolor("Crosshair_Color")
    G2L["9"].BackgroundColor3 = returnflagcolor("Crosshair_Color")
    G2L["7"].BackgroundColor3 = returnflagcolor("Crosshair_Color")



    G2L["1"].Enabled = library.flags["CrosshairToggle"]
    G2L["3"].Size = dim2(0, library.flags["CrosshairLength"], 0, library.flags["CrosshairWidth"])
    --dim2(0, library.flags["CrosshairLength"], 0, library.flags["CrosshairWidth"])
    G2L["5"].Size = dim2(0, -library.flags["CrosshairLength"], 0, library.flags["CrosshairWidth"])
    --dim2(0, -library.flags["CrosshairLength"], 0, -library.flags["CrosshairWidth"])


    G2L["9"].Size = dim2(0, library.flags["CrosshairWidth"], 0, library.flags["CrosshairLength"])
    G2L["7"].Size = dim2(0, library.flags["CrosshairWidth"], 0, -library.flags["CrosshairLength"])


    G2L["3"].Position = dim2(1, -library.flags["CrosshairGap"] * 10, 0, -1)
    --dim2(0, -library.flags["CrosshairGap"] * 10, 0, -1)
    G2L["5"].Position = dim2(-1, library.flags["CrosshairGap"] * 10, 0, -1)


    G2L["9"].Position = dim2(0, -1, 0, -library.flags["CrosshairGap"] * 10)
    --dim2(0, -1, 0, -library.flags["CrosshairGap"] * 10)
    G2L["7"].Position = dim2(0, -1, 0, library.flags["CrosshairGap"] * 10)
    --dim2(0, -1, 0, library.flags["CrosshairGap"] * 10)



    G2L["4"].Thickness = library.flags["CrosshairStrokeSize"]
    G2L["6"].Thickness = library.flags["CrosshairStrokeSize"]
    G2L["8"].Thickness = library.flags["CrosshairStrokeSize"]
    G2L["a"].Thickness = library.flags["CrosshairStrokeSize"]



    if library.flags["CrosshairSpin"] then
        G2L["2"].Rotation += library.flags["CrosshairRotationSpeed"]
    else
        G2L["2"].Rotation = 0
    end



    if not Client.Character then
        return
    end



    if services:findfirstchild(Client.Character, "Equipped") then
        local gun = services:findfirstchildofclass(Client.Character["Equipped"], "Model")
        if library.flags["CrosshairBarrel"] and gun and services:findfirstchild(gun, "Muzzle") then
            local barrel = gun["Muzzle"]
            local muzzlePos, muzzleOS = services:wtvp( barrel.Position )
            

            G2L["2"]["Position"] = dim2(0, muzzlePos.X, 0, muzzlePos.Y)
        else
            G2L["2"]["Position"] = dim2(.5, 0, .5, 0)
        end

    else
        G2L["2"]["Position"] = dim2(.5, 0, .5, 0)
     end
    end



    for _, P in Players:GetPlayers() do
     if P == Client then 
        continue 
    end

    if Client.Character and P.Character and services:findfirstchild(P.Character, library.flags["Silent_Target"]) and services:findfirstchild(P.Character, "HumanoidRootPart") and library.get_priority(P) ~= "Friendly" then
      local char = P.Character
      local pRoot = services:findfirstchild(Client.Character, "Head")
      local targetP, rayPos = char[library.flags["Silent_Target"]], char["HumanoidRootPart"]
      local pos2, os = services:wtvp(targetP.CFrame.p)
      local dist = (Vector2(mousePos.X, mousePos.Y) - Vector2(pos2.X, pos2.Y)).Magnitude


      local raycastParams = RaycastParams.new()
      raycastParams.FilterDescendantsInstances = {Client.Character, Camera:GetChildren()}
      raycastParams.FilterType = Enum.RaycastFilterType.Exclude
      raycastParams.RespectCanCollide = true


    if dist <= (distance or library.flags["FOVRadius"]) and os then
       Target = targetP
       distance = dist
       library.target = Players:GetPlayerFromCharacter(P.Character)


     if library.flags["CrosshairFollows"] then
        G2L["2"]["Position"] = dim2(0, pos2.X, 0, pos2.Y)
      else
        G2L["2"]["Position"] = dim2(.5, 0, .5, 0)
     end


   
       if pRoot ~= nil and library.flags["VischeckEnabled"] then
       local visCheck = WS:Raycast(pRoot.Position, (targetP.Position - pRoot.Position).Unit * 10000)
       --WS:Raycast(pRoot.Position, (targetP.Position - pRoot.Position).Unit * 10000)
        if visCheck then
            if services:findfirstchild(visCheck.Instance.Parent, "Humanoid") then
               cheat.targetvis = library.target
            else
                cheat.targetvis = nil
            end
        else
            cheat.targetvis = nil
         end
      end


     else

        --G2L["2"]["Position"] = dim2(.5, 0, .5, 0)
        
      end
    end
   end
   

   else


    FOV_2.Visible = false
    G2L["1"].Enabled = false
    task.wait()
    cheat.connections.silent:Disconnect()

   end
   end)
  end


    silentSection:toggle({
      name = "Silent Aim", 
      flag = "SilentAimToggle",
      risky = true,
      tooltip = "redirects bullets to target.",
	  callback = function(args)
        if args then
          RenderFOV()
        end
    end
    }):keybind({
    name = "Silent Aim",
    key = nil,
    mode = "toggle",
    flag = "SilentAimBind"
    })


    silentSection:toggle({
        name = "Triggerbot", 
        flag = "TriggerBotEnabled",
        risky = true,
        tooltip = "shoots whenever you target someone, for the love of god please use vischeck.",
    }):keybind({
      name = "Triggerbot",
      key = nil,
      mode = "toggle",
      flag = "TriggerbotBind"
    })


    silentSection:toggle({
      name = "FOV", 
      flag = "FOVToggle",
      risky = false,
      tooltip = "target radius",
    }):colorpicker({name = "FOV Color", flag = "FOV_Color"})
    :colorpicker({name = "FOV Color 2", flag = "FOV_Color2"})


    silentSection:toggle({
	  name = "FOV Outline", 
	  flag = "FOVOutline",
   }):colorpicker({name = "Outline Color", flag = "Outline_Color"})


    silentSection:toggle({
        name = "Vischeck", 
        flag = "VischeckEnabled",
        risky = false,
        tooltip = "if you're not retarded, then you can figure out what this means.",
    })



    silentSection:toggle({
        name = "Instant Hit", 
        flag = "InstantBullet",
        risky = false,
        tooltip = "if you're not retarded, then you can figure out what this means.",
    })


    silentSection:toggle({
        name = "Target Indicator", 
        flag = "Indicator",
        risky = false,
        tooltip = "displays target info, such as their weapon, health, and whenever they are able to be manipulated",
    })


   silentSection:dropdown({
	  name = "Body Target", 
	  flag = "Silent_Target", 
	  items = {"Head", "HumanoidRootPart", "Random"},
	  default = "Head",
   })


   silentSection:slider({name = "Triggerbot Reaction Time", min = 0, max = 1, default = .1, interval = .1, flag = "TriggerbotReactionTime"})
   

    silentSection:slider({
      name = "Radius", 
      min = 10, 
      max = 500, 
      default = 90, 
      interval = 1, 
      flag = "FOVRadius"
    })


    silentSection:slider({
      name = "Thickness", 
      min = 1, 
      max = 10, 
      default = 1, 
      interval = 1, 
      flag = "Thickness"
    })


    silentSection:slider({
      name = "Rotation Speed", 
      min = .1, 
      max = 10, 
      default = .1, 
      interval = .1, 
      flag = "RotationSpeed"
   })


    silentSection:slider({
      name = "Gradient Offset", 
      min = -.5, 
      max = 1, 
      default = .5, 
      interval = .1, 
      flag = "GradientOffset"
    })



    local manipulationSection, gunModsSection  = manipulationColumn:multi_section({names = {"Manipulation", "Gun Mods"}})
    manipulationSection:toggle({
      name = "Bullet Manipulation", 
      flag = "BulletManipulation",
      risky = true,
      tooltip = "does gay ass math so you can hit people that are behind walls or mountains/hills/terrain :shrug:",
    }):keybind({
    name = "Manipulation",
    key = nil,
    mode = "toggle",
    flag = "ManipBind"
    })



    manipulationSection:toggle({
	  name = "Magic Bullet", 
	  flag = "MagicBullet"
    })
    manipulationSection:slider({name = "Max Manipulation Distance", min = 1, max = 100, default = 20, interval = 1, flag = "MaxManipulationDistance"})



    gunModsSection:toggle({
	  name = "Instant Aim", 
	  flag = "InstantAim"
    })



    gunModsSection:toggle({
	  name = "Remove Obstructed", 
	  flag = "RemoveObstructed"
    })



    crosshairSection:toggle({
	  name = "Crosshair", 
	  flag = "CrosshairToggle",
    }):colorpicker({name = "Crosshair Color", flag = "Crosshair_Color"})


    crosshairSection:toggle({
	  name = "Crosshair Follows", 
	  flag = "CrosshairFollows",
    })



    crosshairSection:toggle({
	  name = "Crosshair On Barrel",
	  flag = "CrosshairBarrel",
    })


    crosshairSection:toggle({
	  name = "Crosshair Spin", 
	  flag = "CrosshairSpin",
    })


    crosshairSection:slider({
      name = "Crosshair Length", 
      min = 1, 
      max = 18, 
      default = 12, 
      interval = 1, 
      flag = "CrosshairLength"
    })


    crosshairSection:slider({
      name = "Crosshair Width", 
      min = 1, 
      max = 5, 
      default = 2, 
      interval = 1, 
      flag = "CrosshairWidth"
    })


    crosshairSection:slider({
      name = "Crosshair Gap", 
      min = 2, 
      max = 10, 
      default = 6,
      interval = 1,
      flag = "CrosshairGap"
    })


    crosshairSection:slider({
      name = "Crosshair Rotation Speed",
      min = 1, 
      max = 5, 
      default = 1, 
      interval = 1, 
      flag = "CrosshairRotationSpeed"
    })


    crosshairSection:slider({
      name = "Crosshair Stroke Size",
      min = 0, 
      max = 3, 
      default = 1, 
      interval = 1, 
      flag = "CrosshairStrokeSize"
    })



    crosshairSection:dropdown({
	  name = "Animations", 
	  flag = "CrosshairAnimation", 
	  items = {"Static", "Pulse"},
	  default = "Static"
    })



    visualSection:toggle({
	  name = "Hit Notifications", 
	  flag = "HitNotifications",
    })


    visualSection:toggle({
	  name = "Bullet Tracers", 
	  flag = "BulletTracers",
    }):colorpicker({name = "Trail Color", flag = "TracerColor"})


    visualSection:toggle({
	  name = "SkinChanger",
	  flag = "SkinChanger"
    })


    visualSection:dropdown({
	  name = "Trails", 
	  flag = "TrailID", 
	  items = {"Electricity", "Pulse", "Lightning", "LightPulse", "Reflex", "Shards"},
	  default = "Electricity"
    })


    visualSection:slider({name = "Texture Speed", min = .1, max = 1, default = 1, interval = .1, suffix = "m", flag = "TextureSpeed", tooltip = "makes the texture faster/slower"})
    visualSection:slider({name = "Texture Length", min = .1, max = 1, default = 1, interval = .1, suffix = "m", flag = "TextureLength", tooltip = "makes the texture longer/shorter"})
    visualSection:slider({name = "Trail Lifetime", min = 1, max = 10, default = 1, interval = 1, suffix = "lft", flag = "TracerLifetime", tooltip = "destroy time"})




    HitMarkerSection:toggle({
	  name = "Hit Markers", 
	  flag = "HitMarkerToggle",
    }):colorpicker({name = "Hit Marker Color", flag = "HitMarkerColor"})



end



do -- Visuals
    local generalColumn = cheat.tabs.visuals:column()
    local chamsColumn = cheat.tabs.visuals:column()


	local playerSection, vehicleSection, corpseSection, crashesSection = generalColumn:multi_section({names = {"Player", "Vehicle", "Corpse", "Crashes"}})
    local selfChamsSection, viewmodelChamsSection = generalColumn:multi_section({names = {"Self Chams", "Viewmodel Chams"}})
    local worldSection, miscSection = chamsColumn:multi_section({names = {"World", "Miscellanious"}})
		


    playerSection:toggle({
        name = "Enabled", 
        flag = "Enabled", 
        callback = update_elements
    })


	playerSection:toggle({
        name = "Names", flag = "Names"
    }):colorpicker({
        flag = "Name_Color", 
        callback = update_elements
    })


	playerSection:toggle({
        name = "Boxes", 
        flag = "Boxes", 
        callback = update_elements
    }):colorpicker({
        name = "Box Color", 
        flag = "Box_Color", 
        callback = update_elements}
    )


	playerSection:dropdown({
        name = "Box Type", 
        flag = "Box_Type", 
        items = {"Corner", "Full"}, 
        default = "Corner"
    })


	playerSection:toggle({
        name = "Healthbar", 
        flag = "Healthbar", 
        callback = update_elements
    
    }):colorpicker({
        name = "High HP Color", 
        flag = "Health_High",
        callback = update_elements
    })
    :colorpicker({
        name = "Medium HP Color", 
        flag = "Health_Medium",
        callback = update_elements
    })
    :colorpicker({
        name = "Low HP Color", 
        flag = "Health_Low", 
        callback = update_elements
    })


    playerSection:toggle({
        name = "Health Bar Gradient", 
        flag = "HealthBarGradient"
    }):colorpicker({
        name = "Health Gradient Color One", 
        flag = "HealthGradientColorOne"
    })
    :colorpicker({
        name = "Health Gradient Color Two", 
        flag = "HealthGradientColorTwo"
    })



    playerSection:dropdown({
        name = "Health Bar Position", 
        flag = "Bar_Position", 
        items = {"Left", "Right"}, 
        default = "Left"
    })
     

    playerSection:toggle({
        name = "Health Count", 
        flag = "HealthCount"
    }):colorpicker({
        name = "Health Count Color", 
        flag = "Health_Count_Color"
    })


	playerSection:toggle({
        name = "Distance", 
        flag = "Distance",
    }):colorpicker({
        name = "Distance Color", 
        flag = "Distance_Color"
    })


	playerSection:toggle({
        name = "Weapon", 
        flag = "Weapon", 
        callback = update_elements
    }):colorpicker({
        name = "Weapon Color", 
        flag = "Weapon_Color"
    })


    playerSection:toggle({
        name = "Visible",
        flag = "Priority",
    }):colorpicker({
        name = "VisibleOne", 
        flag = "VisColorOne",
    })
    :colorpicker({
        name = "VisibleTwo", 
        flag = "VisColorTwo",
    })


    playerSection:slider({name = "Frame Render Limit", min = 10, max = 240, default = 60, interval = 1, flag = "FrameRateLimit"})
    playerSection:slider({name = "Max Render Distance", min = 100, max = 10000, default = 2000, interval = 1, flag = "MaxDistance"})



    worldSection:toggle({
        name = "Custom Time", 
        flag = "CustomTime"
    })


    worldSection:toggle({
        name = "Custom Ambient", 
        flag = "CustomAmbient"
    }):colorpicker({
        name = "Ambient Color", 
        flag = "AmbientColor"
    })


    worldSection:toggle({
        name = "Custom Atmosphere", 
        flag = "CustomAtmosphere"
    })


    worldSection:toggle({
        name = "Custom Clouds",
        flag = "CustomClouds"
    }):colorpicker({
        name = "Cloud Color", 
        flag = "CloudColor"
    })


    worldSection:slider({name = "Time", min = 0, max = 24, default = 12, interval = 1, suffix = "T", flag = "TimeOfDay"})
    worldSection:slider({name = "Glare", min = 0, max = 3, default = 1, interval = .1, suffix = "G", flag = "GlareAmount"})
    worldSection:slider({name = "Haze", min = 0, max = 3, default = 1, interval = .1, suffix = "H", flag = "HazeAmount"})
    worldSection:slider({name = "Cloud Cover", min = 0, max = 3, default = 1, interval = .1, suffix = "G", flag = "CloudCover"})
    worldSection:slider({name = "Cloud Density", min = 0, max = 3, default = 1, interval = .1, suffix = "H", flag = "CloudDensity"})


    miscSection:toggle({
	  name = "Zoom In", 
	  flag = "Zoom",
      risky = false,
      tooltip = "Zoom nigga"
    }):keybind({
      name = "Zoom In",
      key = Enum.KeyCode.J,
      mode = "hold",
      flag = "ZoomBind",
    })


    miscSection:slider({name = "Zoom Amount", min = 0, max = 50, default = 1, interval = 1, suffix = "H", flag = "ZoomAmount"})


end



do -- Movement
    local movementColumn = cheat.tabs.movement:column()
    local mapColumn = cheat.tabs.movement:column()
    local movementSection, mapSection = movementColumn:multi_section({names = {"Movement", "Map"}})
    local spooferSection = movementColumn:section({name = "Movement Spoofer", toggle = false})



    movementSection:toggle({
	  name = "Speed Hack", 
	  flag = "SpeedHack",
    }):keybind({
      name = "Speed Hack",
      key = Enum.KeyCode.G,
      mode = "hold",
      flag = "SpeedBind",
    })



    movementSection:toggle({ 
	  name = "Jump Hack", 
	  flag = "JumpHack",
    })



    movementSection:toggle({
	  name = "No Clip", 
	  flag = "NoClip",
    }):keybind({
      name = "No Clip",
      key = Enum.KeyCode.J,
      mode = "toggle",
      flag = "NoClipBind",
    })



    movementSection:toggle({ 
	  name = "SpinBot", 
	  flag = "spinbot",
    })



    movementSection:toggle({ 
	  name = "Remove Fall Damage", 
	  flag = "RemoveFallDamage",
    })



    movementSection:slider({name = "Walk Speed", min = 10, max = 32, default = 20, interval = 1, suffix = "wp", flag = "WalkSpeed"})
    movementSection:slider({name = "Jump Height", min = 4.5, max = 65, default = 20, interval = 1, suffix = "jh", flag = "JumpHeight"})
    movementSection:slider({name = "Spin Angle", min = 0, max = 360, default = 180, interval = 1, suffix = "ag", flag = "SpinAngle"})



    movementSection:dropdown({
	  name = "AA Style", 
	  flag = "AAStyle", 
	  items = {"LookDirection", "Spinbot"},
	  default = "LookDirection"
    })



    movementSection:toggle({
      name = "Peek Left", 
      flag = "PeekLeft",
      risky = true,
      tooltip = "Peeks to whichever side"
    }):keybind({
    name = "Peek Left",
    key = nil,
    mode = "hold",
    flag = "PeekLeftBind"
    })



    movementSection:toggle({
      name = "Peek Right", 
      flag = "PeekRight",
      risky = true,
      tooltip = "Peeks to whichever side"
    }):keybind({
    name = "Peek Right",
    key = nil,
    mode = "hold",
    flag = "PeekRightBind"
    })


end



do -- Miscellanious
    local chatSpamColumn = cheat.tabs.misc:column()
    local randomColumn = cheat.tabs.misc:column()
    local chatSpamSection, mapSection = chatSpamColumn:multi_section({names = {"Movement", "Map"}})



    chatSpamSection:toggle({
	  name = "Chat Spam", 
	  flag = "ChatSpamEnabled",
    })



    chatSpamSection:dropdown({
	  name = "Messages",
	  flag = "ChatSpamMessage",
	  items = {"Goodness! my wood is so large. It sure needs a chopping!", "DaveSploit.GG is so awesome! I love using it!", "I can't believe how good DaveSploit.GG is! It's the best exploit out there!", "DaveSploit.GG has completely changed my gaming experience for the better!", "If you're not using DaveSploit.GG, you're missing out on so much fun!", "DaveSploit.GG is the only exploit I'll ever need!"},
	  default = "Goodness! my wood is so large. It sure needs a chopping!"
    })


end



do -- renderloop
 local hum


 RunService.PreRender:Connect(function(deltatime)
  services:framelimit(deltatime)


    
    if library.flags["Zoom"] then
      if library.flags["ZoomBind"].active then
        Camera.FieldOfView = library.flags["ZoomAmount"]
      end
    end


    if library.flags["CustomTime"] then
      Lighting.TimeOfDay = library.flags["TimeOfDay"]
    end



    if library.flags["CustomAmbient"] then
      Lighting.Ambient = library.flags["AmbientColor"].Color
    end



    if library.flags["CustomAtmosphere"] then
      Lighting.Atmosphere.Glare = library.flags["GlareAmount"]
      Lighting.Atmosphere.Haze = library.flags["HazeAmount"]
    end



    if library.flags["CustomClouds"] then
      ws.Terrain.Clouds.Color = library.flags["CloudColor"].Color
      ws.Terrain.Clouds.Cover = library.flags["CloudCover"]
      ws.Terrain.Clouds.Density = library.flags["CloudDensity"]
    end



    if not Client.Character then 
      return 
    end


    if services:findfirstchild(Client.Character, "Humanoid") then
     hum = services:CloneReference(Client.Character["Humanoid"])
    end

 

    if library.flags["SpeedHack"] then
     if library.flags["SpeedBind"].active and hum then
       hum.WalkSpeed = library.flags["WalkSpeed"]
    end



    if library.flags["NoClip"] then
     if library.flags["NoClipBind"].active then
        noclipvalue(false)
     else
       noclipvalue(true)
     end
     else
       noclipvalue(true)
    end



    if library.flags["PeekLeftBind"].active and library.flags["PeekLeft"] then
        local root = services:findfirstchild(Client.Character, "HumanoidRootPart")
        Client.Character:SetPrimaryPartCFrame(root.CFrame * CFrame.Angles(math.rad(0), math.rad(95), math.rad(0)))
     elseif library.flags["PeekRightBind"].active and library.flags["PeekRight"] then
        local root = services:findfirstchild(Client.Character, "HumanoidRootPart")
        Client.Character:SetPrimaryPartCFrame(root.CFrame * CFrame.Angles(math.rad(0), math.rad(275), math.rad(0)))
    end



    if library.flags["JumpHack"] and hum then
      hum.JumpPower = library.flags["JumpHeight"]
    end


  end
 end)
end




--esp = window.esp_section:esp_preview({})
cheat.tabs.aiming.open_tab()
library:config_list_update()



for index, value in themes.preset do
	pcall(function()
		library:update_theme(index, value)
	end)
end



task.wait()
library.old_config = library:get_config()



Players.PlayerAdded:Connect(OnAdded)
Players.PlayerRemoving:Connect(OnRemoved)
RenderESP()



do -- Hooks


local SilentCall = nil
SilentCall = hookmetamethod(game, "__namecall", function(Self, ...)
    local args = {...}
    local NamecallMethod = getnamecallmethod()

    if not checkcaller() and Self == workspace and NamecallMethod == "Raycast" and Target ~= nil and library.flags["SilentAimToggle"] then
        local distance, targetMag = vector.magnitude(Target.Position - args[1]), vector.magnitude(Target.Position)
        local magicEquation = Target.Position + CreateVector(0,  distance / math.cos(targetMag) / distance  ,0)
        
        
        local equation = Vector3(0,  distance / math.abs(targetMag) * math.cos(.01) / targetMag  ,0)
        --args[1] = Ray.new(magicEquation, CFrame.lookAt(magicEquation, Target.Position).LookVector * 9e9)


        if library.flags["MagicBullet"] then
           args[1] = magicEquation
           args[2] = CFrame.lookAt(args[1], Target.Position).LookVector * 9e9

        if library.flags["InstantBullet"] then
           args[2] = CFrame.lookAt(args[1], Target.Position).LookVector * 9e9
        else
            args[2] = CFrame.lookAt(args[1], Target.Position).LookVector * args[2].Magnitude
        end


        args[3].RespectCanCollide = false
        

        else


        if library.flags["InstantBullet"] then
           args[2] = CFrame.lookAt(args[1], Target.Position).LookVector * 9e9
        else
            args[2] = CFrame.lookAt(args[1], Target.Position).LookVector * args[2].Magnitude
         end
        end


       return SilentCall(Self, table.unpack(args))
    end

    return SilentCall(Self, ...)
end)


end


library:indicator()
