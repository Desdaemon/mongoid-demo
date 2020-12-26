# typed: strong
# typed: true
class Post
  include Mongoid::Document

  sig { returns(String) }
  def title; end

  sig { params(title: String).returns(String) }
  def title=(title); end

  sig { returns(String) }
  def body; end

  sig { params(body: String).returns(String) }
  def body=(body); end

  sig { returns(T::Array[Comment]) }
  def comments; end
end

# typed: true
class Comment
  include Mongoid::Document

  sig { returns(String) }
  def name; end

  sig { params(name: String).returns(String) }
  def name=(name); end

  sig { returns(String) }
  def message; end

  sig { params(message: String).returns(String) }
  def message=(message); end

  sig { returns(Post) }
  def post; end
end

# typed: strict
# 
# Re-exports several methods that were not provided when including
# [`Mongoid::Document`](https://docs.mongodb.com/mongoid/master/api/Mongoid/Document.html)for Solargraph and other code-completion tools.
# Note that you still need to manually include [`Mongoid::Document`](https://docs.mongodb.com/mongoid/master/api/Mongoid/Document.html) and other modules.
# @example Extend this module in models via the @!parse directive:
#   class Article
#     # @!parse extend ModelBase
#     include Mongoid::Document
#   end
module ModelBase
  include Mongoid::Persistable::Deletable::ClassMethods
  include Mongoid::Persistable::Destroyable::ClassMethods
  include Mongoid::Clients::Sessions::ClassMethods
  include Mongoid::Criteria::Includable
  include Mongoid::Scopable::ClassMethods
  include Mongoid::Indexable::ClassMethods
  extend Mongoid::Findable
  extend Mongoid::Persistable

  # sord omit - no YARD type given for "attributes", using T.untyped
  # sord omit - no YARD return type given, using T.untyped
  # Create a new document. This will instantiate a new document and insert it in a single call. Will always return the document whether save passed or not.
  sig { params(attributes: T.untyped, block: T.proc.void).returns(T.untyped) }
  def create(attributes, &block); end

  # sord omit - no YARD type given for "attributes", using T.untyped
  # sord omit - no YARD return type given, using T.untyped
  # Create a new document. This will instantiate a new document and insert it in a single call. Will always return the document whether save passed or not, and if validation fails an error will be raised.
  sig { params(attributes: T.untyped, block: T.proc.void).returns(T.untyped) }
  def create!(attributes, &block); end

  # sord warn - Mongoid::Criteria wasn't able to be resolved to a constant in this project
  # This is the general entry point for most MongoDB queries. This either creates a standard field: value selection, and expanded selection with the use of hash methods, or a $where selection if a string is provided.
  # 
  # _@param_ `args` — The javascript or standard selection.
  # 
  # _@return_ — The cloned selectable.
  sig { params(args: T.any(String, T::Hash[T.untyped, T.untyped])).returns(Mongoid::Criteria) }
  def where(*args); end

  # sord omit - no YARD type given for "**kwargs", using T.untyped
  # sord omit - no YARD return type given, using T.untyped
  # _@param_ `name`
  sig { params(name: Symbol, kwargs: T.untyped).returns(T.untyped) }
  def field(name, **kwargs); end
end

# typed: strict
class ApplicationJob < ActiveJob::Base
end

# typed: strict
class ApplicationMailer < ActionMailer::Base
end

# typed: false
class PostsController < ApplicationController
  # sord omit - no YARD return type given, using T.untyped
  # GET /posts
  sig { returns(T.untyped) }
  def index; end

  # sord omit - no YARD return type given, using T.untyped
  # GET /posts/1
  sig { returns(T.untyped) }
  def show; end

  # sord omit - no YARD return type given, using T.untyped
  # POST /posts
  sig { returns(T.untyped) }
  def create; end

  # sord omit - no YARD return type given, using T.untyped
  # PATCH/PUT /posts/1
  sig { returns(T.untyped) }
  def update; end

  # sord omit - no YARD return type given, using T.untyped
  # DELETE /posts/1
  sig { returns(T.untyped) }
  def destroy; end

  # sord omit - no YARD return type given, using T.untyped
  # Use callbacks to share common setup or constraints between actions.
  sig { returns(T.untyped) }
  def set_post; end

  # sord omit - no YARD return type given, using T.untyped
  # Only allow a trusted parameter "white list" through.
  sig { returns(T.untyped) }
  def post_params; end
end

# typed: false
class CommentsController < ApplicationController
  # sord omit - no YARD return type given, using T.untyped
  # GET /comments
  sig { returns(T.untyped) }
  def index; end

  # sord omit - no YARD return type given, using T.untyped
  # GET /comments/1
  sig { returns(T.untyped) }
  def show; end

  # sord omit - no YARD return type given, using T.untyped
  # POST /comments
  sig { returns(T.untyped) }
  def create; end

  # sord omit - no YARD return type given, using T.untyped
  # PATCH/PUT /comments/1
  sig { returns(T.untyped) }
  def update; end

  # sord omit - no YARD return type given, using T.untyped
  # DELETE /comments/1
  sig { returns(T.untyped) }
  def destroy; end

  # sord omit - no YARD return type given, using T.untyped
  # Use callbacks to share common setup or constraints between actions.
  sig { returns(T.untyped) }
  def set_comment; end

  # sord omit - no YARD return type given, using T.untyped
  # Only allow a trusted parameter "white list" through.
  sig { returns(T.untyped) }
  def comment_params; end
end

# typed: ignore
module ApplicationCable
  class Channel < ActionCable::Channel::Base
  end

  class Connection < ActionCable::Connection::Base
  end
end

# typed: strict
class ApplicationController < ActionController::API
end
