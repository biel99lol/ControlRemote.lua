local imageUrl = "https://raw.githubusercontent.com/biel99lol/ControlRemote.lua/main/images/img_0d628507f4fc.png"
local fileName = "img_0d628507f4fc.png"

if not isfile(fileName) then
    writefile(fileName, game:HttpGet(imageUrl))
end

local getAsset = getcustomasset or getsynasset
assert(getAsset)

local parent = (gethui and gethui()) or game:GetService("CoreGui") or game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

local old = parent:FindFirstChild("CustomImageGui")
if old then
    old:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "CustomImageGui"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = parent

local image = Instance.new("ImageLabel")
image.AnchorPoint = Vector2.new(0.5, 0.5)
image.Position = UDim2.fromScale(0.5, 0.5)
image.Size = UDim2.fromOffset(300, 300)
image.BackgroundTransparency = 1
image.ScaleType = Enum.ScaleType.Fit
image.Image = getAsset(fileName)
image.Parent = gui
