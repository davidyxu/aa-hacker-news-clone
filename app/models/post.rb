class Post < ActiveRecord::Base
  attr_accessible :author_id, :body, :link, :parent_id, :title

  belongs_to :author, :class_name => 'User'
  belongs_to :parent, :class_name => 'Post'

  has_many :comments
  has_many :post_votes
  has_many :users, :through => :post_votes
end
