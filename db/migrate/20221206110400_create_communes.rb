class CreateCommunes < ActiveRecord::Migration[7.0]
  def change
    create_table :communes do |t|
      t.string :nom
      t.string :nom_formate
      t.references :departement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
