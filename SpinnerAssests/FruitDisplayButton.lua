local button = script.Parent
local rarityEvent = game:GetService("ReplicatedStorage"):WaitForChild("RarityPicked")  -- Reference the BindableEvent

-- Function to update the FRUIT button text when the event is triggered
local function onRarityReceived(rarity, fruit)
	button.Text = fruit .. " (" .. rarity .. ")"  -- Set button text to display fruit and rarity
	print("Rarity: " .. rarity .. ", Fruit: " .. fruit)
end

-- Connect the BindableEvent to the function
rarityEvent.Event:Connect(onRarityReceived)
