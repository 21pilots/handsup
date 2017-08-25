class Major < ApplicationRecord
    has_many :users
    has_many :questions
    has_ancestry
end
