# Re-exports several methods that were not provided when including
# [`Mongoid::Document`](https://docs.mongodb.com/mongoid/master/api/Mongoid/Document.html)for Solargraph and other code-completion tools.
# Note that you still need to manually include [`Mongoid::Document`](https://docs.mongodb.com/mongoid/master/api/Mongoid/Document.html) and other modules.
# @example Extend this module in models via the @!parse directive:
#   class Article
#     # @!parse extend ModelBase
#     include Mongoid::Document
#   end
module ModelBase
  # @!parse
  #   extend Mongoid::Findable
  #   extend Mongoid::Persistable
  #   include Mongoid::Persistable::Deletable::ClassMethods
  #   include Mongoid::Persistable::Destroyable::ClassMethods
  #   include Mongoid::Clients::Sessions::ClassMethods
  #   include Mongoid::Criteria::Includable
  #   include Mongoid::Scopable::ClassMethods
  #   include Mongoid::Indexable::ClassMethods

  # Custom definitions of #create that gives correct hinting
  # for the output based on the input.
  # @!method create(attributes, &block)
  #   Create a new document. This will instantiate a new document and insert it in a single call. Will always return the document whether save passed or not.
  #   @yieldparam [self]
  #   @overload self.create(attributes = nil, &block = nil)
  #     @param attributes [Hash]
  #     @return [self]
  #   @overload self.create(*array = nil)
  #     @param array [Array<Hash>]
  #     @return [Array<self>]
  # @!method create!(attributes, &block)
  #   Create a new document. This will instantiate a new document and insert it in a single call. Will always return the document whether save passed or not, and if validation fails an error will be raised.
  #   @yieldparam [self]
  #   @overload self.create!(attributes = nil, &block = nil)
  #     @param attributes [Hash]
  #     @return [self]
  #   @overload self.create!(*array = nil)
  #     @param array [Array<Hash>]
  #     @return [Array<self>]

  # @!method where(*args)
  #   This is the general entry point for most MongoDB queries. This either creates a standard field: value selection, and expanded selection with the use of hash methods, or a $where selection if a string is provided.
  #   @param args [String, Hash] The javascript or standard selection.
  #   @return [Mongoid::Criteria] The cloned selectable.
  #   @raise [UnsupportedJavascript] If provided a string and the criteria is embedded.
end
