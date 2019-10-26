class Quiz < ApplicationRecord
  has_many :rankings
  has_many :candidate_answers
end
