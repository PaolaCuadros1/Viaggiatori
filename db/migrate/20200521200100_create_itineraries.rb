class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :title
      t.string :place
      t.float :value
      t.float :discount
      t.date :discount_date
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
