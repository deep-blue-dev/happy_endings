class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :image_1
      t.string :image_2
      t.boolean :promo

      t.timestamps null: false
    end
  end
end
