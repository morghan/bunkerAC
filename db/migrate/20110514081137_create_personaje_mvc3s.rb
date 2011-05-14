class CreatePersonajeMvc3s < ActiveRecord::Migration
  def self.up
    create_table :personaje_mvc3s do |t|
      t.string :nombre
      t.string :path

      t.timestamps
    end
  end

  def self.down
    drop_table :personaje_mvc3s
  end
end
