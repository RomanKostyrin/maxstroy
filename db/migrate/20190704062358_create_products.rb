class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :vid
      t.string :image_url
      t.decimal :price, precision: 8, scale: 1
      t.timestamps
    end
  end
end
