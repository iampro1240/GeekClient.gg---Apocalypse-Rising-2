local services = loadstring(game:HttpGet("https://raw.githubusercontent.com/iampro1240/GeekClient.gg---Apocalypse-Rising-2/refs/heads/main/services.lua"))()
local lib = {}
lib.__index = lib



local WS, ws = services:GetService("Workspace"), services:CloneReference(workspace)
local Players, ReplicatedStorage, RunService, TweenService, UserInputService, Lighting, Camera, Drawing, HttpService = services:GetService("Players"), services:GetService("ReplicatedStorage"), services:GetService("RunService"), services:GetService("TweenService"), services:GetService("UserInputService"), services:GetService("Lighting"), services:CloneReference(workspace.CurrentCamera), Drawing.new, services:GetService("HttpService")
local Client, ClientChar = Players.LocalPlayer, Players.LocalPlayer.Character



local tan, floor, rad, clamp, round = clonefunction(math.tan), clonefunction(math.floor), clonefunction(math.rad), clonefunction(math.clamp), clonefunction(math.round)
local New, hideui = clonefunction(Instance.new), gethui()



local FromRGB, hex, NewGradient, GradientSequence, GradientNumberKeypoint, GradientNumberSequence = clonefunction(Color3.fromRGB), clonefunction(Color3.fromHex), clonefunction(ColorSequence.new), clonefunction(ColorSequenceKeypoint.new), clonefunction(NumberSequenceKeypoint.new), clonefunction(NumberSequence.new)
local dim2, Vector2, Vector3, CreateVector = clonefunction(UDim2.new), clonefunction(Vector2.new), clonefunction(Vector3.new), clonefunction(vector.create)



