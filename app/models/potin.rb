class Potin < ApplicationRecord
  belongs_to :user
  has_many :tags
  has_many :city
  has_many :comments

  validates :title,
    presence: true,
    length: { in: 3..14  }

  validates :content,
    presence: true
end
