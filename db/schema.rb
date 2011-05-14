# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110514081352) do

  create_table "cuentas", :force => true do |t|
    t.string   "idcuenta"
    t.string   "imagen"
    t.string   "imagenpersonaje"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liga_blaz_blue_generals", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "personaje_principal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liga_blaz_blues", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "personaje_principal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liga_guilties", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "personaje_principal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liga_mvc3_generals", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "personaje1"
    t.string   "personaje2"
    t.string   "personaje3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liga_sf3s", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "personaje_principal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liga_sf4s", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "personaje_principal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liga_super_sf4_generals", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "personaje_principal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ligasf4s", :force => true do |t|
    t.string   "idcuenta"
    t.integer  "puntos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_bono_blaz_blues", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "motivo"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_bono_guilties", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "motivo"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_bono_sf3s", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "motivo"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_bono_sf4s", :force => true do |t|
    t.string   "id_cuenta"
    t.integer  "puntos"
    t.string   "motivo"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_pelea_blaz_blue_generals", :force => true do |t|
    t.string   "id_ganador"
    t.string   "id_perdedor"
    t.integer  "puntos_ganador"
    t.integer  "puntos_perdedor"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_pelea_blaz_blues", :force => true do |t|
    t.string   "id_ganador"
    t.string   "id_perdedor"
    t.integer  "puntos_ganador"
    t.integer  "puntos_perdedor"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_pelea_guilties", :force => true do |t|
    t.string   "id_ganador"
    t.string   "id_perdedor"
    t.integer  "puntos_ganador"
    t.integer  "puntos_perdedor"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_pelea_mvc3_generals", :force => true do |t|
    t.string   "id_ganador"
    t.string   "id_perdedor"
    t.integer  "puntos_ganador"
    t.integer  "puntos_perdedor"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_pelea_sf3s", :force => true do |t|
    t.string   "id_ganador"
    t.string   "id_perdedor"
    t.integer  "puntos_ganador"
    t.integer  "puntos_perdedor"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_pelea_sf4s", :force => true do |t|
    t.string   "id_ganador"
    t.string   "id_perdedor"
    t.integer  "puntos_ganador"
    t.integer  "puntos_perdedor"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_pelea_super_sf4_generals", :force => true do |t|
    t.string   "id_ganador"
    t.string   "id_perdedor"
    t.integer  "puntos_ganador"
    t.integer  "puntos_perdedor"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logpeleas", :force => true do |t|
    t.string   "id1"
    t.string   "id2"
    t.string   "idganador"
    t.integer  "puntosid1"
    t.integer  "puntosid2"
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motivo_bono_blaz_blues", :force => true do |t|
    t.string   "id_motivo"
    t.string   "descripcion"
    t.string   "evento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motivo_bono_guilties", :force => true do |t|
    t.string   "id_motivo"
    t.string   "descripcion"
    t.string   "evento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motivo_bono_sf3s", :force => true do |t|
    t.string   "id_motivo"
    t.string   "descripcion"
    t.string   "evento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motivo_bono_sf4s", :force => true do |t|
    t.string   "id_motivo"
    t.string   "descripcion"
    t.string   "evento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motivo_bono_super_sf4_generals", :force => true do |t|
    t.string   "id_motivo"
    t.string   "descripcion"
    t.string   "evento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perfils", :force => true do |t|
    t.string   "email"
    t.string   "id_cuenta"
    t.string   "foto"
    t.string   "nombre_real"
    t.text     "mensaje_personal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personaje_blaz_blues", :force => true do |t|
    t.string   "nombre"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personaje_guilties", :force => true do |t|
    t.string   "nombre"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personaje_mvc3s", :force => true do |t|
    t.string   "nombre"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personaje_sf3s", :force => true do |t|
    t.string   "nombre"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personaje_sf4s", :force => true do |t|
    t.string   "nombre"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pruebas", :force => true do |t|
    t.string   "cadena"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                              :null => false
    t.string   "encrypted_password",   :limit => 128,                :null => false
    t.string   "password_salt",                                      :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
