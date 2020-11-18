class Product < ApplicationRecord

  validates :name, :price, presence: true
  
  def supplier
    Supplier.find_by(id: supplier_id)
  end
  
  def tax
    price * 0.0875
  end
  def is_discounted?
    price < 10
  end

  def total
    price + tax
  end

  def supplier_id
    @product = products.supplier_id
  end
end
