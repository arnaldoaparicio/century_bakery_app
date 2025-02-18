# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


ingredient_list = List.create!(name: 'Ingredients')
packaging_list = List.create!(name: 'Packaging Supplies')
cleaning_list = List.create!(name: 'Cleaning Supplies')

baker_cheese = Item.create!(name: "Baker's Cheese", minimum: 1, number_in_stock: 0, item_type: 0, note: "Must buy 30# box, not 10#", list_id: ingredient_list.id)
donut_raise = Item.create!(name: "50# Grade A Donut Raise", minimum: 8, number_in_stock: 2, item_type: 0, note: "Must be Dawn branded", list_id: ingredient_list.id)
cake_board = Item.create!(name: '1/2 Sheet DW Cake Board', minimum: 2, number_in_stock: 1, item_type: 1, note: "Make sure you don't select 'SW'", list_id: packaging_list.id)
paper_towel = Item.create!(name: "Box of 36 Count Paper Towels", minimum: 4, number_in_stock: 0, item_type: 2, note: "Don't order Brawny brand.", list_id: cleaning_list.id)