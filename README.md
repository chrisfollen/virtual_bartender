# CompuTender
-> Your virtual bartender <-


## Table of Contents
- [General Info](#general-info)
- [Intro Video](#intro-video)
- [Technologies](#technologies)
- [Setup](#setup)
- [Features](#features)
- [Status](#status)
- [Inspiration](#inspiration)
- [Contact](#contact)


## General Info
Computender is a ClI application that allows users to create an account, search for new drinks by a variety of methods (by name, primary liquor, keyword, etc) and save their favorite drinks.  If you're feeling brave, try the random drink generator :)


## Intro Video
[CompuTender](<youtube_link_here>)


# Technologies 
- Ruby - version 2.6.6
- ActiveRecord - version 6.0
- Sinatra
- Sinatra-ActiveRecord
- SQLite3


## Setup 
To run this project, install it locally by forking and cloning this GitHub repository. Then run:

bundle install
rake db:migrate
rake db:seed


## Code Examples

```ruby
def save_to_favorites drink 
    system('clear')
    header
    your_favorite_drinks_names = $current_user.favorite_drinks.map{|drink| drink.name}
    if your_favorite_drinks_names.include?(drink.name) 
        $prompt.select("The #{drink.name} is already in your favorites list!", ['Return to Main Menu'])
    else 
        Favorite.create(user: $current_user, drink: drink)
        $prompt.select("The #{drink.name} has been added to your favorites list!", ['Return to Main Menu'])
    end
end
```

## Features
- Create a user with a customizable Favorites list
- Search for drinks by name, primary liquor, or keyword 
- See drink ingredients
- Generate a random drink
- Access and update a user's Favorites list


## Status
This project is finished with the possibility of expanding the functionality or refactoring the code


## Inspiration
This project was build for our Flatiron School Mod 1 CLI app. Being cocktail enthusiasts, and studying in an intensive coding bootcamp, we all needed a way to find cocktail recipes and recommendation more quickly at the end of a long day.


## Contact
CompuTender was created by [Chris Follen](https://www.linkedin.com/in/chrisfollen/), [Jamon Dixon](https://www.linkedin.com/in/jamondixon/), and [Steven Yi](https://www.linkedin.com/in/stevenliuyi/)

Feel free to reach out!



