local button = script.Parent

local function onButtonActivated()
	print("Button activated!")

	local j = "common"  -- Local variable to store rarity

	-- Define rarity tiers and their probabilities
	local rarities = {
		{tier = "common", chance = 0.10},      -- 10% chance
		{tier = "uncommon", chance = 0.20},    -- 20% chance
		{tier = "rare", chance = 0.30},        -- 30% chance
		{tier = "epic", chance = 0.20},        -- 20% chance
		{tier = "legendary", chance = 0.15},   -- 15% chance
		{tier = "mythic", chance = 0.05}       -- 5% chance
	}
	-- Create list of fruits for each rarity
	local Fruits = {
		common = {"apple", "banana", "orange", "grape", "strawberry", "watermelon", "pear", "blueberry"},
		uncommon = {"kiwi", "mango", "pineapple", "passionfruit", "guava", "pomegranate"},
		rare = {"dragonfruit", "starfruit", "lychee", "persimmon", "durian"},
		epic = {"rambutan", "salak", "buddhas_hand", "jabuticaba"},
		legendary = {"hala_fruit", "ackee", "horned_melon"},
		mythic = {"blue_java_banana", "coco_de_mer"}
	}
	
	-- Function to get a random rarity based on defined probabilities
	local function RNG()
		local roll = math.random()  -- Random number between 0 and 1
		local cumulative = 0

		for _, rarity in ipairs(rarities) do
			cumulative = cumulative + rarity.chance
			if roll <= cumulative then
				return rarity.tier  -- Return the rarity that matches the random roll
				return Fruits.
			end
		end
	end

	

	local selectedRarity = RNG()  -- Get the selected rarity
	print(selectedRarity)          -- Print the selected rarity
end

button.Activated:Connect(onButtonActivated)
