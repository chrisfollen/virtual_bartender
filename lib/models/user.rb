class User < ActiveRecord::Base 
    has_many :favorites
    has_many :drinks, through: :favorites
end