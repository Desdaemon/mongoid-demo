# typed: true

# Post.
class Post < Mongoid::GlobalDiscriminatorKeyAssignment::InvalidFieldHost
  extend T::Sig
  include Mongoid::Document
  store_in asd: 'asd'

  sig {params(asd: Hash).void}
  sig {params(asd: Array).void}
  def foo(asd)
  end

  before_destroy do
    puts 'Hello'
  end

  field :title, type: String
  field :body, type: String
  field :review, type: Integer
  field :something, type: String, default: ''

  has_and_belongs_to_many :comments, dependent: :destroy
  has_one :hero, class_name: 'Post'

  validate :title
  validates
  validates_associated

  scope :asd, -> { where :review.gt => 5 }
  default_scope where :review.gt => 0

  index({ title: 1, body: 1 }, unique: true)
  index title: 1
end
