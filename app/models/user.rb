class User < ActiveRecord::Base
  has_many :comments # authored comments
  has_many :posts, :foreign_key => 'author_id'    # authored posts

  has_many :commented_posts, :through => :comments, :source => :post
end
