class Quote < ApplicationRecord
    belongs_to :category
    validates :content, presence: true
end
