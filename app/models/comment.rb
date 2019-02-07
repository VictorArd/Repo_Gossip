class Comment < ApplicationRecord
  belongs_to :potin
  belongs_to :user
end
