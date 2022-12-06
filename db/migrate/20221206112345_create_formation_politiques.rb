class CreateFormationPolitiques < ActiveRecord::Migration[7.0]
  def change
    create_table :formation_politiques do |t|
      t.string :nom
      t.references :courant_politique, null: false, foreign_key: true

      t.timestamps
    end
  end
end
