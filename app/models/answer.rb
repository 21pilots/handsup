class Answer < ApplicationRecord
    belongs_to :question
    belongs_to :user
    has_many :comments
    acts_as_votable
end
