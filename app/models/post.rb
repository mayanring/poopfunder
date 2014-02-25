class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :author, :class_name => "User"

  # all of the users that have commented on this post
  # I WANT COMMENTS
  has_many :commenters, :through => :comments, :source => :user
end
