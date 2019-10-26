class Quiz < ApplicationRecord
  has_many :rankings, dependent: :destroy
  has_many :candidate_answers, dependent: :destroy

  def gen_ranking_data
    rankings.map.with_index(1) { |r, idx| { name: r.name, rank: idx } }
  end

  def gen_candidate_answers
    candidate_answers.pluck(:name).shuffle
  end
end
