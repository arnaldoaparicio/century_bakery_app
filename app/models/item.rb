class Item < ApplicationRecord
  belongs_to :list

  def need
    minimum - number_in_stock
  end
end

