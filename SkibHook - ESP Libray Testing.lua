local lib = {}
local services = loadstring(game:HttpGet("https://raw.githubusercontent.com/wadawdwadwa-hub/GeekClient/refs/heads/main/services.lua"))()
lib.__index = lib


local WS, ws = services:GetService("Workspace"), services:CloneReference(workspace)
local Players, ReplicatedStorage, RunService, TweenService, UserInputService, Lighting, Camera, Drawing, HttpService = services:GetService("Players"), services:GetService("ReplicatedStorage"), services:GetService("RunService"), services:GetService("TweenService"), services:GetService("UserInputService"), services:GetService("Lighting"), services:CloneReference(workspace.CurrentCamera), Drawing.new, services:GetService("HttpService")
local Client, ClientChar = Players.LocalPlayer, Players.LocalPlayer.Character


local tan, floor, rad, clamp, round = services:CloneFunction(math.tan), services:CloneFunction(math.floor), services:CloneFunction(math.rad), services:CloneFunction(math.clamp), services:CloneFunction(math.round)
local New, hideui = services:CloneFunction(Instance.new), gethui()


local FromRGB, hex, NewGradient, GradientSequence, GradientNumberKeypoint, GradientNumberSequence = services:CloneFunction(Color3.fromRGB), services:CloneFunction(Color3.fromHex), services:CloneFunction(ColorSequence.new), services:CloneFunction(ColorSequenceKeypoint.new), services:CloneFunction(NumberSequenceKeypoint.new), services:CloneFunction(NumberSequence.new)
local dim2, Vector2, Vector3, CreateVector = services:CloneFunction(UDim2.new), services:CloneFunction(Vector2.new), services:CloneFunction(Vector3.new), services:CloneFunction(vector.create)



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



function lib:DrawGui(self)
	lib[self] = {holder = New("BillboardGui"), chams = New("Highlight"), cache = {}, connection, Colors = New("Folder"), Borders = New("Folder"), chamsholder = New("Folder")}
	lib[self].holder.Name = self.Name
    lib[self].holder.Size = dim2(7, 0, 7, 0)
	lib[self].holder.Parent = hideui
	lib[self].holder.AlwaysOnTop = true
    lib[self].holder.StudsOffset = Vector3(0, .45)
    

    lib[self].chamsholder.Parent = lib[self].holder


	lib[self].chams.Name = self.Name
    lib[self].chams.Parent = lib[self].holder


    lib[self].Colors.Parent = lib[self].holder
    lib[self].Borders.Parent = lib[self].holder


    lib[self].Skeleton = {
        Head = Drawing("Line");
        HumanoidRootPart = Drawing("Line");


        LeftUpperArm = Drawing("Line");
        LeftLowerArm = Drawing("Line");
        LeftHand = Drawing("Line");


        RightUpperArm = Drawing("Line");
        RightLowerArm = Drawing("Line");
        RightHand = Drawing("Line");


        LeftUpperLeg = Drawing("Line");
        LeftLowerLeg = Drawing("Line");
        LeftFoot = Drawing("Line");


        RightUpperLeg = Drawing("Line");
        RightLowerLeg = Drawing("Line");
        RightFoot = Drawing("Line");

    }


    return lib[self], lib[self].Skeleton
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
    lib[self].connection:Disconnect()
    task.wait()
    lib[self] = nil
end



local returnflag = function(library, flag)
    return library.flags[flag]
end



