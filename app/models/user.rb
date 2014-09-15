class User < ActiveRecord::Base
  attr_accessible :id, :email, :first_name, :last_name, :password, :username
  has_many :user_posts
end
