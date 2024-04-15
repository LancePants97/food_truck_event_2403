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