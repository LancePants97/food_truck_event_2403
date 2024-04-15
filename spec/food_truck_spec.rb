require './lib/food_truck'
require './lib/item'
require 'rspec'

RSpec.describe FoodTruck do
    describe '#initialize' do 
        it 'exists' do
            food_truck = FoodTruck.new('Rocky Mountain Pies')
            expect(food_truck).to be_a (FoodTruck)
        end

        it 'has a name' do
            food_truck = FoodTruck.new('Rocky Mountain Pies')
            expect(food_truck.name).to eq 'Rocky Mountain Pies'
        end

        it 'has an empty inventory by default' do
            food_truck = FoodTruck.new('Rocky Mountain Pies')
            expect(food_truck.inventory).to eq ({})
        end
    end

    describe '#check_stock' do
        it 'has no stock to start' do
            food_truck = FoodTruck.new('Rocky Mountain Pies')
            item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
            
            expect(food_truck.check_stock(item1)).to eq(0)
        end

        it 'can stock items and check them' do
            food_truck = FoodTruck.new('Rocky Mountain Pies')
            item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
            
            food_truck.stock(item1, 30)
            
            expect(food_truck.check_stock(item1)).to eq(30)
        end

        it 'can stock more of the same items and check them' do
            food_truck = FoodTruck.new('Rocky Mountain Pies')
            item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
            
            food_truck.stock(item1, 30)
            food_truck.stock(item1, 25)
            
            expect(food_truck.check_stock(item1)).to eq(55)
        end
    end

end