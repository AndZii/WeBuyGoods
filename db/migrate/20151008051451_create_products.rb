class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :text
      t.string :first_img
      t.string :second_img
      t.string :price

      t.timestamps null: false
    end
  end
end
