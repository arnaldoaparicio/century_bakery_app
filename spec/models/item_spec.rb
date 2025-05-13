require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "instance methods" do
    describe "#need" do
      it "returns the difference between Minimum and in stock" do
        list = List.create(name: "Ingredients")
        item = list.items.create(name: "Box of 36 Count Paper Towels", minimum: 4, number_in_stock: 1, item_type: 2, note: "Don't order Brawny brand.",)

        expect(item.need).to eq(3)
      end
    end
  end
end