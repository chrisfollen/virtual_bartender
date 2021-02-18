Drink.destroy_all
User.destroy_all 
Favorite.destroy_all


Drink.create(name: 'Screwdriver', spirit: 'Vodka', ingredients: 'Vodka, orange juice', keywords: 'Highball')
Drink.create(name: 'Vodka Martini', spirit: 'Vodka', ingredients: 'Vodka, vermouth, bitters, lemon garnish', keywords: 'Boozy')
Drink.create(name: 'Cosmopolitan', spirit: 'Vodka', ingredients: 'Vodka, cranberry juice, lime juice, orange liqueur', keywords: 'Fruity')
Drink.create(name: 'Bloody Mary', spirit: 'Vodka', ingredients: 'Vodka, lemon, tomato juice, horseradish, Tabasco, Worcestershire, celery salt', keywords: 'Boozy')
Drink.create(name: 'Vodka Tonic', spirit: 'Vodka', ingredients: 'Vodka, tonic water', keywords: 'Highball')
Drink.create(name: 'Chilton', spirit: 'Vodka', ingredients: 'Vodka, lemon juice, club soda', keywords:'Refreshing')
Drink.create(name: 'Lemon Drop', spirit: 'Vodka', ingredients: 'Vodka, lemon juice, triple sec, simple syrup', keywords: 'Sour')


Drink.create(name: 'Gin & Tonic', spirit: 'Gin', ingredients: 'Gin, tonic water', keywords: ' Highball')
Drink.create(name: 'Gimlet', spirit: 'Gin', ingredients: 'Gin, lime cordial, simple syrup', keywords: 'Sweet')
Drink.create(name: 'Negroni', spirit: 'Gin', ingredients: 'Gin, vermouth, campari, orange peel garnish', keywords: 'Boozy')
Drink.create(name: 'Gin Martini', spirit: 'Gin', ingredients: 'Gin, vermouth', keywords: 'Boozy')
Drink.create(name: 'Gin Sour', spirit: 'Gin', ingredients: 'Gin, simple syrup, egg white, lemon juice', keywords: 'Sour')


Drink.create(name: 'Cuba Libre', spirit: 'Rum', ingredients: 'Rum, lime juice, Coke', keywords: 'Highball')
Drink.create(name: 'Dark & Stormy', spirit: 'Rum', ingredients: 'Rum, ginger beer', keywords: 'Highball')
Drink.create(name: 'Mojito', spirit: 'Rum', ingredients: 'Rum, lime wedges, sugar, mint sprigs, club soda', keywords: 'Refreshing')
Drink.create(name: 'Hurricane', spirit: 'Rum', ingredients: 'Rum, lemon juice, passionfruit syrup', keywords: 'Boozy')
Drink.create(name: 'Mai Tai', spirit: 'Rum', ingredients: 'Rum, lime juice, oragnge curacao, orgeat syrup', keywords: 'Fruity')
Drink.create(name: 'Rum Runner', spirit: 'Rum', ingredients: 'Rum, orange juice, pineapple juice, banana liqueur, blackberry brandy, grenadine', keywords: 'Fruity')
Drink.create(name: 'Painkiller', spirit: 'Rum', ingredients: 'Rum, pineapple juice, orange juice, cream of coconut, nutmeg garnish', keywords: 'Fruity')

Drink.create(name: 'Old Fashioned', spirit: 'Whiskey', ingredients: 'Whiskey, bitters, sugar cube', keywords: 'Boozy')
Drink.create(name: 'Whiskey Sour', spirit: 'Whiskey', ingredients: 'Whiskey, lemon, simple syrup', keywords: 'Sour')
Drink.create(name: 'Irish Coffee', spirit: 'Whiskey', ingredients: 'Whiskey, coffee, cream', keywords: 'Warm')
Drink.create(name: 'Manhattan', spirit: 'Whiskey', ingredients: 'Whiskey, vermouth, bitters', keywords: 'Boozy')
Drink.create(name: 'Mint Julep', spirit: 'Whiskey', ingredients: 'Whiskey, mint sprigs, simple syrup', keywords:'Refreshing')
Drink.create(name: 'Hot Toddy', spirit: 'Whiskey', ingredients: 'Whiskey, lemon, honey', keywords: 'Warm')
Drink.create(name: 'Brown Derby', spirit: 'Whiskey', ingredients: 'Whiskey, grapefruit juice, honey syrup', keywords: 'Sweet')

Drink.create(name: 'Margarita', spirit: 'Tequila', ingredients: 'Tequila, Cointreau, lime juice', keywords: 'Sour')
Drink.create(name: 'Tequila Sunrise', spirit: 'Tequila', ingredients: 'Tequila, orange juice, grenadine', keywords: 'Sweet')
Drink.create(name: 'Paloma', spirit: 'Tequila', ingredients: 'Tequila, grapefruit, lime, simple syrup, soda water', keywords: 'Sweet')
Drink.create(name: 'Ranch Water', spirit: 'Tequila', ingredients: 'Tequila, lime juice, Topo Chico (or other mineral water)', keywords: 'Refreshing')
Drink.create(name: 'Mexican Mule', spirit: 'Tequila', ingredients: 'Tequila, lime juice, ginger beer', keywords: 'Refreshing')
Drink.create(name: 'Tequila Sour', spirit: 'Tequila', ingredients: 'Tequila, lemon juice, lime juice, simple syrup, bitters, egg white', keywords: 'Sour')
Drink.create(name: 'Bloody Maria', spirit: 'Tequila', ingredients: 'Tequila, lemon, tomato juice, horseradish, Tabasco, Worcestershire, celery salt', keywords: 'Boozy')


user1 = User.create(name: 'Chris')
user2 = User.create(name: 'Jamon')
user3 = User.create(name: 'Steven')

# Favorite.create(user: user1, drink: drink1)
# Favorite.create(user: user2, drink: drink2)
# Favorite.create(user: user3, drink: drink3)


