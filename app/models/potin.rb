class Potin < ApplicationRecord
  belongs_to :user
  has_many :tags
end
