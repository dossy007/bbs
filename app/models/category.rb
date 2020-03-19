class Category < ApplicationRecord
  has_many :tags
  has_many :boards,through: :tags
end
