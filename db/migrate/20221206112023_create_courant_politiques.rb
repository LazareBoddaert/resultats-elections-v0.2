class CreateCourantPolitiques < ActiveRecord::Migration[7.0]
  def change
    create_table :courant_politiques do |t|
      t.string :nom

      t.timestamps
    end
  end
end
