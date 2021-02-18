class Favorite < ActiveRecord::Base 
    belongs_to :drink 
    belongs_to :user 
end


# def self.favorite_drinks user
#     favorites = all.filter{|favorite| favorite.user == user}
#     favorites.map{|favorite| favorite.drink}
# end



