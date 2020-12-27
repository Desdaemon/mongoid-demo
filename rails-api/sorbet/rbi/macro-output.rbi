# Path: "./app/models/comment.rb//plugin-generated|0.rbi":
class Comment;
#typed: strong
sig{returns T.nilable(String)}
attr_accessor :name
end;
# Path: "./app/models/comment.rb//plugin-generated|1.rbi":
class Comment;
#typed: strong
sig{returns T.nilable(String)}
attr_accessor :message
end;
# Path: "./app/models/comment.rb//plugin-generated|2.rbi":
class Comment;

  #typed: strong
  sig{returns Post}
  attr_accessor :post
end;
# Path: "./app/models/post.rb//plugin-generated|0.rbi":
class Post;
#typed: strong
sig{returns T.nilable(String)}
attr_accessor :title
end;
# Path: "./app/models/post.rb//plugin-generated|1.rbi":
class Post;
#typed: strong
sig{returns T.nilable(String)}
attr_accessor :body
end;
# Path: "./app/models/post.rb//plugin-generated|2.rbi":
class Post;
#typed: strong
sig{returns T.nilable(Integer)}
attr_accessor :review
end;
# Path: "./app/models/post.rb//plugin-generated|3.rbi":
class Post;
#typed: strong
#
# Defaults to ''
sig{returns String}
attr_accessor :something
end;
# Path: "./app/models/post.rb//plugin-generated|4.rbi":
class Post;

  #typed: strong
  #dependent: :destroy
  sig{returns ::Mongoid::Association::Referenced::HasAndBelongsToMany::Proxy}
  attr_accessor :comments
end;
# Path: "./app/models/post.rb//plugin-generated|5.rbi":
class Post;

  #typed: strong
  #dependent: None
  sig{returns T.all(::Mongoid::Association::Referenced::HasOne::Proxy, Post)}
  attr_accessor :hero
end;
