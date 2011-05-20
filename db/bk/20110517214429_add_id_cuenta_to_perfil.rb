class AddIdCuentaToPerfil < ActiveRecord::Migration
  def self.up
    
    add_column :log_pelea_sf4s, :id_perdedor, :integer
    add_column :log_pelea_blaz_blues, :id_perdedor, :integer
    add_column :log_pelea_guilties, :id_perdedor, :integer
    add_column :log_pelea_sf3s, :id_perdedor, :integer
    add_column :log_pelea_super_sf4_generals, :id_perdedor, :integer
    add_column :log_pelea_blaz_blue_generals, :id_perdedor, :integer
    add_column :log_pelea_mvc3_generals, :id_perdedor, :integer
#
    add_column :log_pelea_sf4s, :id_ganador, :integer
    add_column :log_pelea_blaz_blues, :id_ganador, :integer
    add_column :log_pelea_guilties, :id_ganador, :integer
    add_column :log_pelea_sf3s, :id_ganador, :integer
    add_column :log_pelea_super_sf4_generals, :id_ganador, :integer
    add_column :log_pelea_blaz_blue_generals, :id_ganador, :integer
    add_column :log_pelea_mvc3_generals, :id_ganador, :integer

    add_column :liga_sf4s, :id_cuenta, :integer
    add_column :liga_blaz_blues, :id_cuenta, :integer
    add_column :liga_guilties, :id_cuenta, :integer
    add_column :liga_sf3s, :id_cuenta, :integer
    add_column :liga_super_sf4_generals, :id_cuenta, :integer
    add_column :liga_blaz_blue_generals, :id_cuenta, :integer
    add_column :liga_mvc3_generals, :id_cuenta, :integer
  end

  def self.down
    
  end
end
