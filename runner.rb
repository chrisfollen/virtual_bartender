require_relative 'config/environment'
ActiveRecord::Base.logger = nil 

$prompt = TTY::Prompt.new(symbols: {marker: '🍸'})


def header
    title = Artii::Base.new(:font => 'standard') #cyberlarge, slant
    box = TTY::Box.frame(width: 90, height: 10, border: :light, align: :center) do
    "

#{title.asciify("CompuTender")}
    "
    end
    
      print box
      puts "\n"
end

def welcome
    system('clear')
    title = Artii::Base.new(:font => 'standard') #cyberlarge, slant
    box = TTY::Box.frame(width: 90, height: 24, border: :light, align: :center) do
    "


#{title.asciify("Welcome")}
#{title.asciify("To")}
#{title.asciify("CompuTender")}

    "
    end
    
      print box
      sleep(2.5)
      system "clear"
end

def name 
    name_in = $prompt.ask("What is your name?:")
    $current_user = User.find_by_name(name_in)
    system('clear')
    header 
    if $current_user
        puts "Welcome back, #{name_in}, you look like you need a drink!"
    else 
        $current_user = User.create(name: name_in)
        puts "Welcome, #{name_in}, you look like you need a drink!"
    end
    sleep(3.5)
    system "clear"
end

# Search by Liquor
# Search by Name
# Search by Keyword 
# Generate a Random Drink 
# Your Favorite Drinks 
# Exit

def bartender
    
    while
        system('clear')
        header   
        user_selection = $prompt.select("What would you like to do?:", ['Search By Liquor', 'Generate a Random Drink', 'See Your Favorite Drinks', 'Exit'])
     
        case user_selection 
    
        when 'Search By Liquor'
            system('clear')
            header
            spirit = $prompt.select('Which spirit suits your fancy???', ['Vodka', 'Gin', 'Rum', 'Tequila', 'Whiskey'])
            drinks = Drink.find_by_spirit(spirit)
            drink_names = drinks.map{|drink| drink.name}
            system('clear')
            header
            drink_choice = $prompt.select('Which drink sounds good?', drink_names)
            your_drink = Drink.find_by_name(drink_choice)
            puts "#{drink_choice}:"
            puts "#{your_drink.ingredients} \n \n "
            save_or_back = $prompt.select('Would you like to add this drink to your favorites?', ['Yeah!', 'Nah, search again'])
            if save_or_back == 'Yeah!'
                system('clear')
                header
                your_favorite_drinks_names = $current_user.favorite_drinks.map{|drink| drink.name}
                if your_favorite_drinks_names.include? your_drink.name 
                    $prompt.select("The #{your_drink.name} is already in your favorites list!", ['Return to Main Menu'])
                else 
                    Favorite.create(user: $current_user, drink: your_drink)
                    $prompt.select("The #{your_drink.name} has been added to your favorites list!", ['Return to Main Menu'])
                end
            end 



        when 'Generate a Random Drink'
            system('clear')
            header
            #do stuff

        when 'See Your Favorite Drinks'
            system('clear')
            header
            your_favorites_drinks = $current_user.favorite_drinks 
            if your_favorites_drinks.length == 0
                $prompt.select("You don't have any favorites yet, go find a drink!", ['Return to Main Menu'])
            else
                your_favorite_drink_names = your_favorites_drinks.map{|drink| drink.name}
                drink_choice = $prompt.select("Your favorite drinks:", your_favorite_drink_names)
                your_drink = Drink.find_by_name(drink_choice)
                puts "#{drink_choice}:"
                puts "#{your_drink.ingredients} \n \n "
                back = $prompt.select("All good?", ['Back to Main Menu'])
            end
    
        when 'Exit'
            exit!
        end
        
    end

end


welcome
header 
name
bartender


#binding.pry


