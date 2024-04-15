require './lib/item'
require 'rspec'

RSpec.describe Item do
    describe '#initialize' do
        it 'exists' do
            item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
            expect(item1).to be_a (Item)
        end

        it 'has a name' do
            item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
            expect(item1.name).to eq 'Peach Pie (Slice)'
        end

        it 'can have another name' do
            item2 = Item.new({name: 'Apple Pie (Slice)', price: "$2.50"})
            expect(item2.name).to eq 'Apple Pie (Slice)'
        end

        it 'has a price' do
            item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
            expect(item1.price).to eq '$3.75'
        end

        it 'can have another price' do
            item2 = Item.new({name: 'Apple Pie (Slice)', price: "$2.50"})
            expect(item2.price).to eq '$2.50'
        end
    end
end