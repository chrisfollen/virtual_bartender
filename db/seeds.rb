Drink.destroy_all
User.destroy_all 
Favorite.destroy_all



drink2 = Drink.create(name: 'Screwdriver', spirit: 'Vodka')
Drink.create(name: 'Vodka Martini', spirit: 'Vodka')

Drink.create(name: 'Gin & Tonic', spirit: 'Gin')
Drink.create(name: 'Gimlet', spirit: 'Gin')

Drink.create(name: 'Cuba Libre', spirit: 'Rum')
drink3 = Drink.create(name: 'Dark & Stormy', spirit: 'Rum')

drink1 = Drink.create(name: 'Old Fashioned', spirit: 'Whiskey')
Drink.create(name: 'Whiskey Sour', spirit: 'Whiskey')

Drink.create(name: 'Margarita', spirit: 'Tequila')
Drink.create(name: 'Tequila Sunrise', spirit: 'Tequila')

user1 = User.create(name: 'Chris')
user2 = User.create(name: 'Jamon')
user3 = User.create(name: 'Steven')

Favorite.create(user: user1, drink: drink1)
Favorite.create(user: user2, drink: drink2)
Favorite.create(user: user3, drink: drink3)


