class User < ActiveRecord::Base 
    has_many :favorites
    has_many :drinks, through: :favorites

    def self.find_by_name name 
        all.find{|user| user.name == name}
    end

    def favorite_drinks
        my_favorites = Favorite.all.filter{|favorite| favorite.user == self}
        my_favorites.map{|favorite| favorite.drink}
    end





end