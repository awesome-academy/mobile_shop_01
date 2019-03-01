class Order < ApplicationRecord
  has_one :bill
  has_many :order_products
  belongs_to :user
end
