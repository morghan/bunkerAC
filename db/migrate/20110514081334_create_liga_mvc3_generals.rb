class CreateLigaMvc3Generals < ActiveRecord::Migration
  def self.up
    create_table :liga_mvc3_generals do |t|
      t.string :id_cuenta
      t.integer :puntos
      t.string :personaje1
      t.string :personaje2
      t.string :personaje3

      t.timestamps
    end
  end

  def self.down
    drop_table :liga_mvc3_generals
  end
end
