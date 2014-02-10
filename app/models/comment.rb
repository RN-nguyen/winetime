class Comment < ActiveRecord::Base
  
  attr_accessible :body, :commenter, :post
  belongs_to :post

  validates :author, presence: true
  validates :message, length: { maximum: 800}, presence: true
  validates :post, presence: true 
   before_validation :set_author_to_anonymous_if_blank

 
end
