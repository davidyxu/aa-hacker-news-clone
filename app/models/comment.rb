class Comment < ActiveRecord::Base
  attr_accessible :parent_id, :post_id, :author_id, :body

  belongs_to :post
  belongs_to :parent, :class_name => 'Comment'
  belongs_to :author, :class_name => 'User'

  has_many :comment_votes
  has_many :users, :through => :comment_votes
end
