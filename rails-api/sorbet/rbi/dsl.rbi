# Path: "./app/models/comment.rb//plugin-generated|0.rbi":
class Comment;
# typed: strong
  sig{returns String}
  attr_accessor :name
end;
# Path: "./app/models/comment.rb//plugin-generated|1.rbi":
class Comment;
# typed: strong
  sig{returns String}
  attr_accessor :message
end;
# Path: "./app/models/comment.rb//plugin-generated|2.rbi":
class Comment;
end;
# Path: "./app/models/post.rb//plugin-generated|0.rbi":
class Post;
# typed: strong
  sig{returns String}
  attr_accessor :title
end;
# Path: "./app/models/post.rb//plugin-generated|1.rbi":
class Post;
# typed: strong
  sig{returns String}
  attr_accessor :body
end;
# Path: "./app/models/post.rb//plugin-generated|2.rbi":
class Post;
# typed: strong
  sig{returns Integer}
  attr_accessor :review
end;
# Path: "./app/models/post.rb//plugin-generated|3.rbi":
class Post;
# typed: strong
  sig{returns String}
  attr_accessor :something
end;
# Path: "./app/models/post.rb//plugin-generated|4.rbi":
class Post;
# typed: strong
  sig{returns Mongoid::Association::Referenced::HasAndBelongsToMany::Proxy}
  attr_reader :comments
  sig{params(comments: T::Array[Comment]).returns T::Array[Comment]}
  attr_writer :comments
end;
# Path: "./app/models/post.rb//plugin-generated|5.rbi":
class Post;
# typed: strong
  sig{returns Mongoid::Association::Referenced::HasOne::Proxy}
  attr_reader :hero
  sig{params(hero: Post).returns Post}
  attr_writer :hero
end;
# Path: "./app/models/post.rb//plugin-generated|6.rbi":
class Post;
# typed: strict
  sig{returns Mongoid::Criteria}
  def asd(); end
  sig{returns Mongoid::Criteria}
  def self.asd(); end
end;
