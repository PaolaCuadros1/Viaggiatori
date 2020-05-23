class AddColumnsToAdmins < ActiveRecord::Migration[5.2]
  def up
    add_column :admins, :identification_card, :string, null: false
    add_attachment :admins, :avatar
    add_column :admins, :birthdate, :date, null: false
    add_column :admins, :status, :boolean, default: true
  end

  def down
    remove_column :admins, :identification_card
    remove_attachment :admins, :avatar
    remove_column :admins, :birthdate
    remove_column :admins, :status
  end
end
