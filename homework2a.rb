
def intro
	puts "========================================"
	puts "|Welcome to Rock! Paper! Scissors! Game|"
	puts "|   Are you ready to beat Computer?    |"
	puts "|          Let's get started!          |"
	puts "========================================"
end

def get_user_input
	option = ["R","P","S"]
	begin
	puts "Choose one and Type it down."
	puts "R for Rock, P for Paper, S for Scissors."
	user_input = gets.chomp.upcase
	end until option.include? (user_input)
	puts "You choose #{user_input}"
	return user_input
end

def get_computer_input
	option = ["R","P","S"]
	computer_input = option.sample
	puts "Computer choose #{computer_input}"
	return computer_input
end

def rules(user_input,computer_input)
    if user_input == computer_input
      puts ">> You two are Tie!"
    elsif (user_input == "R") && (computer_input == "P")
      puts ">> Paper beats Rock, You Lose!"
    elsif (user_input == "R") && (computer_input == "S")
      puts ">> Rock beats Scissors, You Win!"
    elsif (user_input == "P") && (computer_input == "R")
      puts ">> Paper beats Rock, You Win!"
    elsif (user_input == "P") && (computer_input == "S")
      puts ">> Scissors beats Paper, You Lose!"
    elsif (user_input == "S") && (computer_input == "R")
      puts ">> Rock beats Scissors, You Lose!"
    else
    puts ">> Scissors beats Paper, You Win!"
    end
end

def continue
	begin
		puts "Want to play again? Y / N "
		replay = gets.chomp.upcase
	end until ["Y","N"].include? (replay)
	return replay
end

def goodbye
	puts "==============================" 
	puts "|Thanks for playing the game.|"
	puts "|         Goodbye!           |"
	puts "=============================="
end


#------------------Main program---------------------------------------

intro
begin
	user_input = get_user_input
	computer_input = get_computer_input
	rules(user_input,computer_input)
	replay = continue
end until replay == "N"
goodbye









