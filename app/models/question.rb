class Question < ApplicationRecord
  belongs_to :user
  has_many :options, dependent: :destroy
  has_many :comments

  accepts_nested_attributes_for :options

  has_many_attached :question_images
end
