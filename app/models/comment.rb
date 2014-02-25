class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user


  # 4.1.1 Methods Added by belongs_to
  # When you declare a belongs_to association, the declaring class automatically gains four methods related to the association:

  # association(force_reload = false)
  # association=(associate)
  # build_association(attributes = {})
  # create_association(attributes = {})
end

# comment = Comment.first
# comment.post(false)
# comment.post = the_post
# comment.build_post({ :user_id => ...., .... })  # in memory
# comment.create_post  # in database


# p = Post.first
# commment.post = p


