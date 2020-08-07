class Question < ApplicationRecord
  belongs_to :user
  has_many :options
  has_many :comments
end
