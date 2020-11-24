class Category < ApplicationRecord
  has_many: category_products
  has_many: product, through: :category_products
end
