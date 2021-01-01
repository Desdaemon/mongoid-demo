# typed: strict

# Post.
class Post
  extend T::Sig
  include Mongoid::Document
  store_in asd: 'asd'

  field :title, type: String
  field :body, type: String
  field :review, type: Integer
  field :something, type: String, default: ''
  has_many :people do
  end

  has_one :hero, class_name: 'Post'

  scope :asd, -> { where :review.gt => 5 }
  default_scope where :review.gt => 0

  index({ title: 1, body: 1 }, unique: true)
  index title: 1
  sig {returns(Symbol)}
  def people
    sig {returns(T::Array[Integer])}
    def foo
      [123]
    end
  end
end
