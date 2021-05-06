class Product < ApplicationRecord
    has_one_attached :avatar
    has_many_attached :bulk

end
