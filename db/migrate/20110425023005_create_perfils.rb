class CreatePerfils < ActiveRecord::Migration
  def self.up
    create_table :perfils do |t|
      t.string :email
      t.string :id_cuenta
      t.string :foto
      t.string :nombre_real
      t.text :mensaje_personal

      t.timestamps
    end
  end

  def self.down
    drop_table :perfils
  end
end
