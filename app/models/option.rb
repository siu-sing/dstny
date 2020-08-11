class Option < ApplicationRecord
  belongs_to :question
  validates :option_text, presence: true
end
