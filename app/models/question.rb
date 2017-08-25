class Question < ApplicationRecord
    belongs_to :user
    has_many :answers
    belongs_to :major
    acts_as_votable
end
