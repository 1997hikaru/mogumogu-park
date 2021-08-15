class Item < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :explanation
    validates :category_id
    validates :days_delivery_id
    validates :price
  end
end