# typed: strict
class Comment < Mongoid::GlobalDiscriminatorKeyAssignment::InvalidFieldHost
  include Mongoid::Document

  field :name, type: String
  field :message, type: String

  belongs_to :post
end
