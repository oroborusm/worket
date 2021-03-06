# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140601214712) do

  create_table "clientes", force: true do |t|
    t.string   "razon_social"
    t.string   "nombre"
    t.string   "rut"
    t.string   "direccion"
    t.string   "email"
    t.string   "telefono"
    t.string   "nombre_contacto"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comentarios", force: true do |t|
    t.string   "titulo"
    t.text     "texto"
    t.integer  "usuario_worket_id"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formulario_workets", force: true do |t|
    t.string   "nombre1"
    t.string   "nombre2"
    t.string   "apellido1"
    t.string   "apellido2"
    t.string   "rut"
    t.string   "email"
    t.string   "telefono"
    t.text     "actividad"
    t.binary   "adjunto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medias", force: true do |t|
    t.string   "nombre_archivo"
    t.integer  "servicio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regiones", force: true do |t|
    t.string   "nombre"
    t.string   "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "tipo_rol_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", force: true do |t|
    t.integer  "usuario_id"
    t.string   "titulo"
    t.text     "resumen"
    t.integer  "precio"
    t.binary   "adjunto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_roles", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nombre1",                default: "", null: false
    t.string   "nombre2",                default: "", null: false
    t.string   "apellido1",              default: "", null: false
    t.string   "apellido2",              default: "", null: false
    t.string   "telefono1"
    t.string   "telefono2",              default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "cliente_id"
    t.integer  "rol_id",                 default: 0,  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

end
