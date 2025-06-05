require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'relationships' do
    it { should belong_to(:list) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:minimum) }
    it { should validate_presence_of(:number_in_stock) }
    it { should validate_presence_of(:item_type) }
    it { should validate_presence_of(:note) }

    it { should validate_numericality_of(:minimum) }
    it { should validate_numericality_of(:number_in_stock) }
  end

  describe 'instance methods' do
    describe '#need' do
      it 'returns the difference between Minimum and in stock' do
        list = List.create(name: 'Ingredients')
        item = list.items.create(name: 'Box of 36 Count Paper Towels', minimum: 4, number_in_stock: 1, item_type: 2,
                                 note: "Don't order Brawny brand.")

        expect(item.need).to eq(3)
      end
    end
  end
end
