require_relative 'config/environment'

# Cli.new.start_game

# $prompt = TTY::Prompt.new

# def welcome
#     system('clear') 
#     puts "Welcome to:"

#     #Font = TTY::Font.new(:starwars)
#     #Puts pastel.cyan(font.write(“CompuTender”))    
#     title = Artii::Base.new(:font => 'slant')
#     puts title.asciify("CompuTender")
# end 

# def name 
#     your_name = $prompt.ask("What is your name?:")
#     puts "Welcome #{your_name}, you look like you need a drink!"
# end

# def spirit
#     $prompt.select('Which spirit suits your fancy???', ['Vodka', 'Gin', 'Rum', 'Tequila', 'Whiskey'])
# end

# def bartender(spirit)
#     drinks = Drink.all.filter{|drink| drink.spirit == spirit}
#     drink_names = drinks.map{|drink| drink.name}
#     puts "Howsabout a:"
#     drink_names.each{|name| puts name}
# end





# welcome
# name
# bartender(spirit)



binding.pry



