class User < ActiveRecord::Base
  attr_accessible :password, :about, :delay, :email, :max_visit, :min_away,
                  :no_procast, :password_digest, :show_dead, :username,
                  :emails_attributes

  has_many :emails
  accepts_nested_attributes_for :emails, :reject_if => :all_blank

  has_many :comment_votes
  has_many :post_votes
  has_many :posts
  has_many :comments
  has_many :save_stories

  has_secure_password
end