class Comment < ActiveRecord::Base
  
  attr_accessible :body, :commenter, :post
  belongs_to :post

  validates :commenter, presence: true
  validates :body, length: { maximum: 800}, presence: true
  validates :post, presence: true 
   

 
end
