class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :client_name
      t.string :picture1
      t.string :picture2
      t.text :description

      t.timestamps null: false
    end
  end
end
