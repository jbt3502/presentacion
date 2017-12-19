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

ActiveRecord::Schema.define(version: 20171216200020) do

  create_table "comments", force: :cascade do |t|
    t.integer "local_id"
    t.string "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_comments_on_local_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "field_rents", force: :cascade do |t|
    t.integer "field_id"
    t.integer "service_id"
    t.date "fecha"
    t.time "hora"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_field_rents_on_field_id"
    t.index ["service_id"], name: "index_field_rents_on_service_id"
  end

  create_table "fields", force: :cascade do |t|
    t.integer "local_id"
    t.string "nombre"
    t.string "descripcion"
    t.decimal "tarifa"
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_file_name"
    t.string "cover_content_type"
    t.integer "cover_file_size"
    t.datetime "cover_updated_at"
    t.index ["local_id"], name: "index_fields_on_local_id"
  end

  create_table "locals", force: :cascade do |t|
    t.integer "district_id"
    t.string "nombre"
    t.string "descripcion"
    t.string "direccion"
    t.string "direccion_google"
    t.string "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["district_id"], name: "index_locals_on_district_id"
  end

  create_table "personas", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.integer "sexo"
    t.integer "dni"
    t.string "correo"
    t.datetime "fecha_nacimiento"
    t.string "celular"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.integer "local_id"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_promotions_on_local_id"
  end

  create_table "publications", force: :cascade do |t|
    t.integer "field_id"
    t.string "nombre"
    t.string "descripcion"
    t.date "fecha_inicio"
    t.date "fecha_fin"
    t.decimal "tarifa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_id"], name: "index_publications_on_field_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "local_id"
    t.integer "calificacion"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_ratings_on_local_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.decimal "tarifa"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_type_id"
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.integer "sexo"
    t.integer "dni"
    t.date "fecha_nacimiento"
    t.string "celular"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

end
