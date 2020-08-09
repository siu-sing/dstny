class Question < ApplicationRecord
  belongs_to :user
  has_many :options, dependent: :destroy
  has_many :comments, dependent: :destroy 
  # dependent: :destroy means the comments related 
  # to the specific question in mention get deleted if the question does.
  # https://web-crunch.com/posts/lets-build-with-ruby-on-rails-blog-with-comments
  accepts_nested_attributes_for :options

  has_many_attached :question_images
end
