class CreateLogPeleaGuilties < ActiveRecord::Migration
  def self.up
    create_table :log_pelea_guilties do |t|
      t.string :id_ganador
      t.string :id_perdedor
      t.integer :puntos_ganador
      t.integer :puntos_perdedor
      t.date :fecha

      t.timestamps
    end
  end

  def self.down
    drop_table :log_pelea_guilties
  end
end
