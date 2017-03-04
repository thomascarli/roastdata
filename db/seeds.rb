UserType.create!(name:'Admin')
UserType.create!(name:'Standard')

@user1 = User.create(
	email: "seb@test.com",
	password: "asdfasdf",
	password_confirmation: "asdfasdf",
	first_name: 'seb',
	last_name: 'vez',
	uid:'123456789',
	provider: 'test_seeds')

@user2 = User.create(
	email: "tom@test.com",
	password: "asdfasdf",
	password_confirmation: "asdfasdf",
	first_name: 'Tom',
	last_name: 'Carli',
	uid: '987654321',
	provider: 'test_seeds')

puts "2 Users created" + "\n\n"
puts "look at config/db/seeds.rb for user names & passwords " + "\n\n"

 20.times do |roast|
 	Roast.create!(
		roast_method: "roastyToasty-#{roast}",
		date_of_roast: Date.today,
		bean_species: 'Arabica',
		roast_duration: 720,
		time_of_roast: Date.today,
		roast_profile: 'Medium',
		avg_temp_roast: 450,
		raw_weight: 90,
		storage: 'Jar',
		bean_country_origin: 'Sumatra',
		bean_varietal_name: 'Blue thunder',
		user_id: @user2.id)
 end

 20.times do |brew|

		Brew.create!(
			roast_id:     "#{brew}",
			brew_method: 'Chemex',
			time_of_brew:  Date.today,
			qty_of_beans: 25,
			bitterness:   4,
			complexity:   7,
			acidity:      5,
			overall:      8,
			texture:      'smooth',
			comments:     'rockin',
			user_id:      @user2.id,
			date_of_brew: Date.today)
 end

puts "20 Roasts have been created!"
puts "20 Brews have been created!"
 






