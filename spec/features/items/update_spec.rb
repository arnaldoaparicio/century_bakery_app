require 'rails_helper'

RSpec.describe 'the item update' do
  it 'shows the item edit form' do
    ingredient_list = List.create!(name: 'Ingredients')
    baker_cheese = Item.create!(name: "Baker's Cheese", minimum: 1, number_in_stock: 0, item_type: 0, note: "Must buy 30# box, not 10#", list_id: ingredient_list.id)

    visit "/lists/#{ingredient_list.id}/#{baker_cheese.id}/edit"

    expect(find("form")).to have_content('Name')
    expect(find('form')).to have_content('Minimum')
    expect(find('form')).to have_content('# In Stock')
    expect(find('form')).to have_content('Item Type')
    expect(find('form')).to have_content('Note')
  end
end
