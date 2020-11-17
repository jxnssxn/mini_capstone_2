ActiveRecord::Schema.define(version: 2020_11_10_225017) do

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image_url"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
