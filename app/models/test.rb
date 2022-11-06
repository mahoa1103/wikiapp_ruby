class Test < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :typeof, presence: true
end
