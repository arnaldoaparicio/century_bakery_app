require 'rails_helper'

RSpec.describe 'the item update' do
  it 'shows the item edit form' do
    ingredient_list = List.create!(name: 'Ingredients')

    Item.create!(name: "Baker's Cheese", minimum: 1, number_in_stock: 0, item_type: 0,
                 note: 'Must buy 30# box, not 10#', list_id: ingredient_list.id)
    Item.create!(name: '50# Grade A Donut Raise', minimum: 8, number_in_stock: 2, item_type: 0,
                 note: 'Must be Dawn branded', list_id: ingredient_list.id)

    visit "/lists/#{ingredient_list.id}/edit"

    expect(find("form")).to have_content('Name')
    expect(find("form")).to have_content('Minimum')
    expect(find("form")).to have_content("Number In Stock")
    expect(find("form")).to have_content("Item Type")
    expect(find("form")).to have_content("Note")
  end
end
