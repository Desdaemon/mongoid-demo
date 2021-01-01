# typed: true
class Comment
  include Mongoid::Document

  field :name, type: String
  field :message, type: String

  belongs_to :post do
    T.reveal_type(self)
    def foo
      T.reveal_type(self)
      'asd'
    end
  end
end
