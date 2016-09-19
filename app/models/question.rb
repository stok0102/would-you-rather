class Question < ApplicationRecord
  validates_presence_of :option_one, :option_two
end
