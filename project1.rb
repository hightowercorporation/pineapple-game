#variables 
character = ""
race_option = 0
race = ""
option_history = ""
option_counter = 0
bln_resting = false
races = {"1": "Elf", "2": "Human", "3": "Dwarf", "4": "Pixie" }


#welcome the user to the game
puts "Welcome to Pineapple Game: You are a pineapple!"
#ask the user what they want to be called 
puts "Enter character name:"
#retrieve the user input as a string and assign to character variable
character = gets.chomp
#Welcome the user with their name
puts "\n""Welcome #{character}!, you have now entered a pineapple world of mystery!" "\n"
#Select a race
while not race_option.to_i.between?(1,4) do
	puts "\n""Enter a race (pick a number):"
	races.each do |key, value| puts "#{key}:#{value}" end
	# convert the user input to an integer
	race_option = gets.chomp
	#check the user input to make sure it is between 1 and 4
	if not race_option.to_i.between?(1,4) then
		puts "\n""Please enter a number between 1 and 4"
	end
end

	#Tell the user what race they selected
puts race_option
puts "\n""You selected the race: ", races[race_option.to_s]
	puts races[race_option.to_s]
	
	puts races.values[0]
	
option = ""
while not option == "exit"  do
	while bln_resting do
		puts "You're still resting, do you want to stand up?"
		option = gets.chomp
		case option 
		when /stand/
			bln_resting = false
 		else
		end
	end
	
	puts "\n""Options: eat a pineapple, smile at a pineapple, rest, exit"
	option = gets.chomp
	
	case option
	when /eat/ 
		puts "you eat a pineapple"
		File.open('project1.deadpineapple.image.rb', 'r') do |f1|  
		while line = f1.gets  
			puts line  
		end 	 
	end	
	when /smile/
		puts "You smile at the pineapple"
		File.open('project1.cutepineapple.image.rb', 'r') do |f1|  
		while line = f1.gets  
			puts line  
		end  
	end
	when /rest/ 
		puts "You sit down and rest your laurels"
		bln_resting = true
		File.open('project1.pineapple.image.rb', 'r') do |f1|  
		while line = f1.gets  
			puts line  
		end 
	end
	when /exit/
		File.open('project1.class.image.rb', 'r') do |f1|  
		while line = f1.gets  
			puts line  
		end  
		puts "\n""GAME OVER DUDE"
	end
	else
	end
end