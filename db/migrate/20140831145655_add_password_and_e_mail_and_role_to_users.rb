class AddPasswordAndEMailAndRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
    add_column :users, :e_mail, :string
    add_column :users, :role, :string
  end
end
