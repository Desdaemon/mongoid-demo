# typed: true

# Post.
class Post
  include Mongoid::Document

  field :title, type: String
  field :body, type: String
  field :review, type: Integer
  field :something, type: String, default: ''

  has_and_belongs_to_many :comments, dependent: :destroy
  has_one :hero, class_name: 'Post'

  scope :asd, -> { where review: { '$gt': 5 } }
  default_scope where review: { '$gt': 0 }

  index({ title: 1, body: 1 }, unique: true)
  index title: 1

  def foo
    comments.to_a
  end
end
