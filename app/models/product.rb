class Product < ApplicationRecord
    has_many_attached :bulk

    validates :description, presence: true
end
