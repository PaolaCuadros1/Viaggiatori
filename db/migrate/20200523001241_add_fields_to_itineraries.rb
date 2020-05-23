class AddFieldsToItineraries < ActiveRecord::Migration[5.2]
  def up
    remove_column :itineraries, :discount_date
    add_column :itineraries, :short_description, :string, null: false
    add_column :itineraries, :discount_start_date, :date, null: true
    add_column :itineraries, :discount_end_date, :date, null: true
  end

  def down
    add_column :itineraries, :discount_date, :date, null: true
    remove_column :itineraries, :short_description
    remove_column :itineraries, :discount_start_date
    remove_column :itineraries, :discount_end_date
  end
end
