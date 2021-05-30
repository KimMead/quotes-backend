class Category < ApplicationRecord
    has_many :quotes
    validates :name, presence: true
end
