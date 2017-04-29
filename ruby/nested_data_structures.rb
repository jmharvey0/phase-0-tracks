coffee_shops = {
	matching_half: {
	visits_per_week: 1,
		drinks: {
			:hot => ["Cafe Au Lait", "Latte", "Chai"],
			:cold => ["Lemonade", "Water"]
		},
		food: [
			"Carrot muffin", 
			"Cookie", 
			"Breakfast sandwich"
		]
	}, 
 	philz: {
  		visits_per_week: 0,
		drinks: {
			:hot => ['Dirty Chai', 'Morrocan Coffee'],
			:cold => ['Iced Mint Mojito', 'Iced Tea']
		},
		food: [
			"Almond Croissant",
			"Scone",
				]
	}, 
	blue_bottle: {
		visits_per_week: 3,
		drinks: {
			:hot => ['Capuccino', 'Espresso'],
			:cold => ['NOLA Cold Brew', 'Chai Milk']
	},
		food: [
			"Yogurt parfait",
			"Lemon poppyseed log",
			"Ginger molases cookie"
		]
 	}

				}

# p coffee_shops[:blue_bottle][:visits_per_week]

# p coffee_shops[:philz][:food]

# p coffee_shops[:matching_half][:food][0]

# coffee_shops[:matching_half][:food].push("Expensive banana")
# p coffee_shops[:matching_half][:food]

coffee_shops[:blue_bottle][:drinks][:hot].push('Hot chocolate')
p coffee_shops[:blue_bottle][:drinks][:hot]