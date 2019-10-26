class CreateCandidateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :candidate_answers do |t|
      t.string :name
      t.integer :quiz_id
      t.integer :order

      t.timestamps
    end
  end
end
