@user1 = User.create(email: "seb@test.com", password: "asdfasdf", password_confirmation: "asdfasdf") 
@user2 = User.create(email: "tom@test.com", password: "asdfasdf", password_confirmation: "asdfasdf")
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

 puts "20 Roasts have been created!"

 






