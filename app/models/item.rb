class Item < ApplicationRecord
  belongs_to :list

  enum item_type: {
    ingredient: 0,
    paper: 1,
    cleaning: 2
  }

  def need
    minimum - number_in_stock
  end
end

