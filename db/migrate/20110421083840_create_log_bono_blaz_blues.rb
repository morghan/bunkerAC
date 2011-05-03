class CreateLogBonoBlazBlues < ActiveRecord::Migration
  def self.up
    create_table :log_bono_blaz_blues do |t|
      t.string :id_cuenta
      t.integer :puntos
      t.string :motivo
      t.date :fecha

      t.timestamps
    end
  end

  def self.down
    drop_table :log_bono_blaz_blues
  end
end