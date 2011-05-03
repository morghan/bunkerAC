class CreatePersonajeSf4s < ActiveRecord::Migration
  def self.up
    create_table :personaje_sf4s do |t|
      t.string :nombre
      t.string :path

      t.timestamps
    end
  end

  def self.down
    drop_table :personaje_sf4s
  end
end
