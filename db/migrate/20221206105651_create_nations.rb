class CreateNations < ActiveRecord::Migration[7.0]
  def change
    create_table :nations do |t|
      t.string :nom

      t.timestamps
    end
  end
end
