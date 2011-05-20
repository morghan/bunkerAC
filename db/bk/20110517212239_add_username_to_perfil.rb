class AddUsernameToPerfil < ActiveRecord::Migration
  def self.up
    add_column :perfils, :username, :string
  end

  def self.down
    remove_column :perfils, :username
  end
end
