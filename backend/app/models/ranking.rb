class Ranking < ApplicationRecord
  belongs_to :quiz
  has_many :grades
end
