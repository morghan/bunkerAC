class RemoveIdCuentaFromPerfil2 < ActiveRecord::Migration
  def self.up
#    remove_column :perfils, :id_cuenta
#
#    remove_column :log_pelea_sf4s, :id_perdedor
#    remove_column :log_pelea_blaz_blues, :id_perdedor
#    remove_column :log_pelea_guilties, :id_perdedor
#    remove_column :log_pelea_sf3s, :id_perdedor
#    remove_column :log_pelea_super_sf4_generals, :id_perdedor
    remove_column :log_pelea_blaz_blue_generals, :id_perdedor
    remove_column :log_pelea_mvc3_generals, :id_perdedor
#
    remove_column :log_pelea_sf4s, :id_ganador
    remove_column :log_pelea_blaz_blues, :id_ganador
    remove_column :log_pelea_guilties, :id_ganador
    remove_column :log_pelea_sf3s, :id_ganador
    remove_column :log_pelea_super_sf4_generals, :id_ganador
    remove_column :log_pelea_blaz_blue_generals, :id_ganador
    remove_column :log_pelea_mvc3_generals, :id_ganador

    remove_column :liga_sf4s, :id_cuenta
    remove_column :liga_blaz_blues, :id_cuenta
    remove_column :liga_guilties, :id_cuenta
    remove_column :liga_sf3s, :id_cuenta
    remove_column :liga_super_sf4_generals, :id_cuenta
    remove_column :liga_blaz_blue_generals, :id_cuenta
    remove_column :liga_mvc3_generals, :id_cuenta
  end

  def self.down
    add_column :perfils, :id_cuenta, :string
  end
end
