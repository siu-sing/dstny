class Question < ApplicationRecord
  belongs_to :user
  has_many :options
  has_many :comments

  accepts_nested_attributes_for :options

  #testing for option radio buttons in question/show
  # def display_option
  #   self.options.each do |option|

  #     "#{option.option_text}"
  #   end
  # end
end
