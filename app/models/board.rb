class Board < ApplicationRecord
  has_many :tags
  has_many :categories,through: :tags
end