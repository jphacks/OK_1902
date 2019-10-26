class Ranking < ApplicationRecord
  belongs_to :quiz
  has_one :grade
end
