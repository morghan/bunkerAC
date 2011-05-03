class CreatePersonajeBlazBlues < ActiveRecord::Migration
  def self.up
    create_table :personaje_blaz_blues do |t|
      t.string :nombre
      t.string :path

      t.timestamps
    end
  end

  def self.down
    drop_table :personaje_blaz_blues
  end
end
