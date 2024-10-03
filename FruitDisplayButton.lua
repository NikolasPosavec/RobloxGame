local button = script.Parent
local rarityEvent = game:GetService("ReplicatedStorage"):WaitForChild("RarityPicked")  -- Reference the BindableEvent

-- Function to update the FRUIT button text when the event is triggered
local function onRarityReceived(rarity)
	button.Text = rarity  -- Set the button text to the received rarity
	print("Rarity received: " .. rarity)
end

-- Connect the BindableEvent to the function
rarityEvent.Event:Connect(onRarityReceived)
