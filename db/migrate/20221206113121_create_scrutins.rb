class CreateScrutins < ActiveRecord::Migration[7.0]
  def change
    create_table :scrutins do |t|
      t.string :mandat
      t.integer :annee
      t.integer :tour

      t.timestamps
    end
  end
end
