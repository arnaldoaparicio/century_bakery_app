class Item < ApplicationRecord
  validates :name, presence: true
  validates :minimum, presence: true, numericality: true
  validates :number_in_stock, presence: true, numericality: true
  validates :item_type, presence: true
  validates :note, presence: true

  belongs_to :list

  enum item_type: {
    ingredient: 0,
    paper: 1,
    cleaning: 2
  }

  def need
    needed = minimum - number_in_stock
    if needed < 0
      'none'
    else
      needed
    end
  end
end
