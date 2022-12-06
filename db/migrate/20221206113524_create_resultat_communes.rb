class CreateResultatCommunes < ActiveRecord::Migration[7.0]
  def change
    create_table :resultat_communes do |t|
      t.integer :inscrit
      t.integer :votant
      t.integer :abstention
      t.integer :blancs
      t.integer :nuls
      t.integer :blancs_nuls
      t.integer :exprime
      t.references :scrutin, null: false, foreign_key: true
      t.references :commune, null: false, foreign_key: true

      t.timestamps
    end
  end
end
