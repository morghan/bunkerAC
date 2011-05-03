class CreateLigaBlazBlues < ActiveRecord::Migration
  def self.up
    create_table :liga_blaz_blues do |t|
      t.string :id_cuenta
      t.integer :puntos
      t.string :personaje_principal

      t.timestamps
    end
  end

  def self.down
    drop_table :liga_blaz_blues
  end
end
