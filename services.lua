local lib = {}
lib.__index = lib


function lib:CloneFunction(obj)
    return clonefunction(obj)
end


function lib:CloneReference(obj)
    return cloneref(obj)
end


function lib:GetService(obj)
    return game:GetService(obj)
end


function lib:wtvp(obj)
    return workspace.CurrentCamera:WorldToViewportPoint(obj)
end


function lib:wtsp(obj)
    return workspace.CurrentCamera:WorldToScreenPoint(obj)
end


function lib:findfirstchild(arg1, arg2)
    return arg1:FindFirstChild(arg2)
end


function lib:findfirstchildofclass(arg1, arg2)
    return arg1:FindFirstChildOfClass(arg2)
end


function lib:waitforchild(arg1, arg2)
    return arg1:WaitForChild(arg2)
end


function lib:framelimit(deltatime)
    local rendertime = 0   
    rendertime += deltatime
	if (rendertime < 1 / 60) then
		return
	end
	rendertime = 0
end


function lib:returnflag(library, flag)
    return library.flags[flag]
end


function lib:returnflagcolor(color)
    return library.flags[color].Color
end


function lib:returnflagtransparency(color)
    return library.flags[color].Transparency
end


function lib:returngradientcolor(color, colortwo)
    return NewGradient{GradientSequence(0, library.flags[color].Color), GradientSequence(1, library.flags[colortwo].Color)}
end


function lib:returnGradientTransparency(color, colortwo)
    return GradientNumberSequence{GradientNumberKeypoint(0, library.flags[color].Transparency), GradientNumberKeypoint(1, library.flags[colortwo].Transparency)}
end


function lib:GarbageCollection(func)
for i, v in next, getgc(true) do
if typeof(v) ~= "function" then
continue
end
local info = debug.getinfo(v)
if info.name == func then
   return v
  end
 end
end



return lib
