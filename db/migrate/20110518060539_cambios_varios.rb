class CambiosVarios < ActiveRecord::Migration
  def self.up
    #add_column :perfils, :username, :string
    remove_column :perfils, :id_cuenta
    add_column :perfils, :id_cuenta,:integer

    add_column :log_pelea_sf4s, :perdedor, :integer
    add_column :log_pelea_blaz_blues, :perdedor, :integer
    add_column :log_pelea_guilties, :perdedor, :integer
    add_column :log_pelea_sf3s, :perdedor, :integer
    add_column :log_pelea_super_sf4_generals, :perdedor, :integer
    add_column :log_pelea_blaz_blue_generals, :perdedor, :integer
    add_column :log_pelea_mvc3_generals, :perdedor, :integer
#
    add_column :log_pelea_sf4s, :ganador, :integer
    add_column :log_pelea_blaz_blues, :ganador, :integer
    add_column :log_pelea_guilties, :ganador, :integer
    add_column :log_pelea_sf3s, :ganador, :integer
    add_column :log_pelea_super_sf4_generals, :ganador, :integer
    add_column :log_pelea_blaz_blue_generals, :ganador, :integer
    add_column :log_pelea_mvc3_generals, :ganador, :integer

    add_column :liga_sf4s, :cuenta, :integer
    add_column :liga_blaz_blues, :cuenta, :integer
    add_column :liga_guilties, :cuenta, :integer
    add_column :liga_sf3s, :cuenta, :integer
    add_column :liga_super_sf4_generals, :cuenta, :integer
    add_column :liga_blaz_blue_generals, :cuenta, :integer
    add_column :liga_mvc3_generals, :cuenta, :integer


  end

  def self.down
    #remove_column :perfils, :username
  end
end
