local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
local Window = UILib.new("sjonks hub", game.Players.LocalPlayer.UserId, "Buyer")
local Category1 = Window:Category("Main", "http://www.roblox.com/asset/?id=8395621517")
local SubButton1 = Category1:Button("Autofarm", "http://www.roblox.com/asset/?id=8395747586")
local Section1 = SubButton1:Section("Section", "Left")
Section1:Button({
    Title = "Sell Everything",
    ButtonName = "Sell Your Fish",
    Description = "Sell's All of your Fish!",
    }, function(value)
        local args = {
        [1] = "SellEverything"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("CloudFrameShared"):WaitForChild("DataStreams"):WaitForChild("processGameItemSold"):InvokeServer(unpack(args))
    end)

Section1:Keybind({
    Title = "Instant Catch",
    Description = "When you are reeling a fish in, press the keybind to instantly catch",
    Default = Enum.KeyCode.Q,
    }, function(value)
    game:GetService("ReplicatedStorage"):WaitForChild("CloudFrameShared"):WaitForChild("DataStreams"):WaitForChild("FishCaught"):FireServer()
end)

