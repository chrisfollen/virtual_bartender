class Drink < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites

    def self.find_by_spirit(spirit)
        all.filter{|drink| drink.spirit == spirit}
    end

    def self.find_by_name(name)
        all.find{|drink| drink.name == name}
    end


end
