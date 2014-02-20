class Comment < ActiveRecord::Base
  
  attr_accessible :body, :commenter, :post
  belongs_to :post

  validates :commenter, presence: true
  validates :body, length: { maximum: 800}, presence: true
  validates :post, presence: true 
   
  before_validation :set_author_to_anonymous_if_blank
  
  private

  def set_author_to_anonymous_if_blank
    if self.author.blank?
      self.author = 'Anonymous'
    end
  end
  
end
