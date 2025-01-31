repeat wait() until game:IsLoaded()







wait(5)
local function pick1()
local args = {
    [1] = "1"
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.select_roguelike_option:InvokeServer(unpack(args))
end

local function pick2()
local args = {
    [1] = "3"
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.select_roguelike_option:InvokeServer(unpack(args))
end

local function pick3()
local args = {
    [1] = "2"
}

game:GetService("ReplicatedStorage").endpoints.client_to_server.select_roguelike_option:InvokeServer(unpack(args))
end


wait(3)
while wait() do
  wait()
  repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.RoguelikeSelect.Enabled == true
wait(0.5)
  if game:GetService("Players").LocalPlayer.PlayerGui.Waves.HealthBar.WaveNumber.Text <= "35" then

  local title1 = game:GetService("Players").LocalPlayer.PlayerGui.RoguelikeSelect.Main.Main.Items:GetChildren()[3].bg.Main.Title.TextLabel.Text
local title2 = game:GetService("Players").LocalPlayer.PlayerGui.RoguelikeSelect.Main.Main.Items:GetChildren()[4].bg.Main.Title.TextLabel.Text
local title3 = game:GetService("Players").LocalPlayer.PlayerGui.RoguelikeSelect.Main.Main.Items:GetChildren()[5].bg.Main.Title.TextLabel.Text

s1 = 0
s2 = 0
s3 = 0
ss1 = 0
ss2 = 0
ss3 = 0


for i,v in pairs(buff2) do
if title1 ~= v then
s1 = s1 + 1
end
if v == title1 then
ss1 = s1
end
end

for i,v in pairs(buff2) do
if title2 ~= v then
s2 = s2 + 1
end
if v == title2 then
ss2 = s2
end
end

for i,v in pairs(buff2) do
if title3 ~= v then
s3 = s3 + 1
end
if v == title3 then
ss3 = s3
end
end


if ss1 == 0 and title1 ~= "+ New Path" then
  ss1 = 100
end
if ss2 == 0 and title2 ~= "+ New Path" then
  ss2 = 100
end
if ss3 == 0 and title3 ~= "+ New Path" then
  ss3 = 100
end

if ss1 < ss2 and ss1 < ss3 then
pick1()
end
if ss2 < ss1 and ss2 < ss3 then
pick2()
end
if ss3 < ss1 and ss3 < ss2 then
pick3()
end
  
end

if game:GetService("Players").LocalPlayer.PlayerGui.Waves.HealthBar.WaveNumber.Text > "35" then

local title1 = game:GetService("Players").LocalPlayer.PlayerGui.RoguelikeSelect.Main.Main.Items:GetChildren()[3].bg.Main.Title.TextLabel.Text
local title2 = game:GetService("Players").LocalPlayer.PlayerGui.RoguelikeSelect.Main.Main.Items:GetChildren()[4].bg.Main.Title.TextLabel.Text
local title3 = game:GetService("Players").LocalPlayer.PlayerGui.RoguelikeSelect.Main.Main.Items:GetChildren()[5].bg.Main.Title.TextLabel.Text

s1 = 0
s2 = 0
s3 = 0
ss1 = 0
ss2 = 0
ss3 = 0


for i,v in pairs(buff1) do
if title1 ~= v then
s1 = s1 + 1
end
if v == title1 then
ss1 = s1
end
end

for i,v in pairs(buff1) do
if title2 ~= v then
s2 = s2 + 1
end
if v == title2 then
ss2 = s2
end
end

for i,v in pairs(buff1) do
if title3 ~= v then
s3 = s3 + 1
end
if v == title3 then
ss3 = s3
end
end


if ss1 == 0 and title1 ~= "+ New Path" then
  ss1 = 100
end
if ss2 == 0 and title2 ~= "+ New Path" then
  ss2 = 100
end
if ss3 == 0 and title3 ~= "+ New Path" then
  ss3 = 100
end

if ss1 < ss2 and ss1 < ss3 then
pick1()
end
if ss2 < ss1 and ss2 < ss3 then
pick2()
end
if ss3 < ss1 and ss3 < ss2 then
pick3()
end
  
end
  wait(5)
end
