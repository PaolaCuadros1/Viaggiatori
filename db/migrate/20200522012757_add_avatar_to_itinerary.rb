class AddAvatarToItinerary < ActiveRecord::Migration[5.2]
  def up
    add_attachment :itineraries, :avatar
  end

  def down
    remove_attachment :itineraries, :avatar
  end
end
