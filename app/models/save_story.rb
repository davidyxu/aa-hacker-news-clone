class SaveStory < ActiveRecord::Base
  attr_accessible :user_id, :post_id

  belongs_to :user
  belongs_to :post
  # attr_accessible :title, :body
end