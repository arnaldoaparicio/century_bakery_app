class CreateItem < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :minimum
      t.integer :number_in_stock
      t.integer :item_type
      t.string :note

      t.timestamps
    end
  end
end
