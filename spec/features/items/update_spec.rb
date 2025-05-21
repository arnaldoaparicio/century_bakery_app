require 'rails_helper'

RSpec.describe 'the item update' do
  it 'shows the item edit form' do
    ingredient_list = List.create!(name: 'Ingredients')

    visit "/lists/#{ingredient_list.id}/edit"

    expect(find("form")).to have_content('Name')
  end
end