function lib:ESPObject(self, lib2)
    if self == Client then return end
    local esp = lib:DrawGui(self)
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



    lib:DrawText({
        Name = "Vis", 
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



local Colors = esp["Colors"]
local Borders = esp["Borders"]
Colors.Parent = esp.holder["Box"]
Borders.Parent = esp.holder["Box"]



local UI = {
    GUI = esp.holder;
    chams = esp.holder[self.Name];



    PName = esp.holder["PName"]["PName"];
    Distance = esp.holder["Flags"]["Distance"];
    Weapon = esp.holder["Flags"]["Weapon"];
    Vis = esp.holder["Flags"]["Vis"];



    Priority = esp.holder["UpperFlags"]["Priority"];
    Velocity = esp.holder["UpperFlags"]["Velocity"];
    WalkSpeed = esp.holder["UpperFlags"]["WalkSpeed"];



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

}




esp.connection = RunService.PreRender:Connect(function(deltatime)
    services:framelimit(deltatime)
  --if self.Character ~= nil and services:findfirstchild(self.Character, "HumanoidRootPart") and services:findfirstchild(self.Character, "Humanoid") then
  if self.Character ~= nil and services:findfirstchild(self.Character, "HumanoidRootPart") and services:findfirstchild(self.Character, "Humanoid") and services:findfirstchild(self.Character, "Equipped") then
    cache.character, cache.getName = self.Character, Players:GetPlayerFromCharacter(self.Character)


    cache.root, cache.humanoid = cache.character["HumanoidRootPart"], cache.character["Humanoid"]
    cache.iscornerbox, cache.isfullbox, cache.distance, cache.name, cache.healthcount, cache.weapon  = lib2.flags["Boxes"] and lib2.flags["Box_Type"] == "Corner" and os, lib2.flags["Boxes"] and lib2.flags["Box_Type"] == "Full" and os, round(UI.GUI.CurrentDistance) .. "st", cache.getName.Name .. " ($" .. cache.getName.DisplayName .. ")", round(cache.humanoid.Health), services:findfirstchildofclass(cache.character["Equipped"], "Model")


    cache.getweapon = function()
      if cache.weapon then
        return cache.weapon.Name
      else
        return "Hands"
      end
    end



  if self.Character and cache.root and cache.humanoid then
    local pos, os = services:wtvp(cache.root.Position)
    local scaleFactor = 15 / (pos.Z * tan(rad(cache.character.WorldPivot.Position.Magnitude * .5)) * 2) * 100
    local distancemath = floor((cache.root.Size.X - cache.root.Size.Z / cache.character.WorldPivot.Position.Magnitude * cache.root.Position.Magnitude / pos.Magnitude * (1/2)))
    --floor((pos.X^2 * cache.character.WorldPivot.Position.Magnitude / cache.root.Position.Magnitude - pos.Magnitude * pos.Z))
    --local distancemath = floor((cache.root.Size.X - cache.root.Size.Z / cache.character.WorldPivot.Position.Magnitude * cache.root.Position.Magnitude / pos.Magnitude * pos.Z))




-- GUI
   do
    UI.GUI.Enabled = lib2.flags["Enabled"] and os
    UI.GUI.Adornee = cache.root
	UI.GUI.StudsOffset = Vector3(0, cache.root.Size.Y^2 / -cache.root.Size.Y^2 + 1, 0)
    UI.GUI.Size = dim2(7, 0 * distancemath + 12, 7, 0 * distancemath + 12, 0)
    --dim2(cache.root.Size.X^2 - -cache.root.Size.X^2 / 1.8, 0, cache.root.Size.Y^2 - -cache.root.Size.Y^2 / .95, 0)
    UI.GUI.MaxDistance = returnflag(lib2, "MaxDistance")


   end



   do-- chams
    UI.chams.Enabled = returnflag(lib2, "ChamsToggle") and os
    UI.chams.Adornee = cache.character
    UI.chams.OutlineTransparency = returnflagtransparency("ChamColor")
    UI.chams.FillTransparency = returnflagtransparency("ChamColor2")
   end



-- full box
   do
    UI.TopB.Size = dim2(1, 0 / distancemath * scaleFactor + .001, 0, 1)
    UI.TopC.Size = UI.TopB.Size
    UI.TopB.Visible = cache.isfullbox
    UI.TopC.Visible = cache.isfullbox
        
        
    UI.BottomB.Size = dim2(1, 0 / distancemath * scaleFactor + .001, 0, -1)
    UI.BottomC.Size = UI.BottomB.Size
    UI.BottomB.Visible = cache.isfullbox
    UI.BottomC.Visible = cache.isfullbox


    UI.LeftB.Size = dim2(0, 1 * distancemath - -.001, 1, 0)
    --dim2(0, 1 * distancemath - -.1, 1, 0)
    --dim2(0, 1 * distancemath - -.75, 1, 0)
    UI.LeftC.Size = UI.LeftB.Size
    UI.LeftB.Visible = cache.isfullbox
    UI.LeftC.Visible = cache.isfullbox

        
    UI.RightB.Size = dim2(0, 1 * distancemath - -.001, 1, 0)
    --dim2(0, 1 * distancemath - -.75, 1, 0)
    UI.RightC.Size = UI.RightB.Size
    UI.RightB.Visible = cache.isfullbox
    UI.RightC.Visible = cache.isfullbox
   end

   
-- texts   
    do

        if library.target == self and library.flags["TargetColor"] then
            UI.PName.TextColor3 = returnflagcolor("Target_Color")
            UI.Distance.TextColor3 = returnflagcolor("Target_Color")
            UI.Weapon.TextColor3 = returnflagcolor("Target_Color")
            UI.chams.OutlineColor = returnflagcolor("Target_Color")
            UI.chams.FillColor = returnflagcolor("Target_Color")


            UI.TopC.BackgroundColor3 = returnflagcolor("Target_Color")
            UI.BottomC.BackgroundColor3 = returnflagcolor("Target_Color")
            UI.LeftC.BackgroundColor3 = returnflagcolor("Target_Color")
            UI.RightC.BackgroundColor3 = returnflagcolor("Target_Color")
            
        else

            UI.PName.TextColor3 = returnflagcolor("Name_Color")
            UI.Distance.TextColor3 = returnflagcolor("Distance_Color")
            UI.Weapon.TextColor3 = returnflagcolor("Weapon_Color")
            UI.chams.OutlineColor = returnflagcolor("ChamColor")
            UI.chams.FillColor = returnflagcolor("ChamColor2")


            UI.TopC.BackgroundColor3 = returnflagcolor("Box_Color")
            UI.BottomC.BackgroundColor3 = returnflagcolor("Box_Color")
            UI.LeftC.BackgroundColor3 = returnflagcolor("Box_Color")
            UI.RightC.BackgroundColor3 = returnflagcolor("Box_Color")
        end


        UI.PName.Text = cache.name
        UI.PName.Size = dim2(0.751, 0 * distancemath + .1, 0, .8 / distancemath / 8 - 20)
        UI.PName.Position = dim2(0.5, 0, 0.1, 0)
        UI.PName.Visible = returnflag(lib2, "Names") and os
        UI.PName.TextSize = lib2.flags["TextSize"]
        UI.PName.FontFace = lib.SmallestPixel7



        UI.Distance.Text = cache.distance
        UI.Distance.Visible = returnflag(lib2, "Distance") and os
        UI.Distance.Size = dim2(0.75, 0 * distancemath - .1, 0, 1 / distancemath / 5 + 20)
        UI.Distance.Position = dim2(1, 0, 1, 0)
        UI.Distance.TextSize = lib2.flags["TextSize"]
        UI.Distance.FontFace = lib.SmallestPixel7



        UI.Weapon.Text = cache.getweapon()
        UI.Weapon.Visible = returnflag(lib2, "Weapon") and os
        UI.Weapon.Size = dim2(0.75, 0 * distancemath - .1, 0, 1 / distancemath / 9 + 48)
        UI.Weapon.Position = dim2(1, 0, 1, 0)
        UI.Weapon.TextSize = returnflag(lib2, "TextSize")
        UI.Weapon.FontFace = lib.SmallestPixel7



        UI.Vis.Text = "Visible"
        UI.Vis.Visible = returnflag(lib2, "Visible") and os
        UI.Vis.Size = dim2(0.75, 0 * distancemath - .1, 0, 1 / distancemath / 30 + 75)
        UI.Vis.Position = dim2(1, 0, 1, 0)
        UI.Vis.TextColor3 = returnflagcolor("Visible_Color")
        UI.Vis.TextSize = returnflag(lib2, "TextSize")
        UI.Vis.FontFace = lib.SmallestPixel7



        UI.Flags.Size = dim2(.371, 0, .8, 0)
        UI.Flags.Position = dim2(0, 0, .52, 0)


        UI.UpperFlags.Size = dim2(.34, 0, .48, 0)
        UI.UpperFlags.Position = dim2(.48, 0, -.35, 0)



        UI.Priority.Text = library.get_priority(self)
        UI.Priority.Visible = returnflag(lib2, "Priority") and os
        UI.Priority.Size = dim2(0, 1 / distancemath * 15 + 30, 0, 1 / distancemath / 5 + 10)
        UI.Priority.Position = dim2(1, 0, 1, 0)
        UI.Priority.TextColor3 = returnflagcolor("Priority_Color")
        UI.Priority.TextSize = returnflag(lib2, "TextSize")
        UI.Priority.FontFace = lib.SmallestPixel7



        UI.Velocity.Text = "      Vehicle: " .. tostring(cache.humanoid.Sit)
        UI.Velocity.Visible = returnflag(lib2, "Velocity") and os
        UI.Velocity.Size = dim2(0, 1 / distancemath * 15 + 30, 0, 1 / distancemath / 20 + 40)
        UI.Velocity.Position = dim2(1, 0, 1, 0)
        UI.Velocity.TextColor3 = returnflagcolor("Velocity_Color")
        UI.Velocity.TextSize = returnflag(lib2, "TextSize")
        UI.Velocity.FontFace = lib.SmallestPixel7



        UI.WalkSpeed.Text = "      WS: " .. tostring(cache.humanoid.WalkSpeed)
        UI.WalkSpeed.Visible = returnflag(lib2, "WalkSpeedText") and os
        UI.WalkSpeed.Size = dim2(0, 1 / distancemath * 15 + 30, 0, 1 / distancemath / 60 + 70)
        UI.WalkSpeed.Position = dim2(1, 0, 1, 0)
        UI.WalkSpeed.TextColor3 = returnflagcolor("WalkSpeed_Color")
        UI.WalkSpeed.TextSize = returnflag(lib2, "TextSize")
        UI.WalkSpeed.FontFace = lib.SmallestPixel7

    end


-- healthbar
   do


    local health
    if cache.humanoid == nil then 
        return
    end


    health = cache.humanoid.Health / cache.humanoid.MaxHealth
    UI.HealthBar.Visible = returnflag(lib2, "Healthbar") and os
    UI.HealthBar.Size = dim2(0, 1 + distancemath + -2.5 - distancemath + math.abs(.08), .88, 0)
    UI.HealthBar.Position = dim2(.16, 0 * scaleFactor + -4.5 - distancemath + math.abs(3.8) / math.pi - .0001, .12, 0)
    --dim2(.16, 0 * scaleFactor + -2.5 - distancemath + math.abs(.08), .12, 0)
    UI.HealthBar.Rotation = 180
    UI.Bar.BackgroundColor3 = returnflagcolor("Health_High")
    UI.Bar.Size = dim2(1, 0, health, 0)



    if health < .25 then
        UI.Bar.BackgroundColor3 = returnflagcolor("Health_Low")
    elseif health < .55 then
        UI.Bar.BackgroundColor3 = returnflagcolor("Health_Medium")
    elseif health < 1 then
        UI.Bar.BackgroundColor3 = returnflagcolor("Health_High")
    end
   end
   


   else

       lib:disconnect(self)

      end
    end
  end)
end




return lib
