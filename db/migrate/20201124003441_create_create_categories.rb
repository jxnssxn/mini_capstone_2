class CreateCreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :create_categories do |t|
      t.integer :product_id
      t.integer :category_id

      t.timestamps
    end
  end
end
