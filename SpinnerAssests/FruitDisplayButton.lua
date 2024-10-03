local button = script.Parent
local rarityEvent = game:GetService("ReplicatedStorage"):WaitForChild("RarityPicked")  -- Reference the BindableEvent
local imageLabel = button.Parent:WaitForChild("ImageLabel")  -- Reference the ImageLabel

-- Function to update the FRUIT button text and image when the event is triggered
local function onRarityReceived(rarity, fruit)
	button.Text = fruit .. " (" .. rarity .. ")"  -- Set button text to display fruit and rarity
	print("Rarity received: " .. rarity .. ", Fruit: " .. fruit)

	-- Set the image based on the selected fruit
	local imageId = ""

	-- Map each fruit to its corresponding image ID
	local fruitImages = {
		apple = "rbxassetid://75535516109775",
		banana = "rbxassetid://88123317426357",
		orange = "rbxassetid://118549662096909",
		grape = "rbxassetid://94633112248699",
		strawberry = "rbxassetid://71459642240727",
		watermelon = "rbxassetid://84957700980788",
		pear = "rbxassetid://83094053438021",
		blueberry = "rbxassetid://131811265257874",
		kiwi = "rbxassetid://97699229216576",
		mango = "rbxassetid://86642389861351",
		pineapple = "rbxassetid://128224685847935",
		passionfruit = "rbxassetid://93460739394844",
		guava = "rbxassetid://123397270056526",
		pomegranate = "rbxassetid://80388368384661",
		dragonfruit = "rbxassetid://117022892762565",
		starfruit = "rbxassetid://118045539526383",
		lychee = "rbxassetid://108862799217872",
		persimmon = "rbxassetid://83313156396547",
		durian = "rbxassetid://123723760584905",
		rambutan = "rbxassetid://85803373389693",
		salak = "rbxassetid://72191394133391",
		buddhas_hand = "rbxassetid://91211191381194",
		jabuticaba = "rbxassetid://123830195156308",
		hala_fruit = "rbxassetid://108838829115139",
		ackee = "rbxassetid://111079406783417",
		horned_melon = "rbxassetid://124941031635449",
		blue_java_banana = "rbxassetid://134640398251404",
		coco_de_mer = "rbxassetid://95190054171687"
	}

	-- Set the image ID based on the selected fruit
	if fruitImages[fruit] then
		imageId = fruitImages[fruit]
	end

	-- Update the ImageLabel with the corresponding image
	imageLabel.Image = imageId
end

-- Connect the BindableEvent to the function
rarityEvent.Event:Connect(onRarityReceived)
