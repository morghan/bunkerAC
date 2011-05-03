class CreateLigaGuilties < ActiveRecord::Migration
  def self.up
    create_table :liga_guilties do |t|
      t.string :id_cuenta
      t.integer :puntos
      t.string :personaje_principal

      t.timestamps
    end
  end

  def self.down
    drop_table :liga_guilties
  end
end
