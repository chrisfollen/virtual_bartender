class Drink < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites

    def self.find_by_spirit(spirit)
        all.filter{|drink| drink.spirit == spirit}
    end

    def self.find_by_name(name)
        all.find{|drink| drink.name == name}
    end

    def self.choosing_graphic
        puts "Finding your random drink..."
        puts "\n"
        puts "\n"
        sleep(1)
        print "Eenie...🥃..."
        sleep(1)
        print "Meenie...🍹..."
        sleep(1)
        print "Miney...🍷..."
        sleep(1)
        print "Moe...🍸!"
        sleep(1)
    end

    def self.random 
        choosing_graphic
        all.shuffle[0]
    end


end
