class RemoveFotoFromPerfil < ActiveRecord::Migration
  def self.up
    remove_column :perfils, :foto
  end

  def self.down
    add_column :perfils, :foto, :string
  end
end
