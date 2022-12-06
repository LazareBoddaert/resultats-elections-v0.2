class CreateDepartements < ActiveRecord::Migration[7.0]
  def change
    create_table :departements do |t|
      t.string :nom
      t.string :nom_formate
      t.string :code
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
