class Question < ApplicationRecord
  validates_presence_of :option_one, :option_two
  has_many :comments
  
  def self.search(search)
    if search
      where('category LIKE ?', "%#{search}%")
    else
      where(nil)
    end
  end
end
