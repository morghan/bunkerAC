class AddIdCuentaToPerfil < ActiveRecord::Migration
  def self.up
    add_column :perfils, :id_cuenta, :integer
  end

  def self.down
    remove_column :perfils, :id_cuenta
  end
end
