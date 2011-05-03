class CreatePersonajeSf3s < ActiveRecord::Migration
  def self.up
    create_table :personaje_sf3s do |t|
      t.string :nombre
      t.string :path

      t.timestamps
    end
  end

  def self.down
    drop_table :personaje_sf3s
  end
end
