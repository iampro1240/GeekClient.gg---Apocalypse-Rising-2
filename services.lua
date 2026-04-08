local lib = {}
local camera = workspace.CurrentCamera
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
    return camera:WorldToViewportPoint(obj)
end


function lib:wtsp(obj)
    return camera:WorldToScreenPoint(obj)
end


function lib:framelimit(deltatime)
    local rendertime = 0   
    rendertime += deltatime
	if (rendertime < 1 / 60) then
		return
	end
	rendertime = 0
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
