class Product < ApplicationRecord

  validates :name, :price, presence: true
  validates :description, length: { in: 10..500 }
  belongs_to :supplier
  belongs_to :category
  has_many :category_products
  has_many :categories, through: :category_products


  
  
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

end
