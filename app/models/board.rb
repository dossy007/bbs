class Board < ApplicationRecord
  has_many :tags
  has_many :categories,through: :tags
  has_many :comments


  #validation
  validates :title, presence: true
end