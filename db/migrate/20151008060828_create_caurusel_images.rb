class CreateCauruselImages < ActiveRecord::Migration
  def change
    create_table :caurusel_images do |t|
      t.string :name
      t.string :img

      t.timestamps null: false
    end
  end
end