writefile("ProggyClean1.ttf", game:HttpGet("https://github.com/bluescan/proggyfonts/raw/refs/heads/master/ProggyOriginal/ProggyClean.ttf"))
writefile("SmallestPixel71.ttf", game:HttpGet("https://github.com/sametexe001/luas/raw/refs/heads/main/fonts/windows-xp-tahoma.ttf"))
local ProggyClean = {
	name = "ProggyClean",
	faces = {
	  {
		name = "Regular",
		weight = 200,
		style = "normal",
		assetId = getcustomasset("ProggyClean1.ttf")
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



writefile("ProggyClean.ttf", HttpService:JSONEncode(ProggyClean))
writefile("SmallestPixel7.ttf", HttpService:JSONEncode(SmallestPixel7))
lib.ProggyClean = Font.new(getcustomasset("ProggyClean.ttf"), Enum.FontWeight.Regular)
lib.SmallestPixel7 = Font.new(getcustomasset("SmallestPixel7.ttf"), Enum.FontWeight.Regular)



function lib:DrawGui(self)
	lib[self] = {holder = New("BillboardGui"), chams = New("Highlight"), cache = {}, connection, colors = New("Folder"), borders = New("Folder"), chamsholder = New("Folder")}
	lib[self].holder.Name = self.Name
    lib[self].holder.Size = dim2(7, 0, 8, 0)
	lib[self].holder.Parent = hideui
	lib[self].holder.AlwaysOnTop = true
    lib[self].holder.StudsOffset = Vector3(0, .45)
    

    lib[self].chamsholder.Parent = lib[self].holder


	lib[self].chams.Name = self.Name
    lib[self].chams.Parent = lib[self].holder


    lib[self].colors.Parent = lib[self].holder
    lib[self].borders.Parent = lib[self].holder


    return lib[self]
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
    lib[self] = nil
end



function lib:ESPObject(self, lib2)
    local esp = lib:DrawGui(self)
    local cache = esp.cache
  


    function lib:returnflagcolor(color)
      return lib2.Flags[color].Color
    end


    function lib:returnflagtransparency(color)
      return lib2.Flags[color].Transparency
    end


    function lib:returngradientcolor(color, colortwo)
       return NewGradient{GradientSequence(0, lib2.Flags[color].Color), GradientSequence(1, lib2.Flags[colortwo].Color)}
    end


    function lib:returnGradientTransparency(color, colortwo)
       return GradientNumberSequence{GradientNumberKeypoint(0, lib2.Flags[color].Transparency), GradientNumberKeypoint(1, lib2.Flags[colortwo].Transparency)}
    end



   do
    lib:DrawText({
        Name = "PName", 
        Parent = esp.holder,
        TextSize = 9,
        AnchorPoint = Vector2(0, 0)
    })



    lib:DrawText({
        Name = "WeaponText", 
		Parent = esp.holder,
        TextSize = 9,
        AnchorPoint = Vector2(0, .05)
    })



    lib:DrawText({
        Name = "DistanceText", 
        Parent = esp.holder,
        TextSize = 9,
        AnchorPoint = Vector2(0, 0)
    })



    lib:DrawText({
        Name = "FlagText", 
        Parent = esp.holder,
        TextSize = 9,
        AnchorPoint = Vector2(0, 0)
    })



    lib:DrawFrame({
        Name = "Box",
        Parent = esp.holder,
        Color = FromRGB(0, 0, 0),
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Position = dim2(0.17, 0, 0.12, 0),
        Size = dim2(0.65, 0, 0.88, 0),
        Zindex = 0,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "HealthBar",
        Parent = esp.holder,
        Color = FromRGB(0, 0, 0),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(0.075, 0, 0.059, 0),
        Size = dim2(0.0049, 0, 0.87, 0),
        Zindex = 0,
        Rotation = 180,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "bar",
        Parent = esp.holder.HealthBar,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(1, 0, 1, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    esp.colors.Name = "colors"
	esp.colors.Parent = esp.holder.Box


    esp.borders.Name = "borders"
	esp.borders.Parent = esp.holder.Box



    lib:DrawFrame({
        Name = "topc",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "bottomc",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "leftc",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "rightc",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(1, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "top",
        Parent = esp.borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "bottom",
        Parent = esp.borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "left",
        Parent = esp.borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "right",
        Parent = esp.borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(1, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })

    

    lib:DrawGradient({
        Parent = esp.holder.HealthBar.bar,
        Rotation = -90,
        Color = ColorSequence.new{ColorSequenceKeypoint.new(0, FromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, FromRGB(255, 255, 255))}
    })


    
    for _, borderstroke in pairs(esp.borders:GetChildren()) do
       lib:DrawUIStroke({
        Parent = borderstroke
       })
    end
   end
   






    lib:DrawFrame({
        Name = "cornertopsideL",
        Parent = esp.borders,
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
        Name = "cornertopsideLC",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "cornertopsideL2",
        Parent = esp.borders,
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
        Name = "cornertopsidecL2C",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })




    lib:DrawFrame({
        Name = "cornertopsideR",
        Parent = esp.borders,
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
        Name = "cornertopsideRC",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(1, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })


    lib:DrawFrame({
        Name = "cornertopsideR2",
        Parent = esp.borders,
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
        Name = "cornertopsideRC2",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(1, 0, 0, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })





    lib:DrawFrame({
        Name = "cornerbottomsideL",
        Parent = esp.borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(0, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "cornerbottomsideLC",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })




    lib:DrawFrame({
        Name = "cornerbottomsideL2",
        Parent = esp.borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(0, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -28,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })


    lib:DrawFrame({
        Name = "cornerbottomsideLC2",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(0, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })





    lib:DrawFrame({
        Name = "cornerbottomsideR",
        Parent = esp.borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(1, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "cornerbottomsideRC",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(1, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })




    lib:DrawFrame({
        Name = "cornerbottomsideR2",
        Parent = esp.borders,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 1,
        Position = dim2(1, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = -25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



    lib:DrawFrame({
        Name = "cornerbottomsideRC2",
        Parent = esp.colors,
        Color = FromRGB(255, 255, 255),
        BackgroundTransparency = 0,
        BorderSizePixel = 0,
        Position = dim2(1, 0, 1, 0),
        Size = dim2(0, 0, 0, 0),
        Zindex = 25,
        Rotation = 0,
        AnchorPoint = Vector2(0, 0, 0)
    })



   
local UI = {
    GUI = esp.holder,
    PlayerName = esp.holder.PName,
    WeaponText = esp.holder.WeaponText,
    DistanceText = esp.holder.DistanceText,
    FlagText = esp.holder.FlagText,
   


    Box = esp.holder.Box,
    Top = esp.holder.Box.borders.top,
    Bottom = esp.holder.Box.borders.bottom,
    Left = esp.holder.Box.borders.left,
    Right = esp.holder.Box.borders.right,

    TopC = esp.holder.Box.colors.topc,
    BottomC = esp.holder.Box.colors.bottomc,
    LeftC = esp.holder.Box.colors.leftc,
    RightC = esp.holder.Box.colors.rightc,



    CornerTopSideL = esp.holder.Box.borders.cornertopsideL,
    CornerTopSideLC = esp.holder.Box.colors.cornertopsideLC,
    CornerTopSideL2 = esp.holder.Box.borders.cornertopsideL2,
    CornerTopSideL2C = esp.holder.Box.colors.cornertopsidecL2C,


    CornerTopSideR = esp.holder.Box.borders.cornertopsideR,
    CornerTopSideRC = esp.holder.Box.colors.cornertopsideRC,
    CornerTopSideR2 = esp.holder.Box.borders.cornertopsideR2,
    CornerTopSideRC2 = esp.holder.Box.colors.cornertopsideRC2,


    CornerBottomSideL = esp.holder.Box.borders.cornerbottomsideL,
    CornerBottomSideLC = esp.holder.Box.colors.cornerbottomsideLC,
    CornerBottomSideL2 = esp.holder.Box.borders.cornerbottomsideL2,
    CornerBottomSideLC2 = esp.holder.Box.colors.cornerbottomsideLC2,


    CornerBottomSideR = esp.holder.Box.borders.cornerbottomsideR,
    CornerBottomSideRC = esp.holder.Box.colors.cornerbottomsideRC,
    CornerBottomSideR2 = esp.holder.Box.borders.cornerbottomsideR2,
    CornerBottomSideRC2 = esp.holder.Box.colors.cornerbottomsideRC2,



    HealthBar = esp.holder.HealthBar,
    chams = esp.holder[self.Name]
}




esp.connection = RunService.PreRender:Connect(function(deltatime)
    services:framelimit(deltatime)
    
  if self.Character and services:findfirstchild(self.Character, "HumanoidRootPart") and services:findfirstchild(self.Character, "Humanoid") and services:findfirstchild(self.Character, "Equipped") then
    cache.character, cache.getName = self.Character, Players:GetPlayerFromCharacter(self.Character)
    cache.root, cache.humanoid, cache.weapon = cache.character["HumanoidRootPart"], cache.character["Humanoid"], services:findfirstchildofclass(cache.character["Equipped"], "Model")
    cache.iscornerbox, cache.isfullbox, cache.distance, cache.name, cache.healthcount = lib2.Flags["Boxes"] and lib2.Flags["BoxType"] == "Corner" and os, lib2.Flags["Boxes"] and lib2.Flags["BoxType"] == "Full" and os, round(UI.GUI.CurrentDistance) .. "st", cache.getName.Name .. " (@" .. cache.getName.DisplayName .. ")", round(cache.humanoid.Health) .. "HP"



  if cache.root ~= nil and cache.humanoid ~= nil then
    local pos, os = services:wtvp(cache.root.Position)
    local distancemath = floor((cache.root.Size.X - cache.root.Size.Y / self.character.WorldPivot.Position.Magnitude * cache.root.Position.Magnitude / pos.Magnitude * 10))
    --floor((cache.root.Size.X - cache.root.Size.Y * 1 / CameraVector.Magnitude * cache.root.Position.Magnitude / pos.Magnitude * 10))

    
    cache.getweapon = function()
      if cache.weapon then
        return "[" .. cache.weapon.Name .. "]"
      else
        return "[none]"
      end
    end
        


   do
    UI.GUI.Enabled = lib2.Flags["Enabled"] and os
    UI.GUI.Adornee = cache.root
	UI.GUI.StudsOffset = Vector3(0, -.03, 0)
    UI.GUI.Size = dim2(6, 0 * distancemath + 8, 7, 0 * distancemath + 5 / 1 + 2)
    UI.GUI.MaxDistance = lib2.Flags["MaxDistance"]
   end



   do
    UI.chams.Enabled = lib2.Flags["ChamsToggle"] and os
    UI.chams.Adornee = cache.character
    UI.chams.OutlineColor = returnflagcolor("ChamColor")
    UI.chams.OutlineTransparency = returnflagtransparency("ChamColor")
    UI.chams.FillColor = returnflagcolor("ChamColor2")
    UI.chams.FillTransparency = returnflagtransparency("ChamColor2") 
   end



   do
    UI.CornerTopSideL.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerTopSideLC.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerTopSideL2.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerTopSideL2C.BackgroundColor3 = returnflagcolor("Box_Color")


    UI.CornerTopSideR.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerTopSideRC.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerTopSideR2.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerTopSideRC2.BackgroundColor3 = returnflagcolor("Box_Color")


    UI.CornerBottomSideL.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerBottomSideLC.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerBottomSideL2.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerBottomSideLC2.BackgroundColor3 = returnflagcolor("Box_Color")


    UI.CornerBottomSideR.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerBottomSideRC.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerBottomSideR2.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.CornerBottomSideRC2.BackgroundColor3 = returnflagcolor("Box_Color")


    UI.CornerTopSideL.Visible = cache.iscornerbox
    UI.CornerTopSideLC.Visible = cache.iscornerbox
    UI.CornerTopSideL2.Visible = cache.iscornerbox
    UI.CornerTopSideL2C.Visible = cache.iscornerbox


    UI.CornerTopSideR.Visible = cache.iscornerbox
    UI.CornerTopSideRC.Visible = cache.iscornerbox
    UI.CornerTopSideR2.Visible = cache.iscornerbox
    UI.CornerTopSideRC2.Visible = cache.iscornerbox


    UI.CornerBottomSideL.Visible = cache.iscornerbox
    UI.CornerBottomSideLC.Visible = cache.iscornerbox
    UI.CornerBottomSideL2.Visible = cache.iscornerbox
    UI.CornerBottomSideLC2.Visible = cache.iscornerbox


    UI.CornerBottomSideR.Visible = cache.iscornerbox
    UI.CornerBottomSideRC.Visible = cache.iscornerbox
    UI.CornerBottomSideR2.Visible = cache.iscornerbox
    UI.CornerBottomSideRC2.Visible = cache.iscornerbox



    UI.CornerTopSideL.Size = dim2(.3, 0 * distancemath / .75, 0, 1)
    UI.CornerTopSideLC.Size = UI.CornerTopSideL.Size


    UI.CornerTopSideL2.Size = dim2(0, 1 * distancemath - -.75, .3, 0)
    UI.CornerTopSideL2C.Size = UI.CornerTopSideL.Size


    UI.CornerTopSideR.Size = dim2(-.3, 0 * distancemath / .75, 0, 1)
    UI.CornerTopSideRC.Size = UI.CornerTopSideR.Size
       

    UI.CornerTopSideR2.Size = dim2(0, 1 * distancemath - -.75, .3, 0)
    UI.CornerTopSideRC2.Size = UI.CornerTopSideR.Size


    UI.CornerBottomSideL.Size = dim2(0, 1 * distancemath - -.75, -.3, 0)
    UI.CornerBottomSideLC.Size = UI.CornerBottomSideL.Size


    UI.CornerBottomSideL2.Size = dim2(.3, 0 * distancemath - -.75, 0, -1)
    UI.CornerBottomSideLC.Size = UI.CornerBottomSideL2.Size


    UI.CornerBottomSideR.Size = dim2(0, 1 * distancemath - -.75, -.3, 0)
    UI.CornerBottomSideRC.Size = UI.CornerBottomSideR.Size


    UI.CornerBottomSideR2.Size = dim2(-.3, 0 * distancemath / .75, 0, -1)
    UI.CornerBottomSideRC2.Size = UI.CornerBottomSideR2.Size
   end



   do
    UI.Top.Size = dim2(1, 0 * distancemath / .75, 0, 1)
    UI.TopC.Size = UI.Top.Size
    UI.TopC.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.Top.Visible = lib2.Flags["Boxes"] and lib2.Flags["Box_Type"] == "Full" and os
    UI.TopC.Visible = lib2.Flags["Boxes"] and lib2.Flags["Box_Type"] == "Full" and os
        
        
    UI.Bottom.Size = dim2(1, 0 * distancemath / -.75, 0, -1)
    UI.BottomC.Size = UI.Bottom.Size
    UI.BottomC.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.Bottom.Visible = cache.isfullbox
    UI.BottomC.Visible = cache.isfullbox


    UI.Left.Size = dim2(0, 1 * distancemath - -.75, 1, 0)
    UI.LeftC.Size = UI.Left.Size
    UI.LeftC.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.Left.Visible = cache.isfullbox
    UI.LeftC.Visible = cache.isfullbox

        
    UI.Right.Size = dim2(0, 1 * distancemath - -.75, 1, 0)
    UI.RightC.Size = UI.Right.Size
    UI.RightC.BackgroundColor3 = returnflagcolor("Box_Color")
    UI.Right.Visible = cache.isfullbox
    UI.RightC.Visible = cache.isfullbox
   end

   
    do
        UI.PlayerName.Text = cache.name
        UI.PlayerName.Size = dim2(0.75, 0 * distancemath + .1, 0, .8 / distancemath / 8 - 18)
        UI.PlayerName.Position = dim2(0.13, 0, .12, 0)
        UI.PlayerName.Visible = lib2.Flags["Names"] and os
        UI.PlayerName.TextColor3 = returnflagcolor("Name_Color")
        UI.PlayerName.TextSize = lib2.Flags["TextSize"]
        UI.PlayerName.FontFace = lib.ProggyClean



        UI.DistanceText.Text = cache.distance
        UI.DistanceText.Visible = lib2.Flags["Distance"] and os
        UI.DistanceText.Size = dim2(0.75, 0 * distancemath - .1, 0, .8 / distancemath / 10 + 18)
        UI.DistanceText.Position = dim2(0.13, 0, .999, 0)
        UI.DistanceText.TextColor3 = returnflagcolor("Distance_Color")
        UI.DistanceText.TextSize = lib2.Flags["TextSize"]
        UI.DistanceText.FontFace = lib.ProggyClean



        UI.WeaponText.Text = cache.getweapon()
        UI.WeaponText.Visible = lib2.Flags["Weapon"] and os
        UI.WeaponText.Size = dim2(0.75, 0 * distancemath - .1, 0, .8 / distancemath / 25 + 48)
        UI.WeaponText.Position = dim2(0.13, 0, .999, 0)
        UI.WeaponText.TextColor3 = returnflagcolor("Weapon_Color")
        UI.WeaponText.TextSize = lib2.Flags["TextSize"]
        UI.WeaponText.FontFace = lib.ProggyClean



        UI.FlagText.Text = cache.healthcount
        UI.FlagText.Visible = lib2.Flags["Flag"] and os
        UI.FlagText.Size = dim2(0.08, 0 * distancemath - 38, 0, .042 / distancemath / 1 + 2)
        UI.FlagText.Position = dim2(.0999, 0, .15, 0)
        UI.FlagText.TextColor3 = returnflagcolor("FlagColor")
        UI.FlagText.TextSize = 12
        UI.FlagText.FontFace = lib.SmallestPixel7

   end



   do
    UI.HealthBar.Visible = lib2.Flags["Healthbar"] and os
    UI.HealthBar.bar.UIGradient.Color = returngradientcolor("Health_High", "Health_Low")


    UI.HealthBar.Size = dim2(0, 1 * distancemath - -.1, 1, 0)
    --dim2(0, 1 + distancemath / pos.Magnitude * (math.min(.01) / math.max(.05)) / distancemath + .001, .88, 0)
    UI.HealthBar.Position = dim2(.16, 0 , .12, 0)
    --dim2(.16, 0 / distancemath * clamp(2.2, 2, 2.5) - math.sign(.1), .12, 0)
    UI.HealthBar.bar.Size = dim2(1, 0, cache.humanoid.Health / cache.humanoid.MaxHealth, 0)
   end
   


   else

       lib:disconnect(self)

      end
    end
  end)
end


warn("GeekClient.GG - ESP Loaded")


return lib
