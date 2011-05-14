class CreateLigaBlazBlueGenerals < ActiveRecord::Migration
  def self.up
    create_table :liga_blaz_blue_generals do |t|
      t.string :id_cuenta
      t.integer :puntos
      t.string :personaje_principal

      t.timestamps
    end
  end

  def self.down
    drop_table :liga_blaz_blue_generals
  end
end
