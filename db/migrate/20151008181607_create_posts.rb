class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title_1
      t.text :title_2

      t.text :description
      t.text :text

      t.string :img_1
      t.string :img_2


      t.integer :likes

      t.timestamps null: false
    end
  end
end
