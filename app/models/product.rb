class Product < ApplicationRecord
  def tax
    price * 0.99
  end
end
