class AddRoleToAdmins < ActiveRecord::Migration[5.2]
  def up
    add_column :admins, :role, :string, null: true
  end

  def down
    remove_column :admins, :role
  end
end
