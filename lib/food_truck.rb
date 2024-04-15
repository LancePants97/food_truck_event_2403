class FoodTruck

    attr_reader :name
    attr_accessor :inventory

    def initialize(name)
        @name = name
        @inventory = {}
    end

    def stock(item, amount)
        @inventory[:key] = item
        @inventory[:value] = amount
        # require 'pry'; binding.pry
    end

    def check_stock(item)
        @inventory[item => :value]
        if @inventory[:value] == nil
            return 0
        else @inventory[:value]
        end
        # require 'pry'; binding.pry
    end
end

# NOTE TO WHOEVER REVIEWS THIS!
# I know I did not get far at all into this IC but it definitely
# showed me how hard I need to work in the next week and a half
# to really nail this all down. I have a student support slot
# booked and I will continue to work through all the ruby 
# exercises and I am confident that I WILL get past the final IC!!
# This epic failure has motivated me to excell and that is 
# what I plan on doing!!