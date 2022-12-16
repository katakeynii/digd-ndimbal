# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_16_115735) do
  create_table "agents", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "telephone"
    t.integer "mairie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mairie_id"], name: "index_agents_on_mairie_id"
  end

  create_table "agents_recensements", id: false, force: :cascade do |t|
    t.integer "agent_id", null: false
    t.integer "recensement_id", null: false
  end

  create_table "communes", force: :cascade do |t|
    t.string "nom"
    t.integer "mairie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mairie_id"], name: "index_communes_on_mairie_id"
  end

  create_table "detail_recensements", force: :cascade do |t|
    t.integer "recensement_id", null: false
    t.integer "famille_id", null: false
    t.integer "agent_id", null: false
    t.datetime "date_recensement"
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agent_id"], name: "index_detail_recensements_on_agent_id"
    t.index ["famille_id"], name: "index_detail_recensements_on_famille_id"
    t.index ["recensement_id"], name: "index_detail_recensements_on_recensement_id"
  end

  create_table "familles", force: :cascade do |t|
    t.string "nom"
    t.string "adresse"
    t.integer "commune_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code"
    t.index ["code"], name: "index_familles_on_code", unique: true
    t.index ["commune_id"], name: "index_familles_on_commune_id"
  end

  create_table "mairies", force: :cascade do |t|
    t.string "nom"
    t.string "adresse"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "membres", force: :cascade do |t|
    t.integer "famille_id", null: false
    t.string "prenom"
    t.string "nom"
    t.string "sexe"
    t.date "date_naissance"
    t.string "lieu_naissance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type_membre"
    t.index ["famille_id"], name: "index_membres_on_famille_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "name"
    t.integer "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_permissions_on_role_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "nom"
    t.string "photo_type", null: false
    t.integer "photo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_type", "photo_id"], name: "index_photos_on_photo"
  end

  create_table "recensements", force: :cascade do |t|
    t.string "nom"
    t.date "date_debut"
    t.date "date_fin"
    t.string "etat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subventions", force: :cascade do |t|
    t.decimal "montant"
    t.integer "mairie_id", null: false
    t.integer "famille_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "transaction_id", null: false
    t.index ["famille_id"], name: "index_subventions_on_famille_id"
    t.index ["mairie_id"], name: "index_subventions_on_mairie_id"
    t.index ["transaction_id"], name: "index_subventions_on_transaction_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.decimal "montant_donne"
    t.string "numero_operation"
    t.string "type_transaction"
    t.datetime "date_transaction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utilisateur_roles", force: :cascade do |t|
    t.integer "utilisateur_id", null: false
    t.integer "role_id", null: false
    t.datetime "expire_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_utilisateur_roles_on_role_id"
    t.index ["utilisateur_id"], name: "index_utilisateur_roles_on_utilisateur_id"
  end

  create_table "utilisateurs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_utilisateurs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_utilisateurs_on_reset_password_token", unique: true
  end

  add_foreign_key "agents", "mairies", column: "mairie_id"
  add_foreign_key "communes", "mairies", column: "mairie_id"
  add_foreign_key "detail_recensements", "agents"
  add_foreign_key "detail_recensements", "familles"
  add_foreign_key "detail_recensements", "recensements"
  add_foreign_key "familles", "communes"
  add_foreign_key "membres", "familles"
  add_foreign_key "permissions", "roles"
  add_foreign_key "subventions", "familles"
  add_foreign_key "subventions", "mairies", column: "mairie_id"
  add_foreign_key "subventions", "transactions"
  add_foreign_key "utilisateur_roles", "roles"
  add_foreign_key "utilisateur_roles", "utilisateurs"
end
