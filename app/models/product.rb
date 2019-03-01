class Product < ApplicationRecord
  has_many :comments
  has_many :order_products
  has_many :images
  has_many :categories
end
