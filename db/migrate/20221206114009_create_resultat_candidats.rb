class CreateResultatCandidats < ActiveRecord::Migration[7.0]
  def change
    create_table :resultat_candidats do |t|
      t.integer :score_candidat
      t.references :candidat, null: false, foreign_key: true
      t.references :resultat_commune, null: false, foreign_key: true

      t.timestamps
    end
  end
end
