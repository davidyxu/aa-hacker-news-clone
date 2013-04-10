class Email < ActiveRecord::Base
  attr_accessible :email_address

  belongs_to :user
end
