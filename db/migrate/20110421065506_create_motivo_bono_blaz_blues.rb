class CreateMotivoBonoBlazBlues < ActiveRecord::Migration
  def self.up
    create_table :motivo_bono_blaz_blues do |t|
      t.string :id_motivo
      t.string :descripcion
      t.string :evento

      t.timestamps
    end
  end

  def self.down
    drop_table :motivo_bono_blaz_blues
  end
end
