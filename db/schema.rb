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

ActiveRecord::Schema[7.0].define(version: 2022_12_06_114009) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidats", force: :cascade do |t|
    t.string "nom"
    t.bigint "formation_politique_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["formation_politique_id"], name: "index_candidats_on_formation_politique_id"
  end

  create_table "communes", force: :cascade do |t|
    t.string "nom"
    t.string "nom_formate"
    t.bigint "departement_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departement_id"], name: "index_communes_on_departement_id"
  end

  create_table "courant_politiques", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departements", force: :cascade do |t|
    t.string "nom"
    t.string "nom_formate"
    t.string "code"
    t.bigint "region_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_departements_on_region_id"
  end

  create_table "formation_politiques", force: :cascade do |t|
    t.string "nom"
    t.bigint "courant_politique_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courant_politique_id"], name: "index_formation_politiques_on_courant_politique_id"
  end

  create_table "nations", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "nom"
    t.bigint "nation_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nation_id"], name: "index_regions_on_nation_id"
  end

  create_table "resultat_candidats", force: :cascade do |t|
    t.integer "score_candidat"
    t.bigint "candidat_id", null: false
    t.bigint "resultat_commune_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidat_id"], name: "index_resultat_candidats_on_candidat_id"
    t.index ["resultat_commune_id"], name: "index_resultat_candidats_on_resultat_commune_id"
  end

  create_table "resultat_communes", force: :cascade do |t|
    t.integer "inscrit"
    t.integer "votant"
    t.integer "abstention"
    t.integer "blancs"
    t.integer "nuls"
    t.integer "blancs_nuls"
    t.integer "exprime"
    t.bigint "scrutin_id", null: false
    t.bigint "commune_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commune_id"], name: "index_resultat_communes_on_commune_id"
    t.index ["scrutin_id"], name: "index_resultat_communes_on_scrutin_id"
  end

  create_table "scrutins", force: :cascade do |t|
    t.string "mandat"
    t.integer "annee"
    t.integer "tour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "candidats", "formation_politiques"
  add_foreign_key "communes", "departements"
  add_foreign_key "departements", "regions"
  add_foreign_key "formation_politiques", "courant_politiques"
  add_foreign_key "regions", "nations"
  add_foreign_key "resultat_candidats", "candidats"
  add_foreign_key "resultat_candidats", "resultat_communes"
  add_foreign_key "resultat_communes", "communes"
  add_foreign_key "resultat_communes", "scrutins"
end
