# typed: true
class Comment
  include Mongoid::Document

  field :name, type: String
  field :message, type: String

  belongs_to :post, class_name: 'Post'
end
