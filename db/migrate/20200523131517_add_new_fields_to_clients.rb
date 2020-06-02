class AddNewFieldsToClients < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :identification_card, :string, null: false
    add_column :users, :birthdate, :date, null: false
    add_column :users, :smoke, :boolean, default: false
    add_column :users, :area_to_travel, :string, default: false
    add_attachment :users, :avatar, null: true
  end

  def down
    remove_column :users, :identification_card
    remove_column :users, :birthdate
    remove_column :users, :smoke
    remove_column :users, :area_to_travel
    remove_attachment :users, :avatar
  end
end
