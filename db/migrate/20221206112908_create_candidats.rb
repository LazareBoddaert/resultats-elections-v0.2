class CreateCandidats < ActiveRecord::Migration[7.0]
  def change
    create_table :candidats do |t|
      t.string :nom
      t.references :formation_politique, null: true, foreign_key: true

      t.timestamps
    end
  end
end
