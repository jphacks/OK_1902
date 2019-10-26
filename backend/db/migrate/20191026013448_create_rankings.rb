class CreateRankings < ActiveRecord::Migration[5.2]
  def change
    create_table :rankings do |t|
      t.string :name
      t.integer :quiz_id
      t.integer :order

      t.timestamps
    end
  end
end
