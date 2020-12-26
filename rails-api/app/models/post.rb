class Post
  # @!parse extend ModelBase
  include Mongoid::Document

  # @!attribute title
  #   @return [String]
  field :title, type: String

  # @!attribute body
  #   @return [String]
  field :body, type: String

  has_many :comments, dependent: :destroy
end
