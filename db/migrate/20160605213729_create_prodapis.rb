class CreateProdapis < ActiveRecord::Migration
  def change
    create_table :prodapis do |t|
      t.string :name
      t.string :price
      t.string :category_id

      t.timestamps null: false
    end
  end
end
