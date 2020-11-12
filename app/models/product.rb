class Product < ApplicationRecord
  def tax
    price * 0.0875
  end
  def is_discounted?
    price < 10
  end

  def total
    price + tax
  end
end
