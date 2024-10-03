local button = script.Parent 
local rarityEvent = game:GetService("ReplicatedStorage"):WaitForChild("RarityPicked")  -- Reference the BindableEvent

local function onButtonActivated()
	print("Button activated!")

	-- Define rarity tiers and probabilities
	local rarities = {
		{tier = "common", chance = 0.40},      -- 40% chance
		{tier = "uncommon", chance = 0.30},    -- 30% chance
		{tier = "rare", chance = 0.14},        -- 14% chance
		{tier = "epic", chance = 0.10},        -- 10% chance
		{tier = "legendary", chance = 0.05},   -- 5% chance
		{tier = "mythic", chance = 0.01}       -- 1% chance
	}

	-- Create list of fruits for each rarity
	local Fruits = {
		common = {"apple", "banana", "orange", "grape", "strawberry", "watermelon", "pear", "blueberry"},
		uncommon = {"kiwi", "mango", "pineapple", "passionfruit", "guava", "pomegranate"},
		rare = {"dragonfruit", "starfruit", "lychee", "persimmon", "durian"},
		epic = {"rambutan", "salak", "buddhas hand", "jabuticaba"},
		legendary = {"hala fruit", "ackee", "horned melon"},
		mythic = {"blue java banana", "coco de mer"}
	}

	-- Function to get a random rarity based on probabilities
	local function RNG()
		local roll = math.random()  -- Random number between 0 and 1
		local cumulative = 0

		for _, rarity in ipairs(rarities) do
			cumulative = cumulative + rarity.chance
			if roll <= cumulative then
				return rarity.tier  -- Return the rarity that matches the roll
			end
		end
	end

	-- Get the selected rarity
	local selectedRarity = RNG()
	print("Selected Rarity: " .. selectedRarity) 

	-- Select a random fruit based on the rarity
	local selectedFruit = Fruits[selectedRarity][math.random(#Fruits[selectedRarity])]

	print("Selected Fruit: " .. selectedFruit)

	-- Fire the event after calculating the fruit and rarity
	rarityEvent:Fire(selectedRarity, selectedFruit)
end

button.MouseButton1Click:Connect(onButtonActivated)  -- Use MouseButton1Click for ImageButton activation
