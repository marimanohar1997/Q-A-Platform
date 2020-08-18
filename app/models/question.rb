class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  scope :latest ,->{order('updated_at desc')}
  validates :title, presence: true
  validates :description, presence: true
  
  is_impressionable



  def self.search(search) 
    if search 
      Question.where('lower(title) LIKE lower(?) OR lower(description) LIKE lower(?)', "%#{search}%", "%#{search}%")
    else
      Question.all 
    end
  end

end
