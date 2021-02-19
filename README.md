# CompuTender
-> Your virtual bartender <-


## Table of Contents
- [General Info](#general-info)
- [Intro Video](#intro-video)
- [Technologies](#technologies)
- [Setup](#setup)
- [Features](#features)
- [Code Example](#code-example)
- [Status](#status)
- [Inspiration](#inspiration)
- [Contact](#contact)


## General Info
Computender is a CLI application that allows users to create an account, search for drinks through a variety of methods, and save their favorite drinks.  If you're feeling brave, try the random drink generator! :)


## Intro Video
[CompuTender](https://youtu.be/pfqM5xxp5A0)


# Technologies 
- Ruby - version 2.6.6
- ActiveRecord - version 6.0
- Sinatra
- Sinatra-ActiveRecord
- SQLite3


## Setup 
To run CompuTender, fork and clone this GitHub repository. Then run:

bundle install
rake db:migrate
rake db:seed


## Code Example

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
- Search for drinks by name, primary liquor, or keyword 
- See the ingredient lists for drinks
- Generate a random drink recommendation
- Create, access, and update a list of favorite drinks


## Status
This project is currently finished. We may introduce new features (e.g. making requests to an external API) or refactor existing code going forward.


## Inspiration
We built CompuTender as our Mod 1 CLI app project. Being the cocktail enthusiasts we are, we designed this app to be the perfect companion after a long day at coding bootcamp. 


## Contact
CompuTender was created by [Chris Follen](https://www.linkedin.com/in/chrisfollen/), [Jamon Dixon](https://www.linkedin.com/in/jamondixon/), and [Steven Yi](https://www.linkedin.com/in/stevenliuyi/)

Feel free to reach out!





