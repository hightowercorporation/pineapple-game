character = ""
race_option = 0
race = ""
option_history = ""
option_counter = 0

puts "Welcome to Batman: Arkham Asylum!"
puts "What do you want to do!"

puts "Enter character name:"
character = gets.chomp

loop if race.between?(1,4) 
	puts "Enter a race:"
	puts "1: Elf"
	puts "2: Human"
	puts "3: Dwarf"
	puts "4: Pixie"
	race = gets.chomp
	redo 
end

option = ""
until option == "quit"
	puts "\n""Options: look around, smack a prisoner, run away, quit"
	option = gets.chomp
	case option
	when "look around"
		puts "You see a bunch of angry prisoners and the Joker!"
	when "smack a prisoner"
		puts "Batman: \"Bats can't run. \""
	when "run away"
		puts "A prisoner punches you in the face."
		puts "Prisoner: \"Quit messin' around.\""
	end
option_history[]
end
