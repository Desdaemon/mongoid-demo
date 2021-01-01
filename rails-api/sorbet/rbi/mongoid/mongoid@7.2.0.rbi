# typed: true

class BSON::Document < ::Hash
  def initialize(elements = T.unsafe(nil)); end

  def [](key); end
  def []=(key, value); end
  def delete(key, &block); end
  def dig(*keys); end
  def fetch(key, *args, &block); end
  def has_key?(key); end
  def has_value?(value); end
  def include?(key); end
  def key?(key); end
  def member?(key); end
  def merge(other, &block); end
  def merge!(other); end
  def slice(*keys); end
  def transform_keys; end
  def update(other); end
  def value(value); end

  private

  # def convert_key(key); end
  # def convert_value(value); end
end

class BSON::ObjectId
  include(::Comparable)
  include(::BSON::JSON)
  include(::Mongoid::Extensions::ObjectId)
  extend(::Mongoid::Extensions::ObjectId::ClassMethods)

  def <=>(other); end
  def ==(other); end
  def ===(other); end
  def as_extended_json(**options); end
  def as_json(options = T.unsafe(nil)); end
  def bson_type; end
  def eql?(other); end
  def generation_time; end
  def hash; end
  def inspect; end
  def marshal_dump; end
  def marshal_load(data); end
  def to_bson(buffer = T.unsafe(nil), validating_keys = T.unsafe(nil)); end
  def to_s; end
  def to_str; end
  def to_time; end

  private

  # def generate_data; end
  # def initialize_copy(other); end
  # def repair; end

  class << self
    sig {params(buffer: T.untyped, options: T::Hash[T.untyped, T.untyped]).returns BSON::ObjectId}
    def from_bson(buffer, **options); end
    sig {params(data: T.untyped).returns BSON::ObjectId}
    def from_data(data); end
    sig {params(string: String).returns BSON::ObjectId}
    def from_string(string); end
    sig {params(time: Time, options: T.nilable(T::Hash[T.untyped, T.untyped])).returns BSON::ObjectId}
    def from_time(time, options = T.unsafe(nil)); end
    sig {params(string: String).returns T::Boolean}
    def legal?(string); end
    def repair(object); end
  end
end

BSON::ObjectId::BSON_TYPE = T.let(T.unsafe(nil), String)

class Boolean
  extend(::Mongoid::Criteria::Queryable::Extensions::Boolean::ClassMethods)
end

module Mongoid
  extend(::Forwardable)
  extend(::Mongoid::Loggable)
  extend(::Mongoid)
  extend(::Mongoid::GlobalDiscriminatorKeyAssignment)
  
  def app_name(*args, &block); end
  def app_name=(*args, &block); end
  def app_name?(*args, &block); end
  def background_indexing(*args, &block); end
  def background_indexing=(*args, &block); end
  def background_indexing?(*args, &block); end
  def belongs_to_required_by_default(*args, &block); end
  def belongs_to_required_by_default=(*args, &block); end
  def belongs_to_required_by_default?(*args, &block); end
  sig { params(name: T.untyped).returns(::Mongo::Client) }
  def client(name); end
  def clients(*args, &block); end
  sig { returns(Config) }
  def configure; end
  def configured?(*args, &block); end
  def connect_to(*args, &block); end
  sig { returns(::Mongo::Client) }
  def default_client; end
  def destructive_fields(*args, &block); end
  sig { returns(T::Boolean) }
  def disconnect_clients; end
  def discriminator_key(*args, &block); end
  def discriminator_key=(*args, &block); end
  def discriminator_key?(*args, &block); end
  def duplicate_fields_exception(*args, &block); end
  def duplicate_fields_exception=(*args, &block); end
  def duplicate_fields_exception?(*args, &block); end
  def include_root_in_json(*args, &block); end
  def include_root_in_json=(*args, &block); end
  def include_root_in_json?(*args, &block); end
  def include_type_for_serialization(*args, &block); end
  def include_type_for_serialization=(*args, &block); end
  def include_type_for_serialization?(*args, &block); end
  def join_contexts(*args, &block); end
  def join_contexts=(*args, &block); end
  def join_contexts?(*args, &block); end
  def load!(*args, &block); end
  def load_configuration(*args, &block); end
  def log_level=(*args, &block); end
  def log_level?(*args, &block); end
  def models(*args, &block); end
  def options=(*args, &block); end
  def override_client(*args, &block); end
  def override_database(*args, &block); end
  def preload_models(*args, &block); end
  def preload_models=(*args, &block); end
  def preload_models?(*args, &block); end
  def purge!(*args, &block); end
  def raise_not_found_error(*args, &block); end
  def raise_not_found_error=(*args, &block); end
  def raise_not_found_error?(*args, &block); end
  def register_model(*args, &block); end
  def running_with_passenger?(*args, &block); end
  def scope_overwrite_exception(*args, &block); end
  def scope_overwrite_exception=(*args, &block); end
  def scope_overwrite_exception?(*args, &block); end
  def time_zone(*args, &block); end
  def truncate!(*args, &block); end
  def use_activesupport_time_zone(*args, &block); end
  def use_activesupport_time_zone=(*args, &block); end
  def use_activesupport_time_zone?(*args, &block); end
  def use_utc(*args, &block); end
  def use_utc=(*args, &block); end
  def use_utc?(*args, &block); end
end

module Mongoid::Association
  include(::Mongoid::Association::Referenced::Syncable)
  extend(::ActiveSupport::Concern)

  include(::Mongoid::Association::Embedded::Cyclic)
  include(::Mongoid::Association::Referenced::AutoSave)
  include(::Mongoid::Association::Referenced::CounterCache)
  include(::Mongoid::Association::Accessors)
  include(::Mongoid::Association::Depending)
  include(::Mongoid::Association::Builders)
  include(::Mongoid::Association::Macros)
  include(::Mongoid::Association::Reflections)

  mixes_in_class_methods(::Mongoid::Association::Referenced::Syncable::ClassMethods)

  attr_accessor :_association
  sig {returns Symbol}
  def association_name; end
  sig { returns(T::Boolean) }
  def embedded?; end
  sig { returns(T::Boolean) }
  def embedded_many?; end
  sig { returns(T::Boolean) }
  def embedded_one?; end
  sig { returns(T::Boolean) }
  def referenced_many?; end
  sig { returns(T::Boolean) }
  def referenced_one?; end
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def reload_relations; end
end

module Mongoid::Association::Accessors
  extend(::ActiveSupport::Concern)

  def __build__(name, object, association, selected_fields = T.unsafe(nil)); end
  def create_relation(object, association, selected_fields = T.unsafe(nil)); end
  def reset_relation_criteria(name); end
  def set_relation(name, relation); end

  private

  # def _mongoid_filter_selected_fields(assoc_key); end
  # def get_relation(name, association, object, reload = T.unsafe(nil)); end
  # def needs_no_database_query?(object, association); end
  # def parse_args(*args); end
  # def without_autobuild; end
  # def without_autobuild?; end

  class << self
    def define_builder!(association); end
    def define_creator!(association); end
    def define_existence_check!(association); end
    def define_getter!(association); end
    def define_ids_getter!(association); end
    def define_ids_setter!(association); end
    def define_setter!(association); end
  end
end

module Mongoid::Association::Bindable
  include(::Mongoid::Threaded::Lifecycle)
  extend(::Mongoid::Threaded::Lifecycle::ClassMethods)

  def initialize(base, target, association); end

  def _association; end
  def _base; end
  def _target; end
  def binding; end

  private

  # def bind_foreign_key(keyed, id); end
  # def bind_from_relational_parent(doc); end
  # def bind_inverse(doc, inverse); end
  # def bind_polymorphic_inverse_type(typed, name); end
  # def bind_polymorphic_type(typed, name); end
  # def check_inverse!(doc); end
  # def record_id(_base); end
  # def set_base_association; end
  # def unbind_from_relational_parent(doc); end
end

module Mongoid::Association::Builders
  extend(::ActiveSupport::Concern)

  private

  # def parse_args(*args); end

  class << self
    def define_builder!(association); end
    def define_creator!(association); end
  end
end

module Mongoid::Association::Constrainable
  def convert_to_foreign_key(object); end

  private

  # def convert_polymorphic(object); end
end

module Mongoid::Association::Depending
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Association::Depending::ClassMethods)

  def apply_delete_dependencies!; end

  private

  # def _dependent_delete_all!(association); end
  # def _dependent_destroy!(association); end
  # def _dependent_nullify!(association); end
  # def _dependent_restrict_with_error!(association); end
  # def _dependent_restrict_with_exception!(association); end

  class << self
    def define_dependency!(association); end
    def validate!(association); end
  end
end

module Mongoid::Association::Depending::ClassMethods
  def _all_dependents; end
end

Mongoid::Association::Depending::STRATEGIES = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Association::EagerLoadable
  def eager_load(docs); end
  def eager_loadable?; end
  def preload(relations, docs); end
end

module Mongoid::Association::Embedded
end

module Mongoid::Association::Embedded::Batchable
  include(::Mongoid::Positional)

  # Clear all of the docs out of the association in a single swipe.
  sig { params(docs: T::Array[Mongoid::Document]).returns([]) }
  def batch_clear(docs); end
  # Insert new documents as a batch push ($push with $each).
  # This ensures that all callbacks are run at the appropriate
  # time and only 1 request is made to the database.
  sig { params(docs: T::Array[Mongoid::Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
  def batch_insert(docs); end
  # Batch remove the provided documents as a $pullAll.
  #
  # `method` is either `:delete` (default) or `:destroy`.
  sig { params(docs: T::Array[Mongoid::Document], method: Symbol).void }
  def batch_remove(docs, method = :delete); end
  # Batch replace the provided documents as a $set.
  sig { params(docs: T::Array[Mongoid::Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
  def batch_replace(docs); end

  private

  sig { params(sets: T::Array[T::Hash[T.untyped, T.untyped]]).returns(T.untyped) }
  def add_atomic_sets(sets); end
  sig { params(docs: T::Array[Mongoid::Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
  def execute_batch_set(docs); end
  sig { params(docs: T::Array[Mongoid::Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
  def execute_batch_push(docs); end
  sig { returns(T::Boolean) }
  def insertable?; end
  sig { returns(T::Boolean) }
  def inserts_valid; end
  sig { params(value: T::Boolean).returns(T::Boolean) }
  def inserts_valid=(value); end
  sig { params(docs: T::Array[T.any(T::Hash[T.untyped, T.untyped], Mongoid::Document)]).returns(T::Array[Mongoid::Document]) }
  def normalize_docs(docs); end
  sig { returns(String) }
  attr_accessor :path
  sig { params(docs: T::Array[Mongoid::Document]).returns(T::Enumerable[T.untyped]) }
  def post_process_batch_insert(docs); end
  sig { params(docs: T::Array[Mongoid::Document], method: Symbol).returns(T::Array[Mongoid::Document]) }
  def post_process_batch_remove(docs, method); end
  sig { params(docs: T::Array[Mongoid::Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
  def pre_process_batch_insert(docs); end
  sig { params(docs: T::Array[Mongoid::Document], method: Symbol).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
  def pre_process_batch_remove(docs, method); end
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def selector; end
end

module Mongoid::Association::Embedded::Cyclic
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Association::Embedded::Cyclic::ClassMethods)
end

module Mongoid::Association::Embedded::Cyclic::ClassMethods
  # Create a cyclic embedded association that creates a tree
  # hierarchy for the document and many embedded child documents.
  #
  # This provides the default nomenclature for accessing
  # a parent document or its children.
  def recursively_embeds_many(options = T.unsafe(nil)); end
  # Create a cyclic embedded association that creates a single
  # self referencing relationship for a parent and a single child.
  #
  # This provides the default nomenclature for accessing
  # a parent document or its children.
  def recursively_embeds_one(options = T.unsafe(nil)); end

  private

  def cyclic_child_name(many = T.unsafe(nil)); end
  def cyclic_parent_name; end
end

class Mongoid::Association::Embedded::EmbeddedIn
  include(::Mongoid::Association::Constrainable)
  include(::Mongoid::Association::Options)
  include(::Mongoid::Association::Relatable)
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Embedded::EmbeddedIn::Buildable)

  sig { returns TrueClass }
  def embedded?; end
  sig {returns String}
  def key; end
  sig { params(attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Mongoid::Association::Nested::One) }
  def nested_builder(attributes, options); end
  sig { returns(T::Boolean) }
  def polymorphic?; end
  sig {returns NilClass}
  def primary_key; end
  sig {returns Proxy}
  def relation; end
  sig { returns(T.self_type) }
  def setup!; end
  sig { returns FalseClass }      
  def stores_foreign_key?; end
  sig {returns FalseClass}
  def validation_default; end

  private

  # def determine_inverses(other); end
  # def polymorphic_inverses(other = T.unsafe(nil)); end
  # def relation_complements; end
  # def setup_instance_methods!; end
end

Mongoid::Association::Embedded::EmbeddedIn::ASSOCIATION_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Embedded::EmbeddedIn::Binding
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Bindable)

  def bind_one; end
  def unbind_one; end
end

module Mongoid::Association::Embedded::EmbeddedIn::Buildable
  include(::Mongoid::Threaded::Lifecycle)
  extend(::Mongoid::Threaded::Lifecycle::ClassMethods)

  # This builder doesn't actually build anything, just returns
  # the parent since it should already be instantiated.
  def build(base, object, type = T.unsafe(nil), selected_fields = T.unsafe(nil)); end
end

class Mongoid::Association::Embedded::EmbeddedIn::Proxy < ::Mongoid::Association::One
  # Instantiate a new `embedded_in` association.
  sig { params(base: Mongoid::Document, target: Mongoid::Document, association: Mongoid::Association).void }
  def initialize(base, target, association); end

  # Substitutes the supplied target documents
  # for the existing document in the association.
  #
  # **Examples**
  #
  # *Substitute the new document*
  # ```
  # person.name.substitute(new_name)
  # ```
  sig { params(replacement: T.self_type).returns(T.nilable(T.self_type)) }
  def substitute(replacement); end

  private

  # def binding; end
  # def characterize_one(document); end
  # def persistable?; end

  class << self
    def embedded?; end
    def path(document); end
  end
end

Mongoid::Association::Embedded::EmbeddedIn::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[Symbol])

class Mongoid::Association::Embedded::EmbedsMany
  include(::Mongoid::Association::Constrainable)
  include(::Mongoid::Association::Options)
  include(::Mongoid::Association::Relatable)
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Embedded::EmbedsMany::Buildable)

  sig { params(base: Mongoid::Document, target: Mongoid::Document).returns(T.untyped) }
  def criteria(base, target); end
  sig {returns TrueClass}
  def embedded?; end
  sig {returns String}
  def key; end
  sig { params(attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Mongoid::Association::Nested::Many) }
  def nested_builder(attributes, options); end
  sig { params(document: Mongoid::Document).returns(Mongoid::Atomic::Paths::Embedded::Many) }
  def path(document); end
  sig { returns(T::Boolean) }
  def polymorphic?; end
  sig {returns NilClass}
  def primary_key; end
  sig { returns(Proxy) }
  def relation; end
  sig { returns(T.self_type) }
  def setup!; end
  sig { returns(String) }
  def store_as; end
  sig {returns FalseClass}
  def stores_foreign_key?; end
  sig { returns(T.nilable(String)) }
  def type; end
  sig {returns TrueClass}
  def validation_default; end

  private

  # def apply_ordering(criteria); end
  # def determine_inverses(other); end
  # def polymorphic_inverses(other = T.unsafe(nil)); end
  # def relation_complements; end
  # def setup_instance_methods!; end
end

Mongoid::Association::Embedded::EmbedsMany::ASSOCIATION_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Embedded::EmbedsMany::Binding
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Bindable)

  def bind_one(doc); end
  def unbind_one(doc); end
end

module Mongoid::Association::Embedded::EmbedsMany::Buildable
  include(::Mongoid::Threaded::Lifecycle)
  extend(::Mongoid::Threaded::Lifecycle::ClassMethods)

  # Builds the document out of the attributes using the provided
  # association metadata. Instantiates through the factory in order to
  # make sure subclasses and allocation are used if fitting.
  # This case will return many documents.
  sig do
    params(
      base: Object,
      object: Object,
      type: T.nilable(String),
      selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
    ).returns(T::Array[Mongoid::Document])
  end
  def build(base, object, type = T.unsafe(nil), selected_fields = T.unsafe(nil)); end
end

class Mongoid::Association::Embedded::EmbedsMany::Proxy < ::Mongoid::Association::Many
  include(::Mongoid::Positional)
  include(::Mongoid::Association::Embedded::Batchable)

  # Instantiate a new `embeds_many` association.
  sig { params(base: Mongoid::Document, target: T::Array[Mongoid::Document], association: Mongoid::Association).void }
  def initialize(base, target, association); end
  # Appends a document or array of documents to the association.
  # Will set the parent and update the index in the process.
  sig { params(args: T.any(Mongoid::Document, T::Array[Mongoid::Document])).returns(T.self_type) }
  def <<(*args); end
  # Get this association as as its representation in the database.
  sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
  def as_document; end
  # Builds a new document in the association and appends
  # it to the target. Takes an optional type if you want
  # to specify a subclass.
  sig do
    params(
      attributes: T::Hash[T.untyped, T.untyped],
      type: T.nilable(Class),
      block: T.nilable(T.proc.params(a: Mongoid::Document).void)
    ).returns(Mongoid::Document)
  end
  def build(attributes = {}, type = nil, &block); end
  # Clear the association. Will delete the documents from
  # the database if they are already persisted.
  sig { returns(T.self_type) }
  def clear; end
  # Appends an array of documents to the association.
  # Performs a batch insert of the documents instead of
  # persisting one at a time.
  sig { params(docs: T::Array[Mongoid::Document]).returns(T::Array[Mongoid::Document]) }
  def concat(docs); end
  # Returns a count of the number of documents in the association
  # that have actually been persisted to the database.
  #
  # Use `Proxy#size` if you want the total number of documents.
  sig { returns(Integer) }
  def count; end
  # Delete the supplied document from the target.
  # This method is proxied in order to reindex the array
  # after the operation occurs.
  sig { params(document: Mongoid::Document).returns(T.nilable(Mongoid::Document)) }
  def delete(document); end
  # Delete all the documents in the association without
  # running callbacks. Returns the number of documents deleted.
  sig { params(conditions: T::Hash[T.untyped, T.untyped]).returns(Integer) }
  def delete_all(conditions = {}); end
  # Delete all the documents for which the provided block returns true.
  # Returns the association, or an enumerator if no block was provided.
  #
  # **Examples**
  # ```
  # person.addresses.delete_if do |doc|
  #   doc.state == 'GA'
  # end
  # ```
  sig do
    params(block: T.nilable(T.proc.params(d: Mongoid::Document).returns(T::Boolean))).
    returns(T.any(Mongoid::Association::Many, T::Enumerator[Mongoid::Document]))
  end
  def delete_if(&block); end
  # Destroy all the documents in the association whilst running callbacks.
  # Returns the number of documents destroyed.
  sig { params(conditions: T::Hash[T.untyped, T.untyped]).returns(Integer) }
  def destroy_all(conditions = {}); end
  # Determine if any documents in this association exist in the database.
  sig { returns(T::Boolean) }
  def exists?; end
  # Finds a document in this association through
  # several different methods.
  sig { params(args: Object).returns(T.any(T::Array[Mongoid::Document], Mongoid::Document)) }
  def find(*args); end
  # Get all the documents in the association
  # that are loaded into memory.
  sig { returns(T::Array[Mongoid::Document]) }
  def in_memory; end
  # Builds a new document in the association and appends
  # it to the target. Takes an optional type if you want
  # to specify a subclass.
  sig do
    params(
      attributes: T::Hash[T.untyped, T.untyped],
      type: T.nilable(Class),
      block: T.nilable(T.proc.params(a: Mongoid::Document).void)
    ).returns(Mongoid::Document)
  end
  def new(attributes = {}, type = nil, &block); end
  # Pop documents off the association. This can be a
  # single document or multiples, and will automatically
  # persist the changes.
  sig { params(count: T.nilable(Integer)).returns(T.any(Mongoid::Document, T::Array[Mongoid::Document])) }
  def pop(count = nil); end
  # Shift documents off the association. This can be a
  # single document or multiples, and will automatically
  # persist the changes.
  sig { params(count: T.nilable(Integer)).returns(T.any(Mongoid::Document, T::Array[Mongoid::Document])) }
  def shift(count = nil); end
  # Substitutes the supplied target documents for the
  # existing documents in the relation.
  sig { params(docs: T::Array[Mongoid::Document]).returns(Mongoid::Association::Many) }
  def substitute(docs); end
  # Return the association with all previous scoping removed.
  # This is the exact representation of the docs in the database.
  sig { returns(Mongoid::Criteria) }
  def unscoped; end

  private

  # def _unscoped; end
  # def _unscoped=(docs); end
  # def append(document); end
  # def as_attributes; end
  # def binding; end
  # def criteria; end
  # def delete_one(document); end
  # def integrate(document); end
  # def method_missing(name, *args, &block); end
  # def object_already_related?(document); end
  # def persistable?; end
  # def reindex; end
  # def remove_all(conditions = T.unsafe(nil), method = T.unsafe(nil)); end
  # def scope(docs); end

  class << self
    def embedded?; end
    def foreign_key_suffix; end
  end
end

Mongoid::Association::Embedded::EmbedsMany::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Embedded::EmbedsOne
  include(::Mongoid::Association::Constrainable)
  include(::Mongoid::Association::Options)
  include(::Mongoid::Association::Relatable)
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Embedded::EmbedsOne::Buildable)

  def embedded?; end
  def key; end
  def nested_builder(attributes, options); end
  def polymorphic?; end
  def primary_key; end
  def relation; end
  def setup!; end
  def store_as; end
  def stores_foreign_key?; end
  def type; end
  def validation_default; end

  private

  # def determine_inverses(other); end
  # def polymorphic_inverses(other = T.unsafe(nil)); end
  # def relation_complements; end
  # def setup_instance_methods!; end
end

Mongoid::Association::Embedded::EmbedsOne::ASSOCIATION_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Embedded::EmbedsOne::Binding
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Bindable)

  def bind_one; end
  def unbind_one; end
end

module Mongoid::Association::Embedded::EmbedsOne::Buildable
  include(::Mongoid::Threaded::Lifecycle)
  extend(::Mongoid::Threaded::Lifecycle::ClassMethods)

  def build(base, object, _type = T.unsafe(nil), selected_fields = T.unsafe(nil)); end
end

class Mongoid::Association::Embedded::EmbedsOne::Proxy < ::Mongoid::Association::One
  def initialize(base, target, association); end

  def substitute(replacement); end

  private

  # def binding; end
  # def persistable?; end

  class << self
    def embedded?; end
    def path(document); end
  end
end

Mongoid::Association::Embedded::EmbedsOne::Proxy::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

Mongoid::Association::Embedded::EmbedsOne::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

Mongoid::Association::MACRO_MAPPING = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module Mongoid::Association::Macros
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Association::Macros::ClassMethods)

  def associations; end
end
module Mongoid::Association::Macros::ClassMethods
  # Adds a referenced association from the child Document
  # to a Document in another database or collection.
  sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.proc.bind(Mongoid::Association::Referenced::BelongsTo::Proxy).void).void }
  def belongs_to(name, options = {}, &block); end
  # Adds the association back to the parent document.
  # This macro is necessary to set the references from
  # the child back to the parent document. If a child
  # does not define this association calling persistence
  # methods on the child object will cause a save to fail.
  sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.proc.bind(Mongoid::Association::Embedded::EmbeddedIn::Proxy).void).void }
  def embedded_in(name, options = {}, &block); end
  # Adds the association from a parent document to its children.
  # The name of the association needs to be a pluralized form
  # of the child class name.
  sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.proc.bind(String).void).void }
  def embeds_many(name, options = {}, &block); end
  # Adds the association from a parent document to its child.
  # The name of the association needs to be a singular form
  # of the child class name.
  sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.proc.bind(Mongoid::Association::Embedded::EmbedsOne::Proxy).void).void }
  def embeds_one(name, options = {}, &block); end
  sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.proc.bind(Mongoid::Association::Proxy).void).void }
  def has_and_belongs_to_many(name, options = {}, &block); end
  sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.proc.bind(Mongoid::Association::Proxy).void).void }
  def has_many(name, options = T.unsafe(nil), &block); end
  def has_one(name, options = T.unsafe(nil), &block); end

  private

  def define_association!(macro_name, name, options = T.unsafe(nil), &block); end
end

class Mongoid::Association::Many < ::Mongoid::Association::Proxy
  include(::Enumerable)

  def any?(*args, &block); end
  def avg(*args, &block); end
  def blank?; end
  def create(attributes = T.unsafe(nil), type = T.unsafe(nil), &block); end
  def create!(attributes = T.unsafe(nil), type = T.unsafe(nil), &block); end
  def find_or_create_by(attrs = T.unsafe(nil), type = T.unsafe(nil), &block); end
  def find_or_create_by!(attrs = T.unsafe(nil), type = T.unsafe(nil), &block); end
  def find_or_initialize_by(attrs = T.unsafe(nil), type = T.unsafe(nil), &block); end
  def length(*args, &block); end
  def max(*args, &block); end
  def min(*args, &block); end
  def nil?; end
  def respond_to?(name, include_private = T.unsafe(nil)); end
  def scoped; end
  def serializable_hash(options = T.unsafe(nil)); end
  def size(*args, &block); end
  def sum(*args, &block); end
  def unscoped; end

  private

  def _session; end
  def find_or(method, attrs = T.unsafe(nil), type = T.unsafe(nil), &block); end
end

module Mongoid::Association::Marshalable
  def marshal_dump; end
  def marshal_load(data); end
end

module Mongoid::Association::Nested
end

module Mongoid::Association::Nested::Buildable
  def allow_destroy?; end
  def association; end
  def association=(_arg0); end
  def attributes; end
  def attributes=(_arg0); end
  def convert_id(klass, id); end
  def existing; end
  def existing=(_arg0); end
  def options; end
  def options=(_arg0); end
  def reject?(document, attrs); end
  def update_only?; end
end

Mongoid::Association::Nested::DESTROY_FLAGS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Nested::Many
  include(::Mongoid::Association::Nested::Buildable)

  def initialize(association, attributes, options = T.unsafe(nil)); end

  def build(parent, options = T.unsafe(nil)); end

  private

  def destroy(parent, relation, doc); end
  def destroy_document(relation, doc); end
  def destroyable?(attributes); end
  def over_limit?(attributes); end
  def process_attributes(parent, attrs); end
  def update_document(doc, attrs); end
  def update_nested_relation(parent, id, attrs); end
end

class Mongoid::Association::Nested::One
  include(::Mongoid::Association::Nested::Buildable)

  def initialize(association, attributes, options); end

  def build(parent); end
  def destroy; end
  def destroy=(_arg0); end

  private

  def acceptable_id?; end
  def delete?; end
  def destroyable?; end
  def replace?; end
  def update?; end
end

class Mongoid::Association::One < ::Mongoid::Association::Proxy
  def __evolve_object_id__; end
  def clear; end
  def in_memory; end
  def respond_to?(name, include_private = T.unsafe(nil)); end
end

module Mongoid::Association::Options
  def as; end
  def autobuilding?; end
  def autosave; end
  def autosave?; end
  def cascading_callbacks?; end
  def counter_cached?; end
  def cyclic?; end
  def dependent; end
  def forced_nil_inverse?; end
  def indexed?; end
  def inverse_of; end
  def order; end
  def polymorphic?; end
  def primary_key; end
  def store_as; end
  def touch_field; end
  def type; end

  private

  def touchable?; end
end

class Mongoid::Association::Proxy
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Marshalable)
  extend(::Forwardable)
  extend(::Mongoid::Threaded::Lifecycle::ClassMethods)

  def _association; end
  def _association=(_arg0); end
  def _base; end
  def _base=(_arg0); end
  def _target; end
  def _target=(_arg0); end
  def bind_one(*args, &block); end
  def collection_name(*args, &block); end
  def extend_proxies(*extension); end
  def extend_proxy(*_arg0); end
  def foreign_key(*args, &block); end
  def init(base, target, association); end
  def inverse_foreign_key(*args, &block); end
  def klass; end
  def reset_unloaded; end
  def substitutable; end
  def unbind_one(*args, &block); end

  protected

  def characterize_one(document); end
  def collection; end
  def execute_callback(callback, doc); end
  def method_missing(name, *args, &block); end
  def raise_mixed; end
  def raise_unsaved(doc); end

  class << self
    def apply_ordering(criteria, association); end
  end
end

module Mongoid::Association::Referenced
end

module Mongoid::Association::Referenced::AutoSave
  extend(::ActiveSupport::Concern)

  def __autosaving__; end
  def autosaved?; end
  def changed_for_autosave?(doc); end

  class << self
    def define_autosave!(association); end
  end
end

class Mongoid::Association::Referenced::BelongsTo
  include(::Mongoid::Association::Constrainable)
  include(::Mongoid::Association::Options)
  include(::Mongoid::Association::Relatable)
  include(::Mongoid::Association::Referenced::BelongsTo::Buildable)

  def embedded?; end
  def foreign_key; end
  def inverse_type; end
  def nested_builder(attributes, options); end
  def path(document); end
  def polymorphic?; end
  def relation; end
  def relation_complements; end
  def setup!; end
  def stores_foreign_key?; end
  def validation_default; end

  private

  def create_foreign_key_field!; end
  def default_foreign_key_field; end
  def default_primary_key; end
  def determine_inverses(other); end
  def index_spec; end
  def polymorph!; end
  def polymorphic_inverses(other = T.unsafe(nil)); end
  def require_association?; end
  def setup_instance_methods!; end
end

Mongoid::Association::Referenced::BelongsTo::ASSOCIATION_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Referenced::BelongsTo::Binding
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Bindable)

  def bind_one; end
  def unbind_one; end

  private

  def check_polymorphic_inverses!(doc); end
end

module Mongoid::Association::Referenced::BelongsTo::Buildable
  def build(base, object, type = T.unsafe(nil), selected_fields = T.unsafe(nil)); end

  private

  def execute_query(object, type); end
  def query?(object); end
  def query_criteria(object, type); end
end

class Mongoid::Association::Referenced::BelongsTo::Eager < ::Mongoid::Association::Referenced::Eager::Base
  private

  def each_loaded_document(&block); end
  def group_by_key; end
  def key; end
  def keys_by_type_from_docs; end
  def preload; end
end

Mongoid::Association::Referenced::BelongsTo::FOREIGN_KEY_FIELD_TYPE = Object

Mongoid::Association::Referenced::BelongsTo::FOREIGN_KEY_SUFFIX = T.let(T.unsafe(nil), String)

class Mongoid::Association::Referenced::BelongsTo::Proxy < ::Mongoid::Association::One
  include(::Mongoid::Evolvable)

  def initialize(base, target, association); end

  def nullify; end
  def substitute(replacement); end

  private

  def binding; end
  def normalize(replacement); end
  def persistable?; end

  class << self
    def eager_loader(association, docs); end
    def embedded?; end
  end
end

Mongoid::Association::Referenced::BelongsTo::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Association::Referenced::CounterCache
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Association::Referenced::CounterCache::ClassMethods)

  def reset_counters(*counters); end

  class << self
    def define_callbacks!(association); end
  end
end

module Mongoid::Association::Referenced::CounterCache::ClassMethods
  def decrement_counter(counter_name, id); end
  def increment_counter(counter_name, id); end
  def reset_counters(id, *counters); end
  def update_counters(id, counters); end
end

module Mongoid::Association::Referenced::Eager
end

class Mongoid::Association::Referenced::Eager::Base
  def initialize(associations, docs); end

  def run; end

  protected

  def each_loaded_document(&block); end
  def group_by_key; end
  def grouped_docs; end
  def keys_from_docs; end
  def preload; end
  def set_on_parent(id, element); end
  def set_relation(doc, element); end

  private

  def each_loaded_document_of_class(cls, keys); end
  def shift_association; end
end

class Mongoid::Association::Referenced::HasAndBelongsToMany
  include(::Mongoid::Association::Constrainable)
  include(::Mongoid::Association::Options)
  include(::Mongoid::Association::Relatable)
  include(::Mongoid::Association::Referenced::HasAndBelongsToMany::Buildable)

  def bindable?(doc); end
  def criteria(base, id_list = T.unsafe(nil)); end
  def embedded?; end
  def forced_nil_inverse?; end
  def foreign_key; end
  def inverse_foreign_key; end
  def inverse_foreign_key_setter; end
  def nested_builder(attributes, options); end
  def path(document); end
  def relation; end
  def relation_complements; end
  def setup!; end
  def stores_foreign_key?; end
  def validation_default; end

  private

  def create_foreign_key_field!; end
  def default_foreign_key_field; end
  def default_primary_key; end
  def determine_inverses(other); end
  def index_spec; end
  def query_criteria(id_list); end
  def setup_instance_methods!; end
  def setup_syncing!; end
  def synced_destroy; end
  def synced_save; end
  def with_ordering(criteria); end
end

Mongoid::Association::Referenced::HasAndBelongsToMany::ASSOCIATION_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Referenced::HasAndBelongsToMany::Binding
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Bindable)

  def bind_one(doc); end
  def determine_inverse_association(doc); end
  def inverse_record_id(doc); end
  def unbind_one(doc); end
end

module Mongoid::Association::Referenced::HasAndBelongsToMany::Buildable
  def build(base, object, type = T.unsafe(nil), selected_fields = T.unsafe(nil)); end

  private

  def query?(object); end
end

class Mongoid::Association::Referenced::HasAndBelongsToMany::Eager < ::Mongoid::Association::Referenced::Eager::Base
  private

  def group_by_key; end
  def key; end
  def keys_from_docs; end
  def preload; end
  def set_relation(doc, element); end
end

Mongoid::Association::Referenced::HasAndBelongsToMany::FOREIGN_KEY_FIELD_TYPE = Array

Mongoid::Association::Referenced::HasAndBelongsToMany::FOREIGN_KEY_SUFFIX = T.let(T.unsafe(nil), String)

class Mongoid::Association::Referenced::HasAndBelongsToMany::Proxy < ::Mongoid::Association::Referenced::HasMany::Proxy
  def <<(*args); end
  def build(attributes = T.unsafe(nil), type = T.unsafe(nil)); end
  def clear(replacement = T.unsafe(nil)); end
  def concat(documents); end
  def delete(document); end
  def new(attributes = T.unsafe(nil), type = T.unsafe(nil)); end
  def nullify(replacement = T.unsafe(nil)); end
  def nullify_all(replacement = T.unsafe(nil)); end
  def purge(replacement = T.unsafe(nil)); end
  def push(*args); end
  def substitute(replacement); end
  def unscoped; end

  private

  def append(document); end
  def binding; end
  def child_persistable?(doc); end
  def criteria(id_list = T.unsafe(nil)); end
  def unsynced(doc, key); end

  class << self
    def eager_loader(association, docs); end
    def embedded?; end
  end
end

Mongoid::Association::Referenced::HasAndBelongsToMany::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Referenced::HasMany
  include(::Mongoid::Association::Constrainable)
  include(::Mongoid::Association::Options)
  include(::Mongoid::Association::Relatable)
  include(::Mongoid::Association::Referenced::HasMany::Buildable)

  def add_polymorphic_criterion(criteria, object_class); end
  def bindable?(doc); end
  def criteria(base); end
  def embedded?; end
  def foreign_key; end
  def nested_builder(attributes, options); end
  def path(document); end
  def polymorphic?; end
  def relation; end
  def relation_complements; end
  def setup!; end
  def setup_instance_methods!; end
  def stores_foreign_key?; end
  def type; end
  def validation_default; end

  private

  def default_foreign_key_field; end
  def default_primary_key; end
  def determine_inverses(other); end
  def polymorphic_inverses(other); end
  def query_criteria(object, base); end
  def with_inverse_field_criterion(criteria); end
  def with_ordering(criteria); end
  def with_polymorphic_criterion(criteria, base); end
end

Mongoid::Association::Referenced::HasMany::ASSOCIATION_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Referenced::HasMany::Binding
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Bindable)

  def bind_one(doc); end
  def unbind_one(doc); end
end

module Mongoid::Association::Referenced::HasMany::Buildable
  def build(base, object, type = T.unsafe(nil), selected_fields = T.unsafe(nil)); end

  private

  def query?(object); end
end

class Mongoid::Association::Referenced::HasMany::Eager < ::Mongoid::Association::Referenced::Eager::Base
  private

  def group_by_key; end
  def key; end
  def preload; end
  def set_relation(doc, element); end
end

Mongoid::Association::Referenced::HasMany::FOREIGN_KEY_SUFFIX = T.let(T.unsafe(nil), String)

class Mongoid::Association::Referenced::HasMany::Proxy < ::Mongoid::Association::Many
  def initialize(base, target, association); end

  def <<(*args); end
  def build(attributes = T.unsafe(nil), type = T.unsafe(nil)); end
  def clear; end
  def concat(documents); end
  def count(*args, &block); end
  def delete(document); end
  def delete_all(conditions = T.unsafe(nil)); end
  def destroy_all(conditions = T.unsafe(nil)); end
  def each; end
  def exists?; end
  def find(*args); end
  def first(*args, &block); end
  def in_memory(*args, &block); end
  def last(*args, &block); end
  def new(attributes = T.unsafe(nil), type = T.unsafe(nil)); end
  def nullify; end
  def nullify_all; end
  def purge; end
  def push(*args); end
  def reset(*args, &block); end
  def substitute(replacement); end
  def uniq(*args, &block); end
  def unscoped; end

  private

  def already_related?(document); end
  def append(document); end
  def binding; end
  def cascade!(document); end
  def collection; end
  def criteria; end
  def method_missing(name, *args, &block); end
  def persist_delayed(docs, inserts); end
  def persistable?; end
  def remove_all(conditions = T.unsafe(nil), method = T.unsafe(nil)); end
  def remove_not_in(ids); end
  def save_or_delay(doc, docs, inserts); end
  def with_add_callbacks(document, already_related); end

  class << self
    def eager_loader(association, docs); end
    def embedded?; end
  end
end

module Mongoid::Association::Referenced::HasMany::Targets
end

class Mongoid::Association::Referenced::HasMany::Targets::Enumerable
  include(::Enumerable)
  extend(::Forwardable)

  def initialize(target, base = T.unsafe(nil), association = T.unsafe(nil)); end

  def <<(document); end
  def ==(other); end
  def ===(other); end
  def _added; end
  def _added=(_arg0); end
  def _loaded; end
  def _loaded=(_arg0); end
  def _loaded?; end
  def _unloaded; end
  def _unloaded=(_arg0); end
  def any?(*args); end
  def as_json(options = T.unsafe(nil)); end
  def clear; end
  def clone; end
  def delete(document); end
  def delete_if(&block); end
  def each; end
  def empty?; end
  def first(opts = T.unsafe(nil)); end
  def in_memory; end
  def include?(doc); end
  def inspect; end
  def is_a?(*args, &block); end
  def kind_of?(*args, &block); end
  def last(opts = T.unsafe(nil)); end
  def length; end
  def load_all!(*_arg0); end
  def marshal_dump; end
  def marshal_load(data); end
  def push(document); end
  def reset; end
  def reset_unloaded(criteria); end
  def respond_to?(name, include_private = T.unsafe(nil)); end
  def size; end
  def to_json(options = T.unsafe(nil)); end
  def uniq; end

  private

  def method_missing(name, *args, &block); end
  def set_base(document); end
  def unloaded_documents; end
end

Mongoid::Association::Referenced::HasMany::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Referenced::HasOne
  include(::Mongoid::Association::Constrainable)
  include(::Mongoid::Association::Options)
  include(::Mongoid::Association::Relatable)
  include(::Mongoid::Association::Referenced::HasOne::Buildable)

  def bindable?(doc); end
  def embedded?; end
  def foreign_key; end
  def nested_builder(attributes, options); end
  def path(document); end
  def polymorphic?; end
  def relation; end
  def relation_complements; end
  def setup!; end
  def stores_foreign_key?; end
  def type; end
  def validation_default; end

  private

  def default_foreign_key_field; end
  def default_primary_key; end
  def determine_inverses(other); end
  def polymorphic_inverses(other); end
  def setup_instance_methods!; end
end

Mongoid::Association::Referenced::HasOne::ASSOCIATION_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Association::Referenced::HasOne::Binding
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Association::Bindable)

  def bind_one; end
  def unbind_one; end
end

module Mongoid::Association::Referenced::HasOne::Buildable
  def build(base, object, type = T.unsafe(nil), selected_fields = T.unsafe(nil)); end

  private

  def clear_associated(object); end
  def execute_query(object, base); end
  def query?(object); end
  def query_criteria(object, base); end
  def with_polymorphic_criterion(criteria, base); end
end

class Mongoid::Association::Referenced::HasOne::Eager < ::Mongoid::Association::Referenced::Eager::Base
  private

  def group_by_key; end
  def key; end
  def preload; end
end

Mongoid::Association::Referenced::HasOne::FOREIGN_KEY_SUFFIX = T.let(T.unsafe(nil), String)

class Mongoid::Association::Referenced::HasOne::Proxy < ::Mongoid::Association::One
  def initialize(base, target, association); end

  def nullify; end
  def substitute(replacement); end

  private

  def binding; end
  def persistable?; end

  class << self
    def eager_loader(association, docs); end
    def embedded?; end
  end
end

Mongoid::Association::Referenced::HasOne::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Association::Referenced::Syncable
  def _syncable?(association); end
  def _synced; end
  def _synced?(foreign_key); end
  def remove_inverse_keys(association); end
  def update_inverse_keys(association); end
end

module Mongoid::Association::Referenced::Syncable::ClassMethods
  def _synced(association); end

  private

  def synced_destroy(association); end
  def synced_save(association); end
end

module Mongoid::Association::Reflections
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Association::Reflections::ClassMethods)

  def reflect_on_all_association(*macros); end
  def reflect_on_association(name); end
end

module Mongoid::Association::Reflections::ClassMethods
  def reflect_on_all_associations(*macros); end
  def reflect_on_association(name); end
end

module Mongoid::Association::Relatable
  include(::Mongoid::Association::Constrainable)
  include(::Mongoid::Association::Options)

  def initialize(_class, name, opts = T.unsafe(nil), &block); end

  def ==(other); end
  def bindable?(doc); end
  def class_name; end
  def counter_cache_column_name; end
  def create_relation(owner, target); end
  def destructive?; end
  def extension; end
  def foreign_key_check; end
  def foreign_key_setter; end
  def get_callbacks(callback_type); end
  def inverse(other = T.unsafe(nil)); end
  def inverse_association(other = T.unsafe(nil)); end
  def inverse_class; end
  def inverse_class_name; end
  def inverse_klass; end
  def inverse_setter(other = T.unsafe(nil)); end
  def inverse_type; end
  def inverse_type_setter; end
  def inverses(other = T.unsafe(nil)); end
  def key; end
  def klass; end
  def name; end
  def options; end
  def path(document); end
  def relation_class; end
  def relation_class_name; end
  def setter; end
  def type_setter; end
  def validate?; end

  private

  def create_extension!(&block); end
  def default_inverse; end
  def define_autosaver!; end
  def define_builder!; end
  def define_counter_cache_callbacks!; end
  def define_creator!; end
  def define_dependency!; end
  def define_existence_check!; end
  def define_getter!; end
  def define_ids_getter!; end
  def define_ids_setter!; end
  def define_setter!; end
  def define_touchable!; end
  def inverse_association_classes; end
  def namespace_hierarchy(mod); end
  def polymorph!; end
  def resolve_name(mod, name); end
  def setup_index!; end
  def validate!; end
end

Mongoid::Association::Relatable::PRIMARY_KEY_DEFAULT = T.let(T.unsafe(nil), String)

Mongoid::Association::Relatable::SHARED_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Atomic
  extend(::ActiveSupport::Concern)

  def _updates(_use_indexes = T.unsafe(nil)); end
  def add_atomic_pull(document); end
  def add_atomic_unset(document); end
  def atomic_array_add_to_sets; end
  def atomic_array_pulls; end
  def atomic_array_pushes; end
  def atomic_attribute_name(name); end
  def atomic_delete_modifier; end
  def atomic_insert_modifier; end
  def atomic_path; end
  def atomic_paths; end
  def atomic_position; end
  def atomic_pulls; end
  def atomic_pushes; end
  def atomic_sets; end
  def atomic_unsets; end
  def atomic_updates(_use_indexes = T.unsafe(nil)); end
  def delayed_atomic_pulls; end
  def delayed_atomic_sets; end
  def delayed_atomic_unsets; end
  def flag_as_destroyed; end
  def flagged_destroys; end
  def process_flagged_destroys; end

  private

  def generate_atomic_updates(mods, doc); end
  def touch_atomic_updates(field = T.unsafe(nil)); end
end

class Mongoid::Atomic::Modifiers < ::Hash
  def add_to_set(modifications); end
  def pull(modifications); end
  def pull_all(modifications); end
  def push(modifications); end
  def set(modifications); end
  def unset(modifications); end

  private

  def add_each_operation(mods, field, value); end
  def add_operation(mods, field, value); end
  def add_to_sets; end
  def conflicting_pulls; end
  def conflicting_pushes; end
  def conflicting_sets; end
  def conflicts; end
  def pull_alls; end
  def pull_fields; end
  def pulls; end
  def push_conflict?(field); end
  def push_fields; end
  def pushes; end
  def set_conflict?(field); end
  def set_fields; end
  def sets; end
  def unsets; end
end

module Mongoid::Atomic::Paths
end

module Mongoid::Atomic::Paths::Embedded
  def delete_modifier; end
  def document; end
  def insert_modifier; end
  def parent; end
  def path; end
end

class Mongoid::Atomic::Paths::Embedded::Many
  include(::Mongoid::Atomic::Paths::Embedded)

  def initialize(document); end

  def position; end
end

class Mongoid::Atomic::Paths::Embedded::One
  include(::Mongoid::Atomic::Paths::Embedded)

  def initialize(document); end

  def position; end
end

class Mongoid::Atomic::Paths::Root
  def initialize(document); end

  def document; end
  def insert_modifier; end
  def path; end
  def position; end
end

Mongoid::Atomic::UPDATES = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Attributes
  include(::Mongoid::Attributes::Processing)
  extend(::ActiveSupport::Concern)

  include(::Mongoid::Attributes::Nested)
  include(::Mongoid::Attributes::Readonly)

  mixes_in_class_methods(::Mongoid::Attributes::ClassMethods)

  def [](name); end
  def []=(name, value); end
  def assign_attributes(attrs = T.unsafe(nil)); end
  def attribute_missing?(name); end
  def attribute_present?(name); end
  def attributes; end
  def attributes=(attrs = T.unsafe(nil)); end
  def attributes_before_type_cast; end
  def has_attribute?(name); end
  def has_attribute_before_type_cast?(name); end
  def raw_attributes; end
  def read_attribute(name); end
  def read_attribute_before_type_cast(name); end
  def remove_attribute(name); end
  def typed_attributes; end
  def write_attribute(name, value); end
  def write_attributes(attrs = T.unsafe(nil)); end

  private

  def hash_dot_syntax?(string); end
  def lookup_attribute_presence(name, value); end
  def read_raw_attribute(name); end
  def selection_excluded?(name, selection, field); end
  def selection_included?(name, selection, field); end
  def typed_value_for(key, value); end
  def validate_attribute_value(field_name, value); end
end

module Mongoid::Attributes::ClassMethods
  def alias_attribute(name, original); end
end

module Mongoid::Attributes::Dynamic
  extend(::ActiveSupport::Concern)

  def define_dynamic_before_type_cast_reader(name); end
  def define_dynamic_reader(name); end
  def define_dynamic_writer(name); end
  def inspect_dynamic_fields; end
  def method_missing(name, *args); end
  def process_attribute(name, value); end
  def respond_to?(name, include_private = T.unsafe(nil)); end
end

module Mongoid::Attributes::Nested
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Attributes::Nested::ClassMethods)
end

module Mongoid::Attributes::Nested::ClassMethods
  def accepts_nested_attributes_for(*args); end

  private

  def autosave_nested_attributes(association); end
end

Mongoid::Attributes::Nested::ClassMethods::REJECT_ALL_BLANK_PROC = T.let(T.unsafe(nil), Proc)

module Mongoid::Attributes::Processing
  def process_attributes(attrs = T.unsafe(nil)); end

  private

  def pending_attribute?(key, value); end
  def pending_nested; end
  def pending_relations; end
  def process_attribute(name, value); end
  def process_nested; end
  def process_pending; end
  def process_relations; end
end

module Mongoid::Attributes::Readonly
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Attributes::Readonly::ClassMethods)

  def attribute_writable?(name); end

  private

  def _loaded?(name); end
  def as_writable_attribute!(name, value = T.unsafe(nil)); end
  def projected_field?(name); end
end

module Mongoid::Attributes::Readonly::ClassMethods
  def attr_readonly(*names); end
end

class Mongoid::Boolean
  class << self
    def evolve(object); end
    def mongoize(object); end
  end
end

module Mongoid::Cacheable
  extend(::ActiveSupport::Concern)

  def cache_key; end
end

module Mongoid::Changeable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Changeable::ClassMethods)

  def changed; end
  def changed?; end
  def changed_attributes; end
  def changes; end
  def children_changed?; end
  def move_changes; end
  def post_persist; end
  def previous_changes; end
  def remove_change(name); end
  def setters; end

  private

  def attribute_change(attr); end
  def attribute_changed?(attr); end
  def attribute_changed_from_default?(attr); end
  def attribute_was(attr); end
  def attribute_will_change!(attr); end
  def reset_attribute!(attr); end
  def reset_attribute_to_default!(attr); end
end

module Mongoid::Changeable::ClassMethods
  private

  def create_dirty_change_accessor(name, meth); end
  def create_dirty_change_check(name, meth); end
  def create_dirty_change_flag(name, meth); end
  def create_dirty_default_change_check(name, meth); end
  def create_dirty_methods(name, meth); end
  def create_dirty_previous_change(name, meth); end
  def create_dirty_previous_value_accessor(name, meth); end
  def create_dirty_previously_changed?(name, meth); end
  def create_dirty_reset(name, meth); end
  def create_dirty_reset_to_default(name, meth); end
end

module Mongoid::Clients
  include(::Mongoid::Clients::Sessions)
  extend(::ActiveSupport::Concern)

  include(::Mongoid::Clients::StorageOptions)
  include(::Mongoid::Clients::Options)

  mixes_in_class_methods(::Mongoid::Clients::Sessions::ClassMethods)

  class << self
    def clear; end
    def clients; end
    def default; end
    def disconnect; end
    def set(name, client); end
    def with_name(name); end
  end
end

module Mongoid::Clients::Factory
  extend(::Mongoid::Clients::Factory)

  def create(name = T.unsafe(nil)); end
  def default; end

  private

  def create_client(configuration); end
  def driver_version; end
  def options(configuration); end
end

Mongoid::Clients::Factory::MONGOID_WRAPPING_LIBRARY = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module Mongoid::Clients::Options
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Clients::Options::ClassMethods)

  def collection(parent = T.unsafe(nil)); end
  def collection_name; end
  def mongo_client; end
  def persistence_context; end
  def with(options_or_context, &block); end

  private

  def clear_persistence_context(original_cluster = T.unsafe(nil), context = T.unsafe(nil)); end
  def set_persistence_context(options_or_context); end
end

module Mongoid::Clients::Options::ClassMethods
  def client_name; end
  def collection; end
  def collection_name; end
  def database_name; end
  def mongo_client; end
  def persistence_context; end
  def with(options, &block); end
end

module Mongoid::Clients::Sessions
  def with_session(options = T.unsafe(nil)); end

  private

  def _session; end
end

module Mongoid::Clients::Sessions::ClassMethods
  def with_session(options = T.unsafe(nil)); end

  private

  def _session; end
end

module Mongoid::Clients::StorageOptions
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Clients::StorageOptions::ClassMethods)
end

module Mongoid::Clients::StorageOptions::ClassMethods
  def reset_storage_options!; end
  def storage_options_defaults; end
  def store_in(options); end
end

module Mongoid::Clients::Validators
end

module Mongoid::Clients::Validators::Storage
  extend(::Mongoid::Clients::Validators::Storage)

  def validate(klass, options); end

  private

  def valid_keys?(options); end
  def valid_parent?(klass); end
end

Mongoid::Clients::Validators::Storage::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Composable
  include(::ActiveModel::ForbiddenAttributesProtection)
  include(::Mongoid::Evolvable)
  include(::Mongoid::Inspectable)
  include(::Mongoid::Reloadable)
  include(::Mongoid::Stateful)
  include(::Mongoid::Equality)
  extend(::ActiveSupport::Concern)

  include(::ActiveSupport::Callbacks)
  include(::ActiveModel::Validations::HelperMethods)
  include(::ActiveModel::Validations)
  include(::ActiveModel::Conversion)
  include(::ActiveModel::Model)
  include(::ActiveModel::Serializers::JSON)
  include(::Mongoid::Atomic)
  include(::Mongoid::Changeable)
  include(::Mongoid::Clients::StorageOptions)
  include(::Mongoid::Clients::Options)
  include(::Mongoid::Clients)
  include(::Mongoid::Attributes::Nested)
  include(::Mongoid::Attributes::Readonly)
  include(::Mongoid::Attributes)
  include(::Mongoid::Fields)
  include(::Mongoid::Indexable)
  include(::Mongoid::Matchable)
  include(::Mongoid::Persistable::Creatable)
  include(::Mongoid::Persistable::Deletable)
  include(::Mongoid::Persistable::Destroyable)
  include(::Mongoid::Persistable::Incrementable)
  include(::Mongoid::Persistable::Logical)
  include(::Mongoid::Persistable::Poppable)
  include(::Mongoid::Persistable::Pullable)
  include(::Mongoid::Persistable::Pushable)
  include(::Mongoid::Persistable::Renamable)
  include(::Mongoid::Persistable::Settable)
  include(::Mongoid::Persistable::Unsettable)
  include(::Mongoid::Persistable)
  include(::Mongoid::Association::Embedded::Cyclic)
  include(::Mongoid::Association::Referenced::AutoSave)
  include(::Mongoid::Association::Referenced::CounterCache)
  include(::Mongoid::Association::Accessors)
  include(::Mongoid::Association::Depending)
  include(::Mongoid::Association::Builders)
  include(::Mongoid::Association::Macros)
  include(::Mongoid::Association::Reflections)
  include(::Mongoid::Association)
  include(::Mongoid::Scopable)
  include(::Mongoid::Selectable)
  include(::Mongoid::Serializable)
  include(::Mongoid::Shardable)
  include(::Mongoid::Cacheable)
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Traversable)
  include(::Mongoid::Validatable::Macros)
  include(::Mongoid::Validatable)
  include(::ActiveModel::Validations::Callbacks)
  include(::Mongoid::Interceptable)
  include(::Mongoid::Copyable)

  mixes_in_class_methods(::Mongoid::Findable)

  class << self
    def prohibited_methods; end
  end
end

Mongoid::Composable::MODULES = T.let(T.unsafe(nil), T::Array[T.untyped])

Mongoid::Composable::RESERVED_METHOD_NAMES = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Config
  extend(::Forwardable)
  extend(::Mongoid::Config::Options)
  extend(::Mongoid::Config)

  def app_name; end
  def app_name=(value); end
  def app_name?; end
  def background_indexing; end
  def background_indexing=(value); end
  def background_indexing?; end
  def belongs_to_required_by_default; end
  def belongs_to_required_by_default=(value); end
  def belongs_to_required_by_default?; end
  def clients; end
  def configured?; end
  def connect_to(name, options = T.unsafe(nil)); end
  def destructive_fields; end
  def discriminator_key; end
  def discriminator_key=(value); end
  def discriminator_key?; end
  def duplicate_fields_exception; end
  def duplicate_fields_exception=(value); end
  def duplicate_fields_exception?; end
  def include_root_in_json; end
  def include_root_in_json=(value); end
  def include_root_in_json?; end
  def include_type_for_serialization; end
  def include_type_for_serialization=(value); end
  def include_type_for_serialization?; end
  def join_contexts; end
  def join_contexts=(value); end
  def join_contexts?; end
  def load!(path, environment = T.unsafe(nil)); end
  def load_configuration(settings); end
  def log_level=(value); end
  def log_level?; end
  def logger(*args, &block); end
  def logger=(*args, &block); end
  def models; end
  def options=(options); end
  def override_client(name); end
  def override_database(name); end
  def preload_models; end
  def preload_models=(value); end
  def preload_models?; end
  def purge!; end
  def raise_not_found_error; end
  def raise_not_found_error=(value); end
  def raise_not_found_error?; end
  def register_model(klass); end
  def running_with_passenger?; end
  def scope_overwrite_exception; end
  def scope_overwrite_exception=(value); end
  def scope_overwrite_exception?; end
  def time_zone; end
  def truncate!; end
  def use_activesupport_time_zone; end
  def use_activesupport_time_zone=(value); end
  def use_activesupport_time_zone?; end
  def use_utc; end
  def use_utc=(value); end
  def use_utc?; end

  private

  def clients=(clients); end
  def set_log_levels; end
end

module Mongoid::Config::Environment
  extend(::Mongoid::Config::Environment)

  def env_name; end
  def load_yaml(path, environment = T.unsafe(nil)); end
end

Mongoid::Config::LOCK = T.let(T.unsafe(nil), Thread::Mutex)

module Mongoid::Config::Options
  def defaults; end
  def log_level; end
  def option(name, options = T.unsafe(nil)); end
  def reset; end
  def settings; end
end

module Mongoid::Config::Validators
end

module Mongoid::Config::Validators::Client
  extend(::Mongoid::Config::Validators::Client)

  def validate(clients); end

  private

  def both_uri_and_standard?(config); end
  def no_database_or_uri?(config); end
  def no_hosts_or_uri?(config); end
  def validate_client_database(name, config); end
  def validate_client_hosts(name, config); end
  def validate_client_uri(name, config); end
end

Mongoid::Config::Validators::Client::STANDARD = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Config::Validators::Option
  extend(::Mongoid::Config::Validators::Option)

  def validate(option); end
end

module Mongoid::Contextual
  extend(::Forwardable)

  def add_each_to_set(*args, &block); end
  def add_to_set(*args, &block); end
  def aggregates(*args, &block); end
  def avg(*args, &block); end
  def bit(*args, &block); end
  def blank?(*args, &block); end
  def cached?(*args, &block); end
  def collection(*args, &block); end
  def context; end
  def count(*args, &block); end
  def criteria(*args, &block); end
  def database_field_name(*args, &block); end
  def delete(*args, &block); end
  def delete_all(*args, &block); end
  def destroy(*args, &block); end
  def destroy_all(*args, &block); end
  def distinct(*args, &block); end
  def each(*args, &block); end
  def empty?(*args, &block); end
  def estimated_count(*args, &block); end
  def exists?(*args, &block); end
  def explain(*args, &block); end
  def find_first(*args, &block); end
  def find_one_and_delete(*args, &block); end
  def find_one_and_replace(*args, &block); end
  def find_one_and_update(*args, &block); end
  def first(*args, &block); end
  def geo_near(*args, &block); end
  def inc(*args, &block); end
  def klass(*args, &block); end
  def last(*args, &block); end
  def length(*args, &block); end
  def map(*args, &block); end
  def map_reduce(*args, &block); end
  def max(*args, &block); end
  def min(*args, &block); end
  def one(*args, &block); end
  def pluck(*args, &block); end
  def pop(*args, &block); end
  def pull(*args, &block); end
  def pull_all(*args, &block); end
  def push(*args, &block); end
  def push_all(*args, &block); end
  def rename(*args, &block); end
  def set(*args, &block); end
  def size(*args, &block); end
  def sort(*args, &block); end
  def sum(*args, &block); end
  def unset(*args, &block); end
  def update(*args, &block); end
  def update_all(*args, &block); end
  def view(*args, &block); end

  private

  def create_context; end
end

module Mongoid::Contextual::Aggregable
end

module Mongoid::Contextual::Aggregable::Memory
  def avg(field); end
  def max(field = T.unsafe(nil)); end
  def min(field = T.unsafe(nil)); end
  def sum(field = T.unsafe(nil)); end

  private

  def aggregate_by(field, method); end
end

module Mongoid::Contextual::Aggregable::Mongo
  def aggregates(field); end
  def avg(field); end
  def max(field = T.unsafe(nil)); end
  def min(field = T.unsafe(nil)); end
  def sum(field = T.unsafe(nil)); end

  private

  def pipeline(field); end
end

module Mongoid::Contextual::Atomic
  def add_each_to_set(adds); end
  def add_to_set(adds); end
  def bit(bits); end
  def inc(incs); end
  def pop(pops); end
  def pull(pulls); end
  def pull_all(pulls); end
  def push(pushes); end
  def push_all(pushes); end
  def rename(renames); end
  def set(sets); end
  def unset(*args); end

  private

  def collect_each_operations(ops); end
  def collect_operations(ops); end
end

module Mongoid::Contextual::Command
  def client; end
  def collection; end
  def command; end
  def criteria; end
end

class Mongoid::Contextual::GeoNear
  include(::Enumerable)
  include(::Mongoid::Contextual::Command)
  extend(::Forwardable)

  def initialize(collection, criteria, near); end

  def ==(*args, &block); end
  def [](*args, &block); end
  def average_distance; end
  def distance_multiplier(value); end
  def each; end
  def empty?(*args, &block); end
  def empty_and_chainable?; end
  def execute; end
  def inspect; end
  def max_distance(value = T.unsafe(nil)); end
  def min_distance(value); end
  def spherical; end
  def stats; end
  def time; end
  def unique(value = T.unsafe(nil)); end

  private

  def apply_criteria_options; end
  def documents; end
  def results; end
end

class Mongoid::Contextual::MapReduce
  include(::Enumerable)
  include(::Mongoid::Contextual::Command)
  extend(::Forwardable)

  def initialize(collection, criteria, map, reduce); end

  def ==(*args, &block); end
  def [](*args, &block); end
  def command; end
  def counts; end
  def each; end
  def emitted; end
  def empty?(*args, &block); end
  def execute; end
  def finalize(function); end
  def input; end
  def inspect; end
  def js_mode; end
  def out(location); end
  def output; end
  def raw; end
  def reduced; end
  def results; end
  def scope(object); end
  def time; end

  private

  def _session; end
  def validate_out!; end
end

class Mongoid::Contextual::Memory
  include(::Enumerable)
  include(::Mongoid::Contextual::Aggregable::Memory)
  include(::Mongoid::Association::EagerLoadable)
  include(::Mongoid::Contextual::Queryable)
  include(::Mongoid::Positional)

  def initialize(criteria); end

  def ==(other); end
  def delete; end
  def delete_all; end
  def destroy; end
  def destroy_all; end
  def distinct(field); end
  def documents; end
  def each; end
  def exists?; end
  def find_first(*args); end
  def first(*args); end
  def inc(incs); end
  def last; end
  def length; end
  def limit(value); end
  def one(*args); end
  def path; end
  def pluck(*fields); end
  def root; end
  def selector; end
  def size; end
  def skip(value); end
  def sort(values); end
  def update(attributes = T.unsafe(nil)); end
  def update_all(attributes = T.unsafe(nil)); end

  private

  def _session; end
  def apply_options; end
  def apply_sorting; end
  def compare(a, b); end
  def documents_for_iteration; end
  def in_place_sort(values); end
  def limiting; end
  def limiting=(value); end
  def prepare_remove(doc); end
  def skipping; end
  def skipping=(value); end
  def update_documents(attributes, docs); end
end

class Mongoid::Contextual::Mongo
  include(::Enumerable)
  include(::Mongoid::Contextual::Aggregable::Mongo)
  include(::Mongoid::Contextual::Atomic)
  include(::Mongoid::Association::EagerLoadable)
  include(::Mongoid::Contextual::Queryable)
  extend(::Forwardable)

  def initialize(criteria); end

  def cached?; end
  def count(options = T.unsafe(nil), &block); end
  def database_field_name(*args, &block); end
  def delete; end
  def delete_all; end
  def destroy; end
  def destroy_all; end
  def distinct(field); end
  def each(&block); end
  def estimated_count(options = T.unsafe(nil)); end
  def exists?; end
  def explain; end
  def find_first; end
  def find_one_and_delete; end
  def find_one_and_replace(replacement, options = T.unsafe(nil)); end
  def find_one_and_update(update, options = T.unsafe(nil)); end
  def first(opts = T.unsafe(nil)); end
  def geo_near(coordinates); end
  def last(opts = T.unsafe(nil)); end
  def length; end
  def limit(value); end
  def map(field = T.unsafe(nil), &block); end
  def map_reduce(map, reduce); end
  def one(opts = T.unsafe(nil)); end
  def pluck(*fields); end
  def size; end
  def skip(value); end
  def sort(values = T.unsafe(nil), &block); end
  def update(attributes = T.unsafe(nil), opts = T.unsafe(nil)); end
  def update_all(attributes = T.unsafe(nil), opts = T.unsafe(nil)); end
  def view; end

  private

  def _session; end
  def acknowledged_write?; end
  def apply_fields; end
  def apply_option(name); end
  def apply_options; end
  def cache_loaded?; end
  def cacheable?; end
  def documents; end
  def documents_for_iteration; end
  def try_cache(key, &block); end
  def update_documents(attributes, method = T.unsafe(nil), opts = T.unsafe(nil)); end
  def with_inverse_sorting(opts = T.unsafe(nil)); end
  def yield_document(document, &block); end
end

Mongoid::Contextual::Mongo::OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Contextual::None
  include(::Enumerable)
  include(::Mongoid::Contextual::Queryable)

  def initialize(criteria); end

  def ==(other); end
  def criteria; end
  def distinct(field); end
  def each; end
  def exists?; end
  def klass; end
  def last; end
  def length; end
  def pluck(*args); end
  def size; end
end

module Mongoid::Contextual::Queryable
  def blank?; end
  def collection; end
  def criteria; end
  def empty?; end
  def klass; end
end

module Mongoid::Copyable
  extend(::ActiveSupport::Concern)

  def clone; end
  def dup; end

  private

  def clone_document; end
  def process_localized_attributes(klass, attrs); end
end

class Mongoid::Criteria
  include(::Enumerable)
  include(::Mongoid::Contextual)
  include(::Mongoid::Criteria::Queryable::Storable)
  include(::Mongoid::Criteria::Queryable::Expandable)
  include(::Mongoid::Criteria::Queryable::Mergeable)
  include(::Mongoid::Criteria::Queryable::Aggregable)
  include(::Mongoid::Criteria::Queryable::Selectable)
  include(::Mongoid::Criteria::Queryable::Optional)
  include(::Mongoid::Criteria::Queryable)
  include(::Mongoid::Criteria::Findable)
  include(::Mongoid::Criteria::Inspectable)
  include(::Mongoid::Criteria::Includable)
  include(::Mongoid::Criteria::Marshalable)
  include(::Mongoid::Criteria::Modifiable)
  include(::Mongoid::Criteria::Scopable)
  include(::Mongoid::Clients::Options)
  include(::Mongoid::Clients::Sessions)
  include(::Mongoid::Criteria::Options)
  extend(::Mongoid::Clients::Options::ClassMethods)

  def initialize(klass); end

  def ==(other); end
  def _enumerable_find(*_arg0); end
  def _findable_find(*args); end
  def as_json(options = T.unsafe(nil)); end
  def association; end
  def association=(_arg0); end
  def cache; end
  def cached?; end
  def documents; end
  def documents=(docs); end
  def embedded; end
  def embedded=(_arg0); end
  def embedded?; end
  def empty_and_chainable?; end
  def extract_id; end
  def extras(extras); end
  def field_list; end
  def find(*args, &block); end
  def for_js(javascript, scope = T.unsafe(nil)); end
  def freeze; end
  def klass; end
  def klass=(_arg0); end
  def merge(other); end
  def merge!(other); end
  def none; end
  def only(*args); end
  def parent_document; end
  def parent_document=(_arg0); end
  def read(value = T.unsafe(nil)); end
  def respond_to?(name, include_private = T.unsafe(nil)); end
  def to_ary(*_arg0); end
  def to_criteria; end
  def to_proc; end
  def type(types); end
  def where(*args); end
  def without(*args); end
  def without_options; end

  private

  def check_for_missing_documents!(result, ids); end
  def initialize_copy(other); end
  def merge_type_selection; end
  def method_missing(name, *args, &block); end
  def selector_with_type_selection; end
  def type_selectable?; end
  def type_selection; end
end

Mongoid::Criteria::CHECK = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Criteria::Findable
  def execute_or_raise(ids, multi); end
  def find(*args); end
  def for_ids(ids); end
  def multiple_from_db(ids); end

  private

  def from_database(ids); end
  def from_database_selector(ids); end
  def id_finder; end
  def mongoize_ids(ids); end
  def raise_invalid; end
end

module Mongoid::Criteria::Includable
  def includes(*relations); end
  def inclusions; end
  def inclusions=(value); end

  private

  def add_inclusion(_klass, association); end
  def extract_includes_list(_parent_class, *relations_list); end
end

module Mongoid::Criteria::Inspectable
  def inspect; end
end

module Mongoid::Criteria::Marshalable
  def marshal_dump; end
  def marshal_load(data); end

  private

  def dump_hash(name); end
  def load_hash(hash_class, raw); end
end

module Mongoid::Criteria::Modifiable
  def build(attrs = T.unsafe(nil), &block); end
  def create(attrs = T.unsafe(nil), &block); end
  def create!(attrs = T.unsafe(nil), &block); end
  def create_attrs; end
  def create_with(attrs = T.unsafe(nil)); end
  def find_or_create_by(attrs = T.unsafe(nil), &block); end
  def find_or_create_by!(attrs = T.unsafe(nil), &block); end
  def find_or_initialize_by(attrs = T.unsafe(nil), &block); end
  def first_or_create(attrs = T.unsafe(nil), &block); end
  def first_or_create!(attrs = T.unsafe(nil), &block); end
  def first_or_initialize(attrs = T.unsafe(nil), &block); end
  def new(attrs = T.unsafe(nil), &block); end

  private

  def create_document(method, attrs = T.unsafe(nil), &block); end
  def find_or(method, attrs = T.unsafe(nil), &block); end
  def first_or(method, attrs = T.unsafe(nil), &block); end
  def invalid_embedded_doc?(value); end
  def invalid_key?(hash, key); end
end

module Mongoid::Criteria::Options
  private

  def clear_persistence_context(original_cluster, original_context); end
  def persistence_context; end
  def set_persistence_context(options); end
end

module Mongoid::Criteria::Queryable
  include(::Mongoid::Criteria::Queryable::Storable)
  include(::Mongoid::Criteria::Queryable::Expandable)
  include(::Mongoid::Criteria::Queryable::Mergeable)
  include(::Mongoid::Criteria::Queryable::Aggregable)
  include(::Mongoid::Criteria::Queryable::Selectable)
  include(::Mongoid::Criteria::Queryable::Optional)

  def initialize(aliases = T.unsafe(nil), serializers = T.unsafe(nil), driver = T.unsafe(nil)); end

  def ==(other); end
  def aliases; end
  def driver; end
  def serializers; end

  private

  def initialize_copy(other); end
end

module Mongoid::Criteria::Queryable::Aggregable
  extend(::Mongoid::Criteria::Queryable::Macroable)

  def aggregating=(_arg0); end
  def aggregating?; end
  def group(operation); end
  def pipeline; end
  def project(operation = T.unsafe(nil)); end
  def unwind(field); end

  private

  def aggregation(operation); end
end

module Mongoid::Criteria::Queryable::Expandable
  private

  def expand_condition(condition); end
  def expand_condition_to_array_values(criterion); end
  def expand_one_condition(field, value); end
end

module Mongoid::Criteria::Queryable::Extensions
end

module Mongoid::Criteria::Queryable::Extensions::Array
  def __add__(object); end
  def __array__; end
  def __deep_copy__; end
  def __evolve_date__; end
  def __evolve_time__; end
  def __expand_complex__; end
  def __intersect__(object); end
  def __sort_option__; end
  def __sort_pair__; end
  def update_values(&block); end

  private

  def multi; end
end

module Mongoid::Criteria::Queryable::Extensions::Array::ClassMethods
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::BigDecimal
end

module Mongoid::Criteria::Queryable::Extensions::BigDecimal::ClassMethods
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Boolean
end

module Mongoid::Criteria::Queryable::Extensions::Boolean::ClassMethods
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Date
  def __evolve_date__; end
  def __evolve_time__; end
end

module Mongoid::Criteria::Queryable::Extensions::Date::ClassMethods
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::DateTime
  def __evolve_time__; end
end

module Mongoid::Criteria::Queryable::Extensions::DateTime::ClassMethods
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Hash
  def __add__(object); end
  def __add_from_array__(array); end
  def __deep_copy__; end
  def __expand_complex__; end
  def __intersect__(object); end
  def __intersect_from_array__(array); end
  def __intersect_from_object__(object); end
  def __sort_option__; end
  def __union__(object); end
  def __union_from_object__(object); end
  def update_values(&block); end

  private

  def apply_strategy(strategy, object); end
end

module Mongoid::Criteria::Queryable::Extensions::NilClass
  def __add__(object); end
  def __evolve_date__; end
  def __evolve_time__; end
  def __expanded__(object); end
  def __intersect__(object); end
  def __override__(object); end
  def __union__(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Numeric
  def __evolve_date__; end
  def __evolve_time__; end
  def to_direction; end
end

module Mongoid::Criteria::Queryable::Extensions::Numeric::ClassMethods
  def __numeric__(object); end
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Object
  def __add__(object); end
  def __add_from_array__(array); end
  def __array__; end
  def __deep_copy__; end
  def __expand_complex__; end
  def __intersect__(object); end
  def __intersect_from_array__(array); end
  def __intersect_from_object__(object); end
  def __union__(object); end
  def __union_from_object__(object); end
  def regexp?; end
end

module Mongoid::Criteria::Queryable::Extensions::Object::ClassMethods
  def evolve(object); end

  private

  def __evolve__(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Range
  def __array__; end
  def __evolve_date__; end
  def __evolve_time__; end
end

module Mongoid::Criteria::Queryable::Extensions::Range::ClassMethods
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Regexp
  def regexp?; end
end

module Mongoid::Criteria::Queryable::Extensions::Regexp::ClassMethods
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Regexp::Raw_
  def regexp?; end
end

module Mongoid::Criteria::Queryable::Extensions::Regexp::Raw_::ClassMethods
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Set
end

module Mongoid::Criteria::Queryable::Extensions::Set::ClassMethods
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::String
  def __evolve_date__; end
  def __evolve_time__; end
  def __expr_part__(value, negating = T.unsafe(nil)); end
  def __mongo_expression__; end
  def __sort_option__; end
  def to_direction; end
end

module Mongoid::Criteria::Queryable::Extensions::String::ClassMethods
  def __expr_part__(key, value, negating = T.unsafe(nil)); end
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Symbol
  def __expr_part__(value, negating = T.unsafe(nil)); end
  def to_direction; end
end

module Mongoid::Criteria::Queryable::Extensions::Symbol::ClassMethods
  def add_key(name, strategy, operator, additional = T.unsafe(nil), &block); end
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::Time
  def __evolve_date__; end
  def __evolve_time__; end
end

module Mongoid::Criteria::Queryable::Extensions::Time::ClassMethods
  def evolve(object); end
end

module Mongoid::Criteria::Queryable::Extensions::TimeWithZone
  def __evolve_date__; end
  def __evolve_time__; end
end

module Mongoid::Criteria::Queryable::Extensions::TimeWithZone::ClassMethods
  def evolve(object); end
end

class Mongoid::Criteria::Queryable::Key
  def initialize(name, strategy, operator, expanded = T.unsafe(nil), &block); end

  def ==(other); end
  def __expr_part__(object, negating = T.unsafe(nil)); end
  def __sort_option__; end
  def __sort_pair__; end
  def block; end
  def eql?(other); end
  def expanded; end
  def hash; end
  def name; end
  def operator; end
  def strategy; end
  def to_s; end
  def transform_value(value, negating = T.unsafe(nil)); end
end

module Mongoid::Criteria::Queryable::Macroable
  def key(name, strategy, operator, additional = T.unsafe(nil), &block); end
end

module Mongoid::Criteria::Queryable::Mergeable
  def intersect; end
  def override; end
  def reset_strategies!; end
  def strategy; end
  def strategy=(_arg0); end
  def union; end

  private

  def __add__(criterion, operator); end
  def __expanded__(criterion, outer, inner); end
  def __intersect__(criterion, operator); end
  def __merge__(criterion); end
  def __multi__(criteria, operator); end
  def __override__(criterion, operator); end
  def __union__(criterion, operator); end
  def _mongoid_add_top_level_operation(operator, criteria); end
  def _mongoid_expand_keys(expr); end
  def _mongoid_flatten_arrays(array); end
  def prepare(field, operator, value); end
  def use(strategy); end
  def with_strategy(strategy, criterion, operator); end
end

module Mongoid::Criteria::Queryable::Optional
  extend(::Mongoid::Criteria::Queryable::Macroable)

  def asc(*fields); end
  def ascending(*fields); end
  def batch_size(value = T.unsafe(nil)); end
  def collation(collation_doc); end
  def comment(comment = T.unsafe(nil)); end
  def cursor_type(type); end
  def desc(*fields); end
  def descending(*fields); end
  def hint(value = T.unsafe(nil)); end
  def limit(value = T.unsafe(nil)); end
  def max_scan(value = T.unsafe(nil)); end
  def max_time_ms(value = T.unsafe(nil)); end
  def no_timeout; end
  def offset(value = T.unsafe(nil)); end
  def only(*args); end
  def options; end
  def options=(_arg0); end
  def order(*spec); end
  def order_by(*spec); end
  def reorder(*spec); end
  def skip(value = T.unsafe(nil)); end
  def slice(criterion = T.unsafe(nil)); end
  def snapshot; end
  def without(*args); end

  private

  def add_sort_option(options, field, direction); end
  def option(*args); end
  def sort_with_list(*fields, direction); end

  class << self
    def forwardables; end
  end
end

class Mongoid::Criteria::Queryable::Options < ::Mongoid::Criteria::Queryable::Smash
  def []=(key, value, localize = T.unsafe(nil)); end
  def __deep_copy__; end
  def fields; end
  def limit; end
  def skip; end
  def sort; end
  def store(key, value, localize = T.unsafe(nil)); end
  def to_pipeline; end

  private

  def evolve(value, localize = T.unsafe(nil)); end
  def evolve_hash(value, localize = T.unsafe(nil)); end
end

class Mongoid::Criteria::Queryable::Pipeline < ::Array
  def initialize(aliases = T.unsafe(nil)); end

  def __deep_copy__; end
  def aliases; end
  def group(entry); end
  def project(entry); end
  def unwind(field_or_doc); end

  private

  def evolve(entry); end
end

module Mongoid::Criteria::Queryable::Selectable
  extend(::Mongoid::Criteria::Queryable::Macroable)

  def all(*criteria); end
  def all_in(*criteria); end
  def all_of(*criteria); end
  def and(*criteria); end
  def any_in(condition); end
  def any_of(*criteria); end
  def between(criterion); end
  def elem_match(criterion); end
  def excludes(criterion); end
  def exists(criterion); end
  def geo_spacial(criterion); end
  def geo_spatial(criterion); end
  def gt(criterion); end
  def gte(criterion); end
  def in(condition); end
  def lt(criterion); end
  def lte(criterion); end
  def max_distance(criterion); end
  def mod(criterion); end
  def ne(criterion); end
  def near(criterion); end
  def near_sphere(criterion); end
  def negating; end
  def negating=(_arg0); end
  def negating?; end
  def nin(condition); end
  def nor(*criteria); end
  def not(*criteria); end
  def not_in(condition); end
  def or(*criteria); end
  def selector; end
  def selector=(_arg0); end
  def text_search(terms, opts = T.unsafe(nil)); end
  def where(*criteria); end
  def with_size(criterion); end
  def with_type(criterion); end

  private

  def expr_query(criterion); end
  def js_query(criterion); end
  def selection(criterion = T.unsafe(nil)); end
  def typed_override(criterion, operator); end

  class << self
    def forwardables; end
  end
end

Mongoid::Criteria::Queryable::Selectable::LINE_STRING = T.let(T.unsafe(nil), String)

Mongoid::Criteria::Queryable::Selectable::POINT = T.let(T.unsafe(nil), String)

Mongoid::Criteria::Queryable::Selectable::POLYGON = T.let(T.unsafe(nil), String)

class Mongoid::Criteria::Queryable::Selector < ::Mongoid::Criteria::Queryable::Smash
  def []=(key, value); end
  def merge!(other); end
  def store(key, value); end
  def to_pipeline; end

  private

  def evolve(serializer, value); end
  def evolve_array(serializer, value); end
  def evolve_hash(serializer, value); end
  def evolve_multi(specs); end
  def multi_selection?(key); end
end

class Mongoid::Criteria::Queryable::Smash < ::Hash
  def initialize(aliases = T.unsafe(nil), serializers = T.unsafe(nil)); end

  def [](key); end
  def __deep_copy__; end
  def aliases; end
  def serializers; end

  private

  def localized_key(name, serializer); end
  def storage_pair(key); end
end

module Mongoid::Criteria::Queryable::Storable
  def add_field_expression(field, value); end
  def add_logical_operator_expression(operator, op_expr); end
  def add_one_expression(field, value); end
  def add_operator_expression(operator, op_expr); end
end

module Mongoid::Criteria::Scopable
  def apply_default_scope; end
  def remove_scoping(other); end
  def scoped(options = T.unsafe(nil)); end
  def scoped?; end
  def scoping_options; end
  def scoping_options=(options); end
  def unscoped; end
  def unscoped?; end
  def with_default_scope; end

  private

  def reject_matching(other, *methods); end
end

module Mongoid::Document
  include(::Mongoid::Touchable::InstanceMethods)
  extend(::ActiveSupport::Concern)

  include(::ActiveSupport::Callbacks)
  include(::ActiveModel::Validations::HelperMethods)
  include(::ActiveModel::Validations)
  include(::ActiveModel::Conversion)
  include(::ActiveModel::Model)
  include(::ActiveModel::Serializers::JSON)
  include(::Mongoid::Atomic)
  include(::Mongoid::Changeable)
  include(::Mongoid::Clients::StorageOptions)
  include(::Mongoid::Clients::Options)
  include(::Mongoid::Clients)
  include(::Mongoid::Attributes::Nested)
  include(::Mongoid::Attributes::Readonly)
  include(::Mongoid::Attributes)
  include(::Mongoid::Fields)
  include(::Mongoid::Indexable)
  include(::Mongoid::Matchable)
  include(::Mongoid::Persistable::Creatable)
  include(::Mongoid::Persistable::Deletable)
  include(::Mongoid::Persistable::Destroyable)
  include(::Mongoid::Persistable::Incrementable)
  include(::Mongoid::Persistable::Logical)
  include(::Mongoid::Persistable::Poppable)
  include(::Mongoid::Persistable::Pullable)
  include(::Mongoid::Persistable::Pushable)
  include(::Mongoid::Persistable::Renamable)
  include(::Mongoid::Persistable::Settable)
  include(::Mongoid::Persistable::Unsettable)
  include(::Mongoid::Persistable)
  include(::Mongoid::Association::Embedded::Cyclic)
  include(::Mongoid::Association::Referenced::AutoSave)
  include(::Mongoid::Association::Referenced::CounterCache)
  include(::Mongoid::Association::Accessors)
  include(::Mongoid::Association::Depending)
  include(::Mongoid::Association::Builders)
  include(::Mongoid::Association::Macros)
  include(::Mongoid::Association::Reflections)
  include(::Mongoid::Association)
  include(::Mongoid::Scopable)
  include(::Mongoid::Selectable)
  include(::Mongoid::Serializable)
  include(::Mongoid::Shardable)
  include(::Mongoid::Cacheable)
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Traversable)
  include(::Mongoid::Validatable::Macros)
  include(::Mongoid::Validatable)
  include(::ActiveModel::Validations::Callbacks)
  include(::Mongoid::Interceptable)
  include(::Mongoid::Copyable)
  include(::Mongoid::Composable)

  mixes_in_class_methods(::Mongoid::Document::ClassMethods)

  def initialize(attrs = T.unsafe(nil)); end

  def __selected_fields; end
  def __selected_fields=(_arg0); end
  def as_document; end
  def as_json(options = T.unsafe(nil)); end
  def becomes(klass); end
  def freeze; end
  def frozen?; end
  def hash; end
  def identity; end
  def model_name; end
  def new_record; end
  def to_a; end
  def to_key; end

  private

  def as_attributes; end
  def logger; end
  def model_key; end
  def to_ary; end
end

module Mongoid::Document::ClassMethods
  def ===(other); end
  def _mongoid_clear_types; end
  def _types; end
  def i18n_scope; end
  def instantiate(attrs = T.unsafe(nil), selected_fields = T.unsafe(nil)); end
  def logger; end
end

Mongoid::Document::ILLEGAL_KEY = T.let(T.unsafe(nil), Regexp)

module Mongoid::Equality
  def <=>(other); end
  def ==(other); end
  def ===(other); end
  def eql?(other); end
end

module Mongoid::Errors
end

class Mongoid::Errors::AmbiguousRelationship < ::Mongoid::Errors::MongoidError
  def initialize(klass, inverse, name, candidates); end
end

class Mongoid::Errors::Callback < ::Mongoid::Errors::MongoidError
  def initialize(klass, method); end
end

class Mongoid::Errors::CriteriaArgumentRequired < ::Mongoid::Errors::MongoidError
  def initialize(query_method); end
end

class Mongoid::Errors::DeleteRestriction < ::Mongoid::Errors::MongoidError
  def initialize(document, relation); end
end

class Mongoid::Errors::DocumentNotDestroyed < ::Mongoid::Errors::MongoidError
  def initialize(id, klass); end
end

class Mongoid::Errors::DocumentNotFound < ::Mongoid::Errors::MongoidError
  def initialize(klass, params, unmatched = T.unsafe(nil)); end

  def klass; end
  def params; end

  private

  def message_key(params); end
  def missing(unmatched); end
  def searched(params); end
  def total(params); end
end

class Mongoid::Errors::EagerLoad < ::Mongoid::Errors::MongoidError
  def initialize(name); end
end

class Mongoid::Errors::InMemoryCollationNotSupported < ::Mongoid::Errors::MongoidError
  def initialize; end
end

class Mongoid::Errors::InvalidCollection < ::Mongoid::Errors::MongoidError
  def initialize(klass); end
end

class Mongoid::Errors::InvalidConfigOption < ::Mongoid::Errors::MongoidError
  def initialize(name); end
end

class Mongoid::Errors::InvalidDependentStrategy < ::Mongoid::Errors::MongoidError
  def initialize(association, invalid_strategy, valid_strategies); end
end

class Mongoid::Errors::InvalidDiscriminatorKeyTarget < ::Mongoid::Errors::MongoidError
  def initialize(class_name, superclass); end
end

class Mongoid::Errors::InvalidElemMatchOperator < ::Mongoid::Errors::InvalidQuery
  def initialize(operator); end

  def operator; end
end

Mongoid::Errors::InvalidElemMatchOperator::VALID_OPERATORS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Errors::InvalidEstimatedCountCriteria < ::Mongoid::Errors::MongoidError
  def initialize(class_name); end
end

class Mongoid::Errors::InvalidExpressionOperator < ::Mongoid::Errors::InvalidQuery
  def initialize(operator); end

  def operator; end
end

class Mongoid::Errors::InvalidField < ::Mongoid::Errors::MongoidError
  def initialize(klass, name); end

  private

  def location(klass, name); end
  def origin(klass, name); end
end

class Mongoid::Errors::InvalidFieldOperator < ::Mongoid::Errors::InvalidQuery
  def initialize(operator); end

  def operator; end
end

Mongoid::Errors::InvalidFieldOperator::VALID_OPERATORS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Errors::InvalidFieldOption < ::Mongoid::Errors::MongoidError
  def initialize(klass, name, option, valid); end
end

class Mongoid::Errors::InvalidFind < ::Mongoid::Errors::MongoidError
  def initialize; end
end

class Mongoid::Errors::InvalidIncludes < ::Mongoid::Errors::MongoidError
  def initialize(klass, args); end
end

class Mongoid::Errors::InvalidIndex < ::Mongoid::Errors::MongoidError
  def initialize(klass, spec, options); end
end

class Mongoid::Errors::InvalidOptions < ::Mongoid::Errors::MongoidError
  def initialize(name, invalid, valid); end
end

class Mongoid::Errors::InvalidPath < ::Mongoid::Errors::MongoidError
  def initialize(klass); end
end

class Mongoid::Errors::InvalidPersistenceOption < ::Mongoid::Errors::MongoidError
  def initialize(invalid, valid); end
end

class Mongoid::Errors::InvalidQuery < ::Mongoid::Errors::MongoidError
  def initialize(msg); end

  class << self
    def truncate_expr(expr); end
  end
end

class Mongoid::Errors::InvalidRelation < ::Mongoid::Errors::MongoidError
  def initialize(klass, name); end

  private

  def location(klass, name); end
  def origin(klass, name); end
end

class Mongoid::Errors::InvalidRelationOption < ::Mongoid::Errors::MongoidError
  def initialize(klass, name, option, valid_options); end
end

class Mongoid::Errors::InvalidScope < ::Mongoid::Errors::MongoidError
  def initialize(klass, value); end
end

class Mongoid::Errors::InvalidSessionUse < ::Mongoid::Errors::MongoidError
  def initialize(error_type); end
end

class Mongoid::Errors::InvalidSetPolymorphicRelation < ::Mongoid::Errors::MongoidError
  def initialize(name, klass, other_klass); end
end

class Mongoid::Errors::InvalidStorageOptions < ::Mongoid::Errors::MongoidError
  def initialize(klass, options); end
end

class Mongoid::Errors::InvalidStorageParent < ::Mongoid::Errors::MongoidError
  def initialize(klass); end
end

class Mongoid::Errors::InvalidTime < ::Mongoid::Errors::MongoidError
  def initialize(value); end
end

class Mongoid::Errors::InvalidValue < ::Mongoid::Errors::MongoidError
  def initialize(field_class, value_class); end
end

class Mongoid::Errors::InverseNotFound < ::Mongoid::Errors::MongoidError
  def initialize(base, name, klass, inverse); end
end

class Mongoid::Errors::MixedClientConfiguration < ::Mongoid::Errors::MongoidError
  def initialize(name, config); end
end

class Mongoid::Errors::MixedRelations < ::Mongoid::Errors::MongoidError
  def initialize(root_klass, embedded_klass); end
end

class Mongoid::Errors::MongoidError < ::StandardError
  def compose_message(key, attributes = T.unsafe(nil)); end
  def problem; end
  def resolution; end
  def summary; end

  private

  def translate(key, options); end
  def translate_problem(key, attributes); end
  def translate_resolution(key, attributes); end
  def translate_summary(key, attributes); end
end

Mongoid::Errors::MongoidError::BASE_KEY = T.let(T.unsafe(nil), String)

class Mongoid::Errors::NestedAttributesMetadataNotFound < ::Mongoid::Errors::MongoidError
  def initialize(klass, name); end
end

class Mongoid::Errors::NoClientConfig < ::Mongoid::Errors::MongoidError
  def initialize(name); end
end

class Mongoid::Errors::NoClientDatabase < ::Mongoid::Errors::MongoidError
  def initialize(name, config); end
end

class Mongoid::Errors::NoClientHosts < ::Mongoid::Errors::MongoidError
  def initialize(name, config); end
end

class Mongoid::Errors::NoClientsConfig < ::Mongoid::Errors::MongoidError
  def initialize; end
end

class Mongoid::Errors::NoDefaultClient < ::Mongoid::Errors::MongoidError
  def initialize(keys); end
end

class Mongoid::Errors::NoEnvironment < ::Mongoid::Errors::MongoidError
  def initialize; end
end

class Mongoid::Errors::NoMapReduceOutput < ::Mongoid::Errors::MongoidError
  def initialize(command); end
end

class Mongoid::Errors::NoMetadata < ::Mongoid::Errors::MongoidError
  def initialize(klass); end
end

class Mongoid::Errors::NoParent < ::Mongoid::Errors::MongoidError
  def initialize(klass); end
end

class Mongoid::Errors::ReadonlyAttribute < ::Mongoid::Errors::MongoidError
  def initialize(name, value); end
end

class Mongoid::Errors::ReadonlyDocument < ::Mongoid::Errors::MongoidError
  def initialize(klass); end
end

class Mongoid::Errors::ScopeOverwrite < ::Mongoid::Errors::MongoidError
  def initialize(model_name, scope_name); end
end

class Mongoid::Errors::TooManyNestedAttributeRecords < ::Mongoid::Errors::MongoidError
  def initialize(association, limit); end
end

class Mongoid::Errors::UnknownAttribute < ::Mongoid::Errors::MongoidError
  def initialize(klass, name); end
end

class Mongoid::Errors::UnknownModel < ::Mongoid::Errors::MongoidError
  def initialize(klass, value); end
end

class Mongoid::Errors::UnsavedDocument < ::Mongoid::Errors::MongoidError
  def initialize(base, document); end
end

class Mongoid::Errors::UnsupportedJavascript < ::Mongoid::Errors::MongoidError
  def initialize(klass, javascript); end
end

class Mongoid::Errors::Validations < ::Mongoid::Errors::MongoidError
  def initialize(document); end

  def document; end
  def record; end
end

module Mongoid::Evolvable
  def __evolve_object_id__; end
end

module Mongoid::Extensions
end

module Mongoid::Extensions::Array
  def __evolve_object_id__; end
  def __find_args__; end
  def __mongoize_object_id__; end
  def __mongoize_time__; end
  def blank_criteria?; end
  def delete_one(object); end
  def mongoize; end
  def multi_arged?; end
  def resizable?; end
end

module Mongoid::Extensions::Array::ClassMethods
  def __mongoize_fk__(association, object); end
  def mongoize(object); end
  def resizable?; end
end

module Mongoid::Extensions::BigDecimal
  def __to_inc__; end
  def mongoize; end
  def numeric?; end
end

module Mongoid::Extensions::BigDecimal::ClassMethods
  def demongoize(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::Date
  def __mongoize_time__; end
  def mongoize; end
end

module Mongoid::Extensions::Date::ClassMethods
  def demongoize(object); end
  def mongoize(object); end
end

Mongoid::Extensions::Date::EPOCH = T.let(T.unsafe(nil), Date)

module Mongoid::Extensions::DateTime
  def __mongoize_time__; end
  def mongoize; end
end

module Mongoid::Extensions::DateTime::ClassMethods
  def demongoize(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::Decimal128
  def __evolve_decimal128__; end
end

module Mongoid::Extensions::Decimal128::ClassMethods
  def evolve(object); end
end

module Mongoid::Extensions::FalseClass
  def __sortable__; end
  def is_a?(other); end
end

module Mongoid::Extensions::Float
  def __mongoize_time__; end
  def numeric?; end
end

module Mongoid::Extensions::Float::ClassMethods
  def demongoize(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::Hash
  def __consolidate__(klass); end
  def __evolve_object_id__; end
  def __mongoize_object_id__; end
  def __nested__(string); end
  def _mongoid_unsatisfiable_criteria?; end
  def blank_criteria?; end
  def delete_id; end
  def extract_id; end
  def mongoize; end
  def resizable?; end
  def to_criteria; end

  private

  def mongoize_for(operator, klass, key, value); end
end

module Mongoid::Extensions::Hash::ClassMethods
  def mongoize(object); end
  def resizable?; end
end

module Mongoid::Extensions::Integer
  def __mongoize_time__; end
  def numeric?; end
  def unconvertable_to_bson?; end
end

module Mongoid::Extensions::Integer::ClassMethods
  def demongoize(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::Module
  def re_define_method(name, &block); end
end

module Mongoid::Extensions::NilClass
  def __setter__; end
  def collectionize; end
end

module Mongoid::Extensions::Object
  def __evolve_object_id__; end
  def __find_args__; end
  def __mongoize_object_id__; end
  def __mongoize_time__; end
  def __setter__; end
  def __sortable__; end
  def __to_inc__; end
  def blank_criteria?; end
  def do_or_do_not(name, *args); end
  def ivar(name); end
  def mongoize; end
  def multi_arged?; end
  def numeric?; end
  def remove_ivar(name); end
  def resizable?; end
  def substitutable; end
  def you_must(name, *args); end
end

module Mongoid::Extensions::Object::ClassMethods
  def __mongoize_fk__(association, object); end
  def demongoize(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::ObjectId
  def __evolve_object_id__; end
  def __mongoize_object_id__; end
end

module Mongoid::Extensions::ObjectId::ClassMethods
  def evolve(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::Range
  def __find_args__; end
  def mongoize; end
  def resizable?; end
end

module Mongoid::Extensions::Range::ClassMethods
  def demongoize(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::Regexp
end

module Mongoid::Extensions::Regexp::ClassMethods
  def mongoize(object); end
end

module Mongoid::Extensions::Set
  def mongoize; end
end

module Mongoid::Extensions::Set::ClassMethods
  def demongoize(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::String
  def __evolve_object_id__; end
  def __mongoize_object_id__; end
  def __mongoize_time__; end
  def before_type_cast?; end
  def collectionize; end
  def mongoid_id?; end
  def numeric?; end
  def reader; end
  def unconvertable_to_bson; end
  def unconvertable_to_bson=(_arg0); end
  def unconvertable_to_bson?; end
  def valid_method_name?; end
  def writer?; end

  private

  def convert_to_object_id; end
end

module Mongoid::Extensions::String::ClassMethods
  def demongoize(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::Symbol
  def mongoid_id?; end
end

module Mongoid::Extensions::Symbol::ClassMethods
  def demongoize(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::Time
  def __mongoize_time__; end
  def mongoize; end
end

module Mongoid::Extensions::Time::ClassMethods
  def configured; end
  def demongoize(object); end
  def mongoize(object); end
end

Mongoid::Extensions::Time::EPOCH = T.let(T.unsafe(nil), Time)

module Mongoid::Extensions::TimeWithZone
  def __mongoize_time__; end
  def mongoize; end
end

module Mongoid::Extensions::TimeWithZone::ClassMethods
  def demongoize(object); end
  def mongoize(object); end
end

module Mongoid::Extensions::TrueClass
  def __sortable__; end
  def is_a?(other); end
end

module Mongoid::Factory
  extend(::Mongoid::Factory)

  def build(klass, attributes = T.unsafe(nil)); end
  def from_db(klass, attributes = T.unsafe(nil), criteria = T.unsafe(nil), selected_fields = T.unsafe(nil)); end
end

Mongoid::Factory::TYPE = T.let(T.unsafe(nil), String)

module Mongoid::Fields
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Fields::ClassMethods)

  def apply_default(name); end
  def apply_defaults; end
  def apply_post_processed_defaults; end
  def apply_pre_processed_defaults; end
  def attribute_names; end
  def database_field_name(name); end
  def lazy_settable?(field, value); end
  def using_object_ids?; end

  class << self
    def option(option_name, &block); end
    def options; end
  end
end

module Mongoid::Fields::ClassMethods
  def attribute_names; end
  def database_field_name(name); end
  def field(name, options = T.unsafe(nil)); end
  def replace_field(name, type); end
  def using_object_ids?; end

  protected

  def add_defaults(field); end
  def add_field(name, options = T.unsafe(nil)); end
  def create_accessors(name, meth, options = T.unsafe(nil)); end
  def create_field_check(name, meth); end
  def create_field_getter(name, meth, field); end
  def create_field_getter_before_type_cast(name, meth); end
  def create_field_setter(name, meth, field); end
  def create_translations_getter(name, meth); end
  def create_translations_setter(name, meth, field); end
  def field_for(name, options); end
  def generated_methods; end
  def process_options(field); end
  def remove_defaults(name); end
  def unmapped_type(options); end
end

class Mongoid::Fields::ForeignKey < ::Mongoid::Fields::Standard
  def add_atomic_changes(document, name, key, mods, new_elements, old_elements); end
  def evolve(object); end
  def foreign_key?; end
  def lazy?; end
  def mongoize(object); end
  def object_id_field?; end
  def resizable?; end

  private

  def evaluate_default_proc(doc); end
  def related_id_field; end
  def serialize_default(object); end
end

Mongoid::Fields::IDS = T.let(T.unsafe(nil), T::Array[T.untyped])

class Mongoid::Fields::Localized < ::Mongoid::Fields::Standard
  def demongoize(object); end
  def localized?; end
  def mongoize(object); end

  private

  def fallbacks?; end
  def lookup(object); end
end

class Mongoid::Fields::Standard
  extend(::Forwardable)

  def initialize(name, options = T.unsafe(nil)); end

  def add_atomic_changes(document, name, key, mods, new, old); end
  def association; end
  def default_val; end
  def default_val=(_arg0); end
  def demongoize(*args, &block); end
  def eval_default(doc); end
  def evolve(*args, &block); end
  def foreign_key?; end
  def label; end
  def label=(_arg0); end
  def lazy?; end
  def localized?; end
  def mongoize(*args, &block); end
  def name; end
  def name=(_arg0); end
  def object_id_field?; end
  def options; end
  def options=(_arg0); end
  def pre_processed?; end
  def type; end

  private

  def default_name; end
  def define_default_method(object); end
  def evaluate_default_proc(doc); end
  def evaluated_default(doc); end
  def included?(fields); end
  def serialize_default(object); end
end

Mongoid::Fields::StringifiedSymbol = Mongoid::StringifiedSymbol

Mongoid::Fields::TYPE_MAPPINGS = T.let(T.unsafe(nil), ActiveSupport::HashWithIndifferentAccess)

module Mongoid::Fields::Validators
end

module Mongoid::Fields::Validators::Macro
  extend(::Mongoid::Fields::Validators::Macro)

  def validate(klass, name, options); end
  def validate_field_name(klass, name); end
  def validate_relation(klass, name, options = T.unsafe(nil)); end

  private

  def validate_name_uniqueness(klass, name, options); end
  def validate_options(klass, name, options); end
end

Mongoid::Fields::Validators::Macro::FIELD_TYPE_IS_SYMBOL = T.let(T.unsafe(nil), String)

Mongoid::Fields::Validators::Macro::OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Findable
  extend(::Forwardable)

  def aggregates(*args, &block); end
  def all(*args, &block); end
  def all_in(*args, &block); end
  def all_of(*args, &block); end
  def and(*args, &block); end
  def any_in(*args, &block); end
  def any_of(*args, &block); end
  def asc(*args, &block); end
  def ascending(*args, &block); end
  def avg(*args, &block); end
  def batch_size(*args, &block); end
  def between(*args, &block); end
  def collation(*args, &block); end
  def comment(*args, &block); end
  def count; end
  def create_with(*args, &block); end
  def cursor_type(*args, &block); end
  def desc(*args, &block); end
  def descending(*args, &block); end
  def distinct(*args, &block); end
  def each(*args, &block); end
  def each_with_index(*args, &block); end
  def elem_match(*args, &block); end
  def empty?; end
  def estimated_count; end
  def excludes(*args, &block); end
  def exists(*args, &block); end
  def exists?; end
  def extras(*args, &block); end
  def find(*args); end
  def find_by(attrs = T.unsafe(nil)); end
  def find_by!(attrs = T.unsafe(nil)); end
  def find_one_and_delete(*args, &block); end
  def find_one_and_replace(*args, &block); end
  def find_one_and_update(*args, &block); end
  def find_or_create_by(*args, &block); end
  def find_or_create_by!(*args, &block); end
  def find_or_initialize_by(*args, &block); end
  def first; end
  def first_or_create(*args, &block); end
  def first_or_create!(*args, &block); end
  def first_or_initialize(*args, &block); end
  def for_js(*args, &block); end
  def geo_near(*args, &block); end
  def geo_spacial(*args, &block); end
  def geo_spatial(*args, &block); end
  def gt(*args, &block); end
  def gte(*args, &block); end
  def hint(*args, &block); end
  def in(*args, &block); end
  def includes(*args, &block); end
  def last; end
  def limit(*args, &block); end
  def lt(*args, &block); end
  def lte(*args, &block); end
  def map_reduce(*args, &block); end
  def max(*args, &block); end
  def max_distance(*args, &block); end
  def max_scan(*args, &block); end
  def max_time_ms(*args, &block); end
  def min(*args, &block); end
  def mod(*args, &block); end
  def ne(*args, &block); end
  def near(*args, &block); end
  def near_sphere(*args, &block); end
  def nin(*args, &block); end
  def no_timeout(*args, &block); end
  def none(*args, &block); end
  def nor(*args, &block); end
  def not(*args, &block); end
  def not_in(*args, &block); end
  def offset(*args, &block); end
  def one; end
  def only(*args, &block); end
  def or(*args, &block); end
  def order(*args, &block); end
  def order_by(*args, &block); end
  def pluck(*args, &block); end
  def read(*args, &block); end
  def reorder(*args, &block); end
  def skip(*args, &block); end
  def slice(*args, &block); end
  def snapshot(*args, &block); end
  def sum(*args, &block); end
  def text_search(*args, &block); end
  def update(*args, &block); end
  def update_all(*args, &block); end
  def where(*args, &block); end
  def with_size(*args, &block); end
  def with_type(*args, &block); end
  def without(*args, &block); end
end

module Mongoid::GlobalDiscriminatorKeyAssignment
  def discriminator_key=(value); end
end

class Mongoid::GlobalDiscriminatorKeyAssignment::InvalidFieldHost
  include(::ActiveModel::Validations)
  include(::ActiveSupport::Callbacks)
  include(::ActiveModel::Validations::HelperMethods)
  include(::ActiveModel::Conversion)
  include(::ActiveModel::ForbiddenAttributesProtection)
  include(::ActiveModel::AttributeAssignment)
  include(::ActiveModel::Model)
  include(::ActiveModel::Serialization)
  include(::ActiveModel::Serializers::JSON)
  include(::Mongoid::Atomic)
  include(::Mongoid::Changeable)
  include(::Mongoid::Clients::StorageOptions)
  include(::Mongoid::Clients::Options)
  include(::Mongoid::Clients::Sessions)
  include(::Mongoid::Clients)
  include(::Mongoid::Attributes::Nested)
  include(::Mongoid::Attributes::Readonly)
  include(::Mongoid::Attributes::Processing)
  include(::Mongoid::Attributes)
  include(::Mongoid::Fields)
  include(::Mongoid::Indexable)
  include(::Mongoid::Matchable)
  include(::Mongoid::Persistable::Creatable)
  include(::Mongoid::Persistable::Deletable)
  include(::Mongoid::Persistable::Destroyable)
  include(::Mongoid::Persistable::Incrementable)
  include(::Mongoid::Persistable::Logical)
  include(::Mongoid::Persistable::Poppable)
  include(::Mongoid::Persistable::Pullable)
  include(::Mongoid::Persistable::Pushable)
  include(::Mongoid::Persistable::Renamable)
  include(::Mongoid::Persistable::Settable)
  include(::Mongoid::Persistable::Unsettable)
  include(::Mongoid::Positional)
  include(::Mongoid::Persistable::Savable)
  include(::Mongoid::Persistable::Updatable)
  include(::Mongoid::Persistable::Upsertable)
  include(::Mongoid::Persistable)
  include(::Mongoid::Association::Embedded::Cyclic)
  include(::Mongoid::Association::Referenced::AutoSave)
  include(::Mongoid::Association::Referenced::CounterCache)
  include(::Mongoid::Association::Accessors)
  include(::Mongoid::Association::Depending)
  include(::Mongoid::Association::Builders)
  include(::Mongoid::Association::Macros)
  include(::Mongoid::Association::Reflections)
  include(::Mongoid::Association::Referenced::Syncable)
  include(::Mongoid::Association)
  include(::Mongoid::Scopable)
  include(::Mongoid::Selectable)
  include(::Mongoid::Serializable)
  include(::Mongoid::Shardable)
  include(::Mongoid::Cacheable)
  include(::Mongoid::Threaded::Lifecycle)
  include(::Mongoid::Traversable)
  include(::Mongoid::Validatable)
  include(::Mongoid::Validatable::Macros)
  include(::Mongoid::Interceptable)
  include(::ActiveModel::Validations::Callbacks)
  include(::Mongoid::Copyable)
  include(::Mongoid::Evolvable)
  include(::Mongoid::Inspectable)
  include(::Mongoid::Reloadable)
  include(::Mongoid::Stateful)
  include(::Mongoid::Equality)
  include(::Mongoid::Composable)
  include(::Mongoid::Touchable::InstanceMethods)
  include(::Mongoid::Document)
  extend(::ActiveModel::Validations::ClassMethods)
  extend(::ActiveModel::Naming)
  extend(::ActiveModel::Callbacks)
  extend(::ActiveSupport::Callbacks::ClassMethods)
  extend(::ActiveSupport::DescendantsTracker)
  extend(::ActiveModel::Translation)
  extend(::ActiveModel::Validations::HelperMethods)
  extend(::ActiveModel::Conversion::ClassMethods)
  extend(::Mongoid::Changeable::ClassMethods)
  extend(::Mongoid::Clients::StorageOptions::ClassMethods)
  extend(::Mongoid::Clients::Options::ClassMethods)
  extend(::Mongoid::Clients::Sessions::ClassMethods)
  extend(::Mongoid::Attributes::Nested::ClassMethods)
  extend(::Mongoid::Attributes::Readonly::ClassMethods)
  extend(::Mongoid::Attributes::ClassMethods)
  extend(::Mongoid::Fields::ClassMethods)
  extend(::Mongoid::Indexable::ClassMethods)
  extend(::Mongoid::Persistable::Creatable::ClassMethods)
  extend(::Mongoid::Persistable::Deletable::ClassMethods)
  extend(::Mongoid::Persistable::Destroyable::ClassMethods)
  extend(::Mongoid::Association::Embedded::Cyclic::ClassMethods)
  extend(::Mongoid::Association::Referenced::CounterCache::ClassMethods)
  extend(::Mongoid::Association::Depending::ClassMethods)
  extend(::Mongoid::Association::Macros::ClassMethods)
  extend(::Mongoid::Association::Reflections::ClassMethods)
  extend(::Mongoid::Association::Referenced::Syncable::ClassMethods)
  extend(::Mongoid::Scopable::ClassMethods)
  extend(::Mongoid::Shardable::ClassMethods)
  extend(::Mongoid::Threaded::Lifecycle::ClassMethods)
  extend(::Mongoid::Traversable::ClassMethods)
  extend(::Mongoid::Traversable::DiscriminatorRetrieval)
  extend(::Mongoid::Validatable::ClassMethods)
  extend(::Mongoid::Validatable::Macros)
  extend(::ActiveModel::Validations::Callbacks::ClassMethods)
  extend(::Mongoid::Findable)
  extend(::Mongoid::Document::ClassMethods)
  extend(::Mongoid::Traversable::DiscriminatorAssignment)

  def ___id_default__; end
  def __callbacks; end
  def __callbacks?; end
  def _build_callbacks; end
  def _create_callbacks; end
  def _declared_scopes; end
  def _declared_scopes=(val); end
  def _declared_scopes?; end
  def _destroy_callbacks; end
  def _find_callbacks; end
  def _index; end
  def _index=(_arg0); end
  def _initialize_callbacks; end
  def _run_build_callbacks(&block); end
  def _run_create_callbacks(&block); end
  def _run_destroy_callbacks(&block); end
  def _run_find_callbacks(&block); end
  def _run_initialize_callbacks(&block); end
  def _run_save_callbacks(&block); end
  def _run_touch_callbacks(&block); end
  def _run_update_callbacks(&block); end
  def _run_upsert_callbacks(&block); end
  def _run_validate_callbacks(&block); end
  def _run_validation_callbacks(&block); end
  def _save_callbacks; end
  def _touch_callbacks; end
  def _update_callbacks; end
  def _upsert_callbacks; end
  def _validate_callbacks; end
  def _validation_callbacks; end
  def _validators; end
  def _validators?; end
  def aliased_fields; end
  def aliased_fields=(val); end
  def aliased_fields?; end
  def before_callback_halted; end
  def before_callback_halted=(_arg0); end
  def cache_timestamp_format; end
  def cyclic; end
  def cyclic=(val); end
  def cyclic?; end
  def default_scoping; end
  def default_scoping=(val); end
  def default_scoping?; end
  def dependents; end
  def dependents=(val); end
  def dependents?; end
  def dependents_owner; end
  def dependents_owner=(val); end
  def dependents_owner?; end
  def embedded=(val); end
  def embedded_relations; end
  def embedded_relations=(val); end
  def embedded_relations?; end
  def fields; end
  def fields=(val); end
  def fields?; end
  def id; end
  def id=(value); end
  def include_root_in_json; end
  def include_root_in_json?; end
  def index_specifications; end
  def index_specifications=(obj); end
  def localized_fields; end
  def localized_fields=(val); end
  def localized_fields?; end
  def model_name(*args, &block); end
  def nested_attributes; end
  def nested_attributes=(val); end
  def nested_attributes?; end
  def polymorphic; end
  def polymorphic=(val); end
  def polymorphic?; end
  def post_processed_defaults; end
  def post_processed_defaults=(val); end
  def post_processed_defaults?; end
  def pre_processed_defaults; end
  def pre_processed_defaults=(val); end
  def pre_processed_defaults?; end
  def readonly_attributes; end
  def readonly_attributes=(val); end
  def readonly_attributes?; end
  def relations; end
  def relations=(val); end
  def relations?; end
  def shard_config; end
  def shard_config=(obj); end
  def shard_key_fields; end
  def shard_key_fields=(obj); end
  def storage_options; end
  def validation_context; end

  private

  def validation_context=(_arg0); end

  class << self
    def __callbacks; end
    def __callbacks=(val); end
    def __callbacks?; end
    def _build_callbacks; end
    def _build_callbacks=(value); end
    def _create_callbacks; end
    def _create_callbacks=(value); end
    def _declared_scopes; end
    def _declared_scopes=(val); end
    def _declared_scopes?; end
    def _destroy_callbacks; end
    def _destroy_callbacks=(value); end
    def _find_callbacks; end
    def _find_callbacks=(value); end
    def _initialize_callbacks; end
    def _initialize_callbacks=(value); end
    def _save_callbacks; end
    def _save_callbacks=(value); end
    def _touch_callbacks; end
    def _touch_callbacks=(value); end
    def _update_callbacks; end
    def _update_callbacks=(value); end
    def _upsert_callbacks; end
    def _upsert_callbacks=(value); end
    def _validate_callbacks; end
    def _validate_callbacks=(value); end
    def _validation_callbacks; end
    def _validation_callbacks=(value); end
    def _validators; end
    def _validators=(val); end
    def _validators?; end
    def add_discriminator_mapping(value, klass = T.unsafe(nil)); end
    def after_build(*args, **options, &block); end
    def after_create(*args, **options, &block); end
    def after_destroy(*args, **options, &block); end
    def after_find(*args, **options, &block); end
    def after_initialize(*args, **options, &block); end
    def after_save(*args, **options, &block); end
    def after_touch(*args, **options, &block); end
    def after_update(*args, **options, &block); end
    def after_upsert(*args, **options, &block); end
    def aliased_fields; end
    def aliased_fields=(val); end
    def aliased_fields?; end
    def around_create(*args, **options, &block); end
    def around_destroy(*args, **options, &block); end
    def around_save(*args, **options, &block); end
    def around_update(*args, **options, &block); end
    def around_upsert(*args, **options, &block); end
    def before_create(*args, **options, &block); end
    def before_destroy(*args, **options, &block); end
    def before_save(*args, **options, &block); end
    def before_update(*args, **options, &block); end
    def before_upsert(*args, **options, &block); end
    def cache_timestamp_format; end
    def cache_timestamp_format=(obj); end
    def cyclic; end
    def cyclic=(val); end
    def cyclic?; end
    def default_scoping; end
    def default_scoping=(val); end
    def default_scoping?; end
    def dependents; end
    def dependents=(val); end
    def dependents?; end
    def dependents_owner; end
    def dependents_owner=(val); end
    def dependents_owner?; end
    def discriminator_key(*args, &block); end
    def discriminator_key?; end
    def discriminator_mapping; end
    def discriminator_mapping=(_arg0); end
    def embedded; end
    def embedded=(val); end
    def embedded?; end
    def embedded_relations; end
    def embedded_relations=(val); end
    def embedded_relations?; end
    def fields; end
    def fields=(val); end
    def fields?; end
    def get_discriminator_mapping(value); end
    def include_root_in_json(*args, &block); end
    def include_root_in_json=(val); end
    def include_root_in_json?; end
    def index_specifications; end
    def index_specifications=(obj); end
    def localized_fields; end
    def localized_fields=(val); end
    def localized_fields?; end
    def nested_attributes; end
    def nested_attributes=(val); end
    def nested_attributes?; end
    def polymorphic; end
    def polymorphic=(val); end
    def polymorphic?; end
    def post_processed_defaults; end
    def post_processed_defaults=(val); end
    def post_processed_defaults?; end
    def pre_processed_defaults; end
    def pre_processed_defaults=(val); end
    def pre_processed_defaults?; end
    def readonly_attributes; end
    def readonly_attributes=(val); end
    def readonly_attributes?; end
    def relations; end
    def relations=(val); end
    def relations?; end
    def shard_config; end
    def shard_config=(obj); end
    def shard_key_fields; end
    def shard_key_fields=(obj); end
    def storage_options; end
    def storage_options=(obj); end
  end
end

module Mongoid::Indexable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Indexable::ClassMethods)
end

module Mongoid::Indexable::ClassMethods
  sig { returns(T::Boolean) }
  def add_indexes; end
  sig { returns(T::Boolean) }
  def create_indexes; end
  # Adds an index definition for the provided single or compound keys.
  #
  # [MongoDB documentation](https://docs.mongodb.com/manual/reference/command/createIndexes/#dbcmd.createIndexes)
  #
  # **Examples**
  #
  # *Create a basic index*
  # ```
  # class Person
  #   include Mongoid::Document
  #   field :name, type: String
  #   index({ name: 1 }, { background: true })
  # end
  # ```
  sig { params(spec: T::Hash[T.any(String, Symbol), T.any(Integer, String)], options: T.nilable(T::Hash[Symbol, T.untyped])).returns(T::Hash[T.untyped, T.untyped]) }
  def index(spec, options = nil); end
  sig { params(index_hash: T::Hash[T.untyped, T.untyped], index_name: T.nilable(String)).returns(Mongoid::Indexable::Specification) }
  def index_specification(index_hash, index_name = nil); end
  sig { returns(T::Boolean) }
  def remove_indexes; end

  private

  sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
  def index_keys; end
  sig { returns(T::Array[String]) }
  def indexed_database_names; end
end

class Mongoid::Indexable::Specification
  sig {params(klass: Class, key: T::Hash[T.untyped, T.untyped], opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns Mongoid::Indexable::Specification}
  def initialize(klass, key, opts = T.unsafe(nil)); end

  sig {params(other: T.self_type).returns T::Boolean}
  def ==(other); end
  sig {returns T::Array[T.untyped]}
  def fields; end
  sig {returns T::Hash[T.untyped, T.untyped]}
  def key; end
  sig {returns Class}
  def klass; end
  sig {returns String}
  def name; end
  sig {returns T::Hash[T.untyped, T.untyped]}
  def options; end

  private

  def normalize_key(key); end
  def normalize_options(opts); end
end

Mongoid::Indexable::Specification::MAPPINGS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module Mongoid::Indexable::Validators
end

module Mongoid::Indexable::Validators::Options
  extend(::Mongoid::Indexable::Validators::Options)
  sig { params(klass: Class, spec: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
  def validate(klass, spec, options); end

  private

  sig { params(klass: Class, spec: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
  def validate_options(klass, spec, options); end
  sig { params(klass: Class, spec: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
  def validate_spec(klass, spec, options); end
end

Mongoid::Indexable::Validators::Options::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[T.untyped])

Mongoid::Indexable::Validators::Options::VALID_TYPES = T.let(T.unsafe(nil), T::Array[T.untyped])

module Mongoid::Inspectable
  sig {returns String}
  def inspect; end

  private

  def inspect_dynamic_fields; end
  def inspect_fields; end
end

module Mongoid::Interceptable
  extend(::ActiveSupport::Concern)

  include(::ActiveSupport::Callbacks)
  include(::ActiveModel::Validations::Callbacks)

  mixes_in_class_methods(::ActiveSupport::DescendantsTracker)

  sig { params(kind: Symbol).returns(T::Boolean) }
  def callback_executable?(kind); end
  sig { params(kind: Symbol).returns(T::Boolean) }
  def in_callback_state?(kind); end
  sig { params(kinds: Symbol).returns(Object) }
  def run_after_callbacks(*kinds); end
  sig { params(kinds: Symbol).returns(Object) }
  def run_before_callbacks(*kinds); end
  sig { params(kind: Symbol, args: T::Array[T.untyped], block: T.untyped).returns(Mongoid::Document) }
  def run_callbacks(kind, *args, &block); end

  private

  sig { returns(T::Boolean) }
  def before_callback_halted?; end
  sig { params(kind: Symbol, children: T.untyped).returns(T::Array[Mongoid::Document]) }
  def cascadable_children(kind, children = Set.new); end
  sig { params(kind: Symbol, child: Mongoid::Document, association: T.untyped).returns(T::Boolean) }
  def cascadable_child?(kind, child, association); end
  sig { params(kind: Symbol, child: Mongoid::Document).returns(Symbol) }
  def child_callback_type(kind, child); end
  sig { params(filter: Symbol).returns(T.untyped) }
  def halted_callback_hook(filter); end
  sig { params(place: Symbol, kind: Symbol).returns(T.untyped) }
  def run_targeted_callbacks(place, kind); end
end

Mongoid::Interceptable::CALLBACKS = T.let(T.unsafe(nil), T::Array[Symbol])

module Mongoid::Loggable
  sig {returns Logger}
  attr_accessor :logger

  private

  sig { returns(Logger) }
  def default_logger; end
  sig { returns(Logger) }
  def rails_logger; end
end

Mongoid::MONGODB_VERSION = T.let(T.unsafe(nil), String)

module Mongoid::Matchable
  extend(::ActiveSupport::Concern)

  sig { params(selector: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def _matches?(selector); end
end

module Mongoid::Matcher
  private

  def extract_attribute(document, key); end

  class << self
    def extract_attribute(document, key); end
  end
end

module Mongoid::Matcher::All
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::And
  private

  def matches?(document, expr); end

  class << self
    def matches?(document, expr); end
  end
end

module Mongoid::Matcher::ElemMatch
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::ElemMatchExpression
  private

  def matches?(document, expr); end

  class << self
    def matches?(document, expr); end
  end
end

module Mongoid::Matcher::Eq
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::EqImpl
  private

  def matches?(exists, value, condition, original_operator); end

  class << self
    def matches?(exists, value, condition, original_operator); end
  end
end

module Mongoid::Matcher::EqImplWithRegexp
  private

  def matches?(original_operator, value, condition); end

  class << self
    def matches?(original_operator, value, condition); end
  end
end

module Mongoid::Matcher::Exists
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::Expression
  private

  def matches?(document, expr); end

  class << self
    def matches?(document, expr); end
  end
end

module Mongoid::Matcher::ExpressionOperator
  private

  def get(op); end

  class << self
    def get(op); end
  end
end

Mongoid::Matcher::ExpressionOperator::MAP = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

module Mongoid::Matcher::FieldExpression
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::FieldOperator
  private

  def apply_array_field_operator(exists, value, condition); end
  def apply_comparison_operator(operator, left, right); end
  def get(op); end

  class << self
    def apply_array_field_operator(exists, value, condition); end
    def apply_comparison_operator(operator, left, right); end
    def get(op); end
  end
end

Mongoid::Matcher::FieldOperator::MAP = T.let(T.unsafe(nil), T::Hash[String, Module])

module Mongoid::Matcher::Gt
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::Gte
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::In
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::Lt
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::Lte
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::Ne
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::Nin
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::Nor
  private

  def matches?(document, expr); end

  class << self
    def matches?(document, expr); end
  end
end

module Mongoid::Matcher::Not
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

module Mongoid::Matcher::Or
  private

  def matches?(document, expr); end

  class << self
    def matches?(document, expr); end
  end
end

module Mongoid::Matcher::Regex
  private

  def matches?(exists, value, condition); end
  def matches_array_or_scalar?(value, condition); end

  class << self
    def matches?(exists, value, condition); end
    def matches_array_or_scalar?(value, condition); end
  end
end

module Mongoid::Matcher::Size
  private

  def matches?(exists, value, condition); end

  class << self
    def matches?(exists, value, condition); end
  end
end

Mongoid::PLATFORM_DETAILS = T.let(T.unsafe(nil), String)

module Mongoid::Persistable
  include(::Mongoid::Positional)
  include(::Mongoid::Persistable::Savable)
  include(::Mongoid::Persistable::Updatable)
  include(::Mongoid::Persistable::Upsertable)
  extend(::ActiveSupport::Concern)

  include(::Mongoid::Persistable::Creatable)
  include(::Mongoid::Persistable::Deletable)
  include(::Mongoid::Persistable::Destroyable)
  include(::Mongoid::Persistable::Incrementable)
  include(::Mongoid::Persistable::Logical)
  include(::Mongoid::Persistable::Poppable)
  include(::Mongoid::Persistable::Pullable)
  include(::Mongoid::Persistable::Pushable)
  include(::Mongoid::Persistable::Renamable)
  include(::Mongoid::Persistable::Settable)
  include(::Mongoid::Persistable::Unsettable)

  sig { params(join_context: T.nilable(T::Boolean)).returns(T::Boolean) }
  def atomically(join_context: nil); end
  sig { params(method: Symbol).returns(T.untyped) }
  def fail_due_to_callback!(method); end
  sig { returns(T.untyped) }
  def fail_due_to_validation!; end

  private

  sig { returns(T::Array[T.untyped]) }
  def _mongoid_atomic_context_changed_fields; end
  sig { returns(T.untyped) }
  def _mongoid_pop_atomic_context; end
  sig { returns(T.untyped) }
  def _mongoid_push_atomic_context; end
  sig { returns(T.untyped) }
  def _mongoid_remove_atomic_context_changes; end
  sig { returns(T.untyped) }
  def _mongoid_reset_atomic_context_changes!; end
  sig { returns(T::Boolean) }
  def executing_atomically?; end
  sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
  def persist_atomic_operations(operations); end
  sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
  def persist_or_delay_atomic_operation(operation); end
  sig { params(result: Object, options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def post_process_persist(result, options = {}); end
  sig { returns(Object) }
  def prepare_atomic_operation; end
  sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
  def process_atomic_operations(operations); end
end

module Mongoid::Persistable::Creatable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Persistable::Creatable::ClassMethods)

  # Insert a new document into the database.
  # Will return the document itself whether or not
  # the save was successful.
  #
  # **Options**
  #
  # See [MongoDB documentation](https://docs.mongodb.com/manual/reference/method/db.collection.insert/index.html#definition)
  # - `:write_concern => Hash` A document expressing the [write concern](https://docs.mongodb.com/manual/reference/write-concern/).
  # - `:ordered => Boolean` Defaults to true.
  sig { params(options: T::Hash[Symbol, T.untyped]).returns(T.self_type) }
  def insert(options = {}); end

  private

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def atomic_inserts; end
  sig { returns(T.self_type) }
  def insert_as_embedded; end
  sig { returns(T.self_type) }
  def insert_as_root; end
  sig { returns(T::Boolean) }
  def post_process_insert; end
  sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T.self_type) }
  def prepare_insert(options = {}); end
end

module Mongoid::Persistable::Creatable::ClassMethods
  # Create a single or multiple new documents. This will
  # instantiate a new document and insert it in a single call.
  # Will always return the document whether save passed or not.
  #
  # **Examples**
  #
  # *Create a new document*
  # ```
  # Person.create(title: 'Mr')
  # ```
  # *Create multiple new documents*
  # ```
  # Person.create({ title: 'Mr' }, { title: 'Mrs' })
  # ```
  #
  # [MongoDB documentation](https://docs.mongodb.com/mongoid/current/tutorials/mongoid-persistence/#standard)
  #
  # *Note:* Until overloads are available in RBI,
  # you need to manually check the return type of `create`.
  sig do
    params(
      attributes: T.nilable(T.any(
        T::Hash[T.untyped, T.untyped],
        T::Array[T::Hash[T.untyped, T.untyped]]
      )),
      block: T.nilable(
        T.proc.params(d: Mongoid::Document).void
      )
    ).returns(T.any(
        Mongoid::Document,
        T::Array[Mongoid::Document]
      ))
  end
  def create(attributes = nil, &block); end
  # Create a single or multiple new documents. This will instantiate
  # a new document and insert it in a single call.
  # Raises `Mongoid::Errors::Validations` if any of the documents
  # fail to save.
  #
  # **Examples**
  # ```
  # Person.create!(
  #   first_name: "Heinrich",
  #   last_name: "Heine"
  # ) # => Person instance
  #
  # Person.create!([
  #   { first_name: "Heinrich", last_name: "Heine" },
  #   { first_name: "Willy", last_name: "Brandt" }
  # ]) # => Array of two Person instances
  #
  # Person.create!(first_name: "Heinrich") do |doc|
  #   doc.last_name = "Heine"
  # end # => Person instance
  # ```
  #
  # [MongoDB documentation](https://docs.mongodb.com/mongoid/current/tutorials/mongoid-persistence/#standard)
  sig do
    params(
      attributes: T.nilable(T.any(
        T::Hash[T.untyped, T.untyped],
        T::Array[T::Hash[T.untyped, T.untyped]]
      )),
      block: T.nilable(
        T.proc.params(d: Mongoid::Document).void
      )
    ).returns(T.any(
        Mongoid::Document,
        T::Array[Mongoid::Document]
      ))
  end
  def create!(attributes = nil, &block); end
end

module Mongoid::Persistable::Deletable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Persistable::Deletable::ClassMethods)

  # Remove the document from the database.
  # Raises `Mongoid::Errors::ReadonlyDocument` on failure.
  sig { params(options: T::Hash[T.untyped, T.untyped]).returns(TrueClass) }
  def delete(options = {}); end
  def remove(options = T.unsafe(nil)); end

  private

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def atomic_deletes; end
  sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def delete_as_embedded(options = {}); end
  sig { returns(T::Boolean) }
  def delete_as_root; end
  sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def notifying_parent?(options = {}); end
  sig { returns(T.untyped) }
  def prepare_delete; end
end

module Mongoid::Persistable::Deletable::ClassMethods
  # Delete all documents given the supplied conditions.
  # If no conditions are passed, the entire collection
  # will be dropped for performance benefits. Does not
  # fire any callbacks.
  #
  # Returns the number of documents deleted.
  #
  # **Examples**
  #
  # *Delete matching documents from the collection*
  # ```
  # Person.delete_all(title: 'Sir')
  # ```
  #
  # *Delete all documents from the collection*
  # ```
  # Person.delete_all
  # ```
  sig { params(conditions: T::Hash[T.untyped, T.untyped]).returns(Integer) }
  def delete_all(conditions = {}); end
end

module Mongoid::Persistable::Destroyable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Persistable::Destroyable::ClassMethods)

  # Remove the document from the database with callbacks.
  # Raises `Mongoid::Errors::ReadonlyDocument` on failure.
  sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Boolean) }
  def destroy(options = nil); end
  sig { params(options: T.untyped).returns(T.untyped) }
  def destroy!(options = {}); end
end

module Mongoid::Persistable::Destroyable::ClassMethods
  # Delete all documents given the supplied conditions.
  # If no conditions are passed, the entire collection
  # will be dropped for performance benefits.
  # Fires the destroy callbacks if conditions were passed.
  #
  # Returns the number of documents destroyed.
  sig { params(conditions: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Integer) }
  def destroy_all(conditions = nil); end
end

module Mongoid::Persistable::Incrementable
  extend(::ActiveSupport::Concern)

  # Increment the provided fields by the corresponding values.
  # Values can be positive or negative, and if no value exists
  # for the field it will be set with the provided value.
  #
  # **Examples**
  #
  # *Increment the fields*
  # ```
  # document.inc(score: 10, place: 1, lives: -10)
  # ```
  sig { params(increments: T::Hash[T.any(String, Symbol), Numeric]).returns(T.self_type) }
  def inc(increments); end
end

Mongoid::Persistable::LIST_OPERATIONS = T.let(T.unsafe(nil), T::Array[String])

module Mongoid::Persistable::Logical
  extend(::ActiveSupport::Concern)

  # Performs an atomic $bit operation on the field
  # with the provided hash of bitwise ops to execute in order.
  #
  # [MongoDB documentation](https://docs.mongodb.com/manual/reference/operator/update/bit/)
  #
  # **Examples**
  #
  # *Execute the bitwise operations*
  # ```
  # person.bit(age: { and: 12 }, val: { and: 10, or: 12 })
  # ```
  sig { params(operations: T::Hash[T.any(Symbol, String), T::Hash[Symbol, Numeric]]).returns(T.self_type) }
  def bit(operations); end
end

module Mongoid::Persistable::Poppable
  extend(::ActiveSupport::Concern)

  # Pop or shift items from arrays using the $pop operator.
  #
  # **Examples**
  #
  # *Pop items from an array*
  # ```
  # document.pop(aliases: 1)
  # ```
  # *Shift items in the array*
  # ```
  # document.pop(aliases: -1)
  # ```
  # *Multiple pops in one call*
  # ```
  # document.pop(names: 1, aliases: 1)
  # ```
  sig { params(pops: T::Hash[T.any(Symbol, String), T.untyped]).returns(T.self_type) }
  def pop(pops); end
end

module Mongoid::Persistable::Pullable
  extend(::ActiveSupport::Concern)

  # Pull single values from the provided arrays.
  #
  # **Examples**
  #
  # *Pull a value from the array*
  # ```
  # document.pull(names: 'Jeff', levels: 5)
  # ```
  sig { params(pulls: T::Hash[T.any(Symbol, String), T.untyped]).returns(T.self_type) }
  def pull(pulls); end
  # Pull multiple values from the provided array fields.
  #
  # **Examples**
  #
  # *Pull values from the arrays*
  # ```
  # document.pull_all(names: ['Jeff', 'Bob'], levels: [5, 6])
  # ```
  sig { params(pulls: T::Hash[T.any(Symbol, String), T::Array[T.untyped]]).returns(T.self_type) }
  def pull_all(pulls); end
end

module Mongoid::Persistable::Pushable
  extend(::ActiveSupport::Concern)

  # Add the single values to the arrays only if
  # the value does not already exist in the array.
  #
  # **Examples**
  #
  # *Add the values to the sets*
  # ```
  # document.add_to_set(names: 'James', aliases: 'Bond')
  # ```
  sig { params(adds: T::Hash[T.any(Symbol, String), T.untyped]).returns(T.self_type) }
  def add_to_set(adds); end

  # Push a single value or multiple values onto arrays.
  #
  # **Examples**
  #
  # *Push a single value onto arrays*
  # ```
  # document.push(names: 'James', aliases: '007')
  # ```
  # *Push multiple values onto arrays*
  # ```
  # document.push(names: ['James', 'Bond'])
  # ```
  sig { params(pushes: T::Hash[T.any(Symbol, String), T.untyped]).returns(T.self_type) }
  def push(pushes); end
end

module Mongoid::Persistable::Renamable
  extend(::ActiveSupport::Concern)

  # Rename fields from one value to another via $rename.
  #
  # **Note:** This does not work for fields in
  # `embeds_many` associations.
  sig { params(renames: T::Hash[T.any(Symbol, String), String]).returns(T.self_type) }
  def rename(renames); end
end

module Mongoid::Persistable::Savable
  # Save the document - will perform an insert
  # if the document is new, and update if not.
  sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def save(options = {}); end
  # Save the document - will perform an insert
  # if the document is new, and update if not.
  #
  # Raises:
  # - `Mongoid::Errors::Validations` on validation faliure.
  # - `Mongoid::Errors::Callback` on database failure.
  sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def save!(options = {}); end
end

module Mongoid::Persistable::Settable
  extend(::ActiveSupport::Concern)

  # Perform a $set operation on the provided field/value
  # pairs and set the values in the document in memory.
  #
  # **Note:** Unlike MongoDB's $set, Mongoid's `set` writes
  # out the entire field even when setting a subset of the field
  # via the nested hash semantics. This means performing a $set
  # with nested hash semantics can overwrite other hash keys
  # within the top level field in the database.
  #
  # **Examples**
  #
  # *Set the values*
  # ```
  # document.set(title: 'sur', dob: Date.new(1970, 1, 1))
  # ```
  # *Set the values using nested hash semantics*
  # ```
  # document.set('author.title' => 'Sir')
  # document.author #=> {'title' => 'Sir'}
  # ```
  # *Nested hash value merging*
  # ```
  # document.set('author.title' => 'Sir')
  # document.set('author.name' => 'Linus Torvalds')
  # document.author #=> {'title' => 'Sir', 'name' => 'Linus Torvalds'}
  # ```
  # *Nested hash overwriting a non-hash value*
  # ```
  # document.set('author' => 'John Doe')
  # document.set('author.title' => 'Sir')
  # document.author #=> {'title' => 'Sir'}
  # ```
  sig { params(setters: T::Hash[T.any(Symbol, String), T.untyped]).returns(T.self_type) }
  def set(setters); end
end

module Mongoid::Persistable::Unsettable
  extend(::ActiveSupport::Concern)

  # Perform an $unset operation on the provided fields
  # and in the values in the document in memory.
  sig { params(fields: T.any(String, Symbol)).returns(T.self_type) }
  def unset(*fields); end
end

module Mongoid::Persistable::Updatable
  # Update the document attributes in the database.
  # Returns whether validation passed.
  #
  # **Examples**
  #
  # *Update the document's attributes*
  # ```
  # document.update(title: 'Sir')
  # ```
  sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def update(attributes = {}); end
  # Update the document attributes in the database
  # and raise an error if validation failed.
  #
  # Raises:
  # - `Mongoid::Errors::Validations` on vaildation failure
  # - `Mongoid::Errors::Callbacks` on database failure
  sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(TrueClass) }
  def update!(attributes = {}); end
  # Update a single attribute and persist the entire document.
  # This skips validation but fires the callbacks.
  sig { params(name: T.any(Symbol, String), value: T.untyped).returns(T::Boolean) }
  def update_attribute(name, value); end
  def update_attributes(attributes = T.unsafe(nil)); end
  def update_attributes!(attributes = T.unsafe(nil)); end

  private

  sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
  def init_atomic_updates; end
  sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def prepare_update(options = {}); end
  sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def update_document(options = {}); end
end

module Mongoid::Persistable::Upsertable
  # Perform an upsert of the document. If the document
  # does not exist in the database, then Mongo will
  # insert a new one, otherwise the fields will get overwritten
  # with new values on the existing document.
  sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def upsert(options = {}); end

  private

  sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
  def prepare_upsert(options = {}); end
end

class Mongoid::PersistenceContext
  extend(::Forwardable)

  sig { params(object: Object, opts: T.nilable(T::Hash[T.untyped, T.untyped])).void }
  def initialize(object, opts = nil); end
  sig { params(other: T.untyped).returns(T::Boolean) }
  def ==(other); end
  sig { returns(::Mongo::Client) }
  def client; end
  sig { returns(T.untyped) }
  def client_name; end
  def cluster(*args, &block); end
  sig { params(parent: T.nilable(Object)).returns(::Mongo::Collection) }
  def collection(parent = nil); end
  sig { returns(String) }
  def collection_name; end
  sig { returns(String) }
  def database_name; end
  sig {returns T::Hash[T.untyped, T.untyped]}
  attr_reader :options
  def storage_options(*args, &block); end

  private

  def __evaluate__(name); end
  def client_options; end
  def database_name_option; end
  def set_options!(opts); end

  class << self
    sig { params(object: T.any(Class, Object), cluster: T.nilable(::Mongo::Cluster), original_context: T.nilable(::Mongoid::PersistenceContext)).returns(T.untyped) }
    def clear(object, cluster = nil, original_context = nil); end
    sig { params(object: Object).returns(::Mongoid::PersistenceContext) }
    def get(object); end
    sig { params(object: Object, options_or_context: T.any(T::Hash[T.untyped, T.untyped], Mongoid::PersistenceContext)).returns(::Mongoid::PersistenceContext) }
    def set(object, options_or_context); end
  end
end

Mongoid::PersistenceContext::EXTRA_OPTIONS = T.let(T.unsafe(nil), T::Array[Symbol])

Mongoid::PersistenceContext::VALID_OPTIONS = T.let(T.unsafe(nil), T::Array[Symbol])

module Mongoid::Positional
  # Takes the provided selector and atomic operations
  # and replaces the indexes of the embedded documents
  # with the positional operator when needed.
  #
  # [Mongoid documentation](https://docs.mongodb.com/mongoid/master/api/Mongoid/Positional.html#positionally-instance_method)
  sig { params(selector: T::Hash[T.untyped, T.untyped], operations: T::Hash[T.untyped, T.untyped], processed: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
  def positionally(selector, operations, processed = {}); end

  private

  sig { params(keys: T.untyped, operations: T.untyped, processed: T.untyped).returns(T.untyped) }
  def process_operations(keys, operations, processed); end
  sig { params(keys: T.untyped, update: T.untyped, updates: T.untyped).returns(T.untyped) }
  def process_updates(keys, update, updates = {}); end
  sig { params(keys: T.untyped, position: T.untyped).returns(T.untyped) }
  def replace_index(keys, position); end
end

module Mongoid::QueryCache
  class << self
    # Execute the block while using the query cache.
    #
    # Returns the result from the block.
    #
    # **Examples**
    #
    # *Execute with the cache*
    # ```
    # criteria = QueryCache.cache do
    #   Person.where(name: 'John').to_a
    # end #=> Array<Person>
    # ```
    sig do
      type_parameters(:U)
      params(block: T.proc.returns(T.type_parameter(:U))).returns(T.type_parameter(:U))
    end
    def cache(&block); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    private def cache_table; end
    sig {void}
    def clear_cache; end
    sig {params(value: T::Boolean).void}
    def enabled=(value); end
    sig {returns T::Boolean}
    def enabled?; end
    # Execute the block with the query cache disabled.
    sig do
      type_parameters(:U)
      params(block: T.proc.returns(T.type_parameter(:U))).returns(T.type_parameter(:U))
    end
    def uncached(&block); end
  end
end

module Mongoid::QueryCache::Base
  def alias_query_cache_clear(*method_names); end
end

# Deprecated. This class is only used with driver versions 2.13 and lower.
class Mongoid::QueryCache::CachedCursor < Mongo::Cursor
  Elem = Mongoid::Document
  def each; end
  def inspect; end

  private

  def process(result); end
end

module Mongoid::QueryCache::Collection
  extend(::ActiveSupport::Concern)
end

module Mongoid::QueryCache::Document
  # Bypass the cache.
  def reload; end
end

class Mongoid::QueryCache::Middleware
  def initialize(app); end

  def call(env); end
end

# Deprecated. This module is only used with driver versions 2.13 and lower.
module Mongoid::QueryCache::View
  extend(::ActiveSupport::Concern)

  def each; end

  private

  def cache_key; end
  def cached_cursor; end
  def system_collection?; end
end

module Mongoid::Reloadable
  # Reloads the Document attributes from the database.
  # If the document has not been saved then `Mongoid::Errors::DocumentNotFound`
  # will get raised if the configuration option was set.
  # This can reload root documents or embedded documents.
  sig {returns T.self_type}
  def reload; end

  private

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def _reload; end
  sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
  def extract_embedded_attributes(attributes); end
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def reload_embedded_document; end
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def reload_root_document; end
end

module Mongoid::Scopable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Scopable::ClassMethods)

  private

  sig { returns(T::Boolean) }
  def apply_default_scoping; end
end

module Mongoid::Scopable::ClassMethods
  # Get a criteria with the default scope applied, if possible.
  sig {returns Mongoid::Criteria}
  def criteria; end
  # Is the class able to have the default scope applied?
  sig { returns(T::Boolean) }
  def default_scopable?; end
  # Add a default scope to the model. This scope will be
  # applied to all criteria unless `Model.unscoped` is specified.
  #
  # Raises `Mongoid::Errors::InvalidScope` if `value` is not a proc
  # or a criteria.
  #
  # [Mongoid documentation](https://docs.mongodb.com/mongoid/master/api/Mongoid/Scopable/ClassMethods.html#default_scope-instance_method)
  sig { params(value: T.nilable(T.any(Proc, Mongoid::Criteria))).returns(Proc) }
  def default_scope(value = T.unsafe(nil)); end
  sig { returns(Mongoid::Criteria) }
  private def queryable; end
  # Create a scope that can be accessed from the class level
  # or chained to criteria by the provided name.
  #
  # [Mongoid documentation](https://docs.mongodb.com/mongoid/master/api/Mongoid/Scopable/ClassMethods.html#scope-instance_method)
  #
  # Raises:
  # - `Mongoid::Errors::InvalidScope` if the scope is not a `Proc`.
  # - `Mongoid::Errors::ScopeOverwrite` if scope name already exists.
  sig { params(name: Symbol, value: Proc, block: T.untyped).void }
  def scope(name, value, &block); end
  # Overrides the criteria with the default scope.
  # 
  # **Options:**
  # - `:skip => Integer` Optional number of documents to skip.
  # - `:limit => Integer` Optional number of documents to limit.
  # - `:sort => Array` Optional sorting options.
  sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Mongoid::Criteria) }
  def scoped(options = nil); end
  # Returns a hash of all the scopes defined for this class,
  # including scopes defined on ancestor classes.
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def scopes; end
  # Get the criteria without the default scoping applied.
  # If a block passed, this returns the result of the block.
  # Otherwise this returns the unscoped criteria.
  sig do
    type_parameters(:U)
    params(block: T.nilable(T.proc.returns(T.type_parameter(:U)))).returns(T.any(Mongoid::Criteria, T.type_parameter(:U)))
  end
  def unscoped(&block); end
  # Get a criteria with the default scope applied, if possible.
  sig {returns Mongoid::Criteria}
  def with_default_scope; end
  # Pushes the provided criteria onto the scope stack,
  # and removes it after the provided block is yielded.
  sig { params(criteria: Mongoid::Criteria).returns(Mongoid::Criteria) }
  def with_scope(criteria); end
  # Execute the block without applying the default scope.
  #
  # Returns the result of the block.
  #
  # **Examples**
  #
  # *Execute without the default scope*
  # ```
  # criteria = Band.without_default_scope do
  #   Band.where(name: 'Depeche Mode')
  # end #=> Mongoid::Criteria
  # ```
  sig do
    type_parameters(:U)
    params(
      block: T.proc.returns(T.type_parameter(:U))
    ).returns(T.type_parameter(:U))
  end
  def without_default_scope(&block); end

  private

  sig { params(name: T.any(String, Symbol)).returns(T.untyped) }
  def check_scope_name(name); end
  sig { params(value: T.untyped).returns(T.untyped) }
  def check_scope_validity(value); end
  sig { params(name: Symbol).returns(Method) }
  def define_scope_method(name); end
  sig { params(value: T.any(Mongoid::Criteria, Proc)).returns(T.untyped) }
  def process_default_scope(value); end
end

module Mongoid::Selectable
  extend(::ActiveSupport::Concern)

  # Get the atomic selector for the document. This
  # is a hash in the simplest case `{ “_id” => id }`,
  # but can become more complex for embedded documents
  # and documents that use a shard key.
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def atomic_selector; end

  private

  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def embedded_atomic_selector; end
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def root_atomic_selector; end
end

module Mongoid::Serializable
  extend(::ActiveSupport::Concern)

  # Gets the document as a serializable hash,
  # used by ActiveModel's JSON serializer.
  #
  # **Options:**
  # - `:include` What associations to include.
  # - `:only` Limit the fields to only these.
  # - `:except` Don't include these fields.
  # - `:methods` What methods to include.
  sig { params(options: T.nilable(T::Hash[Symbol, T.any(Symbol, T::Array[Symbol])])).returns(T::Hash[T.untyped, T.untyped]) }
  def serializable_hash(options = nil); end

  private

  sig { params(options: T.untyped).returns(T::Array[String]) }
  def field_names(options); end
  sig { params(inclusions: T.any(T::Hash[T.untyped, T.untyped], Symbol, T::Array[Symbol])).returns(T::Array[Symbol]) }
  def relation_names(inclusions); end
  sig { params(inclusions: T.any(T::Hash[T.untyped, T.untyped], Symbol, T::Array[Symbol]), options: T::Hash[T.untyped, T.untyped], name: Symbol).returns(T::Hash[T.untyped, T.untyped]) }
  def relation_options(inclusions, options, name); end
  sig do
    params(
      attrs: T::Hash[T.untyped, T.untyped],
      name: String,
      names: T::Array[String],
      options: T::Hash[T.untyped, T.untyped]
    ).returns(Object)
  end
  def serialize_attribute(attrs, name, names, options); end
  sig { params(attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
  def serialize_relations(attributes = {}, options = {}); end
end

module Mongoid::Shardable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Shardable::ClassMethods)

  sig { returns(T::Array[String]) }
  def shard_key_fields; end
  sig { returns(T::Hash[T.untyped, T.untyped]) }
  def shard_key_selector; end
end

module Mongoid::Shardable::ClassMethods
  # Specifies a [shard key](https://docs.mongodb.com/manual/core/sharding-shard-key/index.html)
  # with the fields specified.
  #
  # Requires one or two entries if a Hash,
  # or one or two symbols if an Array.
  #
  # **Examples**
  #
  # *Specify the shard key*
  # ```
  # class Person
  #   include Mongoid::Dcoument
  #   field :first_name, type: String
  #   field :last_name, type: String
  #
  #   shard_key first_name: 1, last_name: 1
  #   # Shorthand, identical to above line
  #   shard_key :first_name, :last_name
  # end
  # ```
  sig {params(args: T.any(T::Hash[T.any(String, Symbol), Integer], T::Array[T.any(String, Symbol)])).void}
  def shard_key(*args); end
end

module Mongoid::Stateful
  def _destroy; end
  sig {returns T::Boolean}
  attr_accessor :destroyed
  sig {params(flagged_for_destroy: T::Boolean).void}
  attr_writer :flagged_for_destroy
  sig { returns(T::Boolean) }
  def flagged_for_destroy?; end
  sig { returns(T::Boolean) }
  def marked_for_destruction?; end
  sig {params(new_record: T::Boolean).void}
  attr_writer :new_record
  sig { returns(T::Boolean) }
  def new_record?; end
  sig { returns(T::Boolean) }
  def persisted?; end
  sig { returns(T::Boolean) }
  def pushable?; end
  sig { returns(T::Boolean) }
  def readonly?; end
  sig { returns(T::Boolean) }
  def settable?; end
  sig { returns(T::Boolean) }
  def updateable?; end

  private

  sig {void}
  def reset_readonly; end
end

class Mongoid::StringifiedSymbol
  class << self
    sig { params(object: Object).returns(Symbol) }
    def demongoize(object); end
    def evolve(object); end
    sig { params(object: Object).returns(Symbol) }
    def mongoize(object); end
  end
end

module Mongoid::Tasks
end

module Mongoid::Tasks::Database
  extend(::Mongoid::Tasks::Database)

  sig { params(models: T.untyped).returns(T::Array[Class]) }  
  def create_indexes(models = T.unsafe(nil)); end
  sig { params(models: T.untyped).returns(T::Array[Class]) }  
  def remove_indexes(models = T.unsafe(nil)); end
  sig { params(models: T.untyped).returns(T::Hash[Class, T::Array[T::Hash[T.untyped, T.untyped]]]) }
  def remove_undefined_indexes(models = T.unsafe(nil)); end
  sig { params(models: T.untyped).returns(T::Array[Class]) }
  def shard_collections(models = T.unsafe(nil)); end
  sig { params(models: T.untyped).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
  def undefined_indexes(models = T.unsafe(nil)); end

  private

  def logger; end
end

module Mongoid::Threaded
  extend(::Mongoid::Threaded)

  def autosaved?(document); end
  def autosaves; end
  def autosaves_for(klass); end
  def begin_autosave(document); end
  def begin_execution(name); end
  def begin_validate(document); end
  def begin_without_default_scope(klass); end
  def clear_session; end
  def client_override; end
  def client_override=(name); end
  def current_scope(klass = T.unsafe(nil)); end
  def current_scope=(scope); end
  def database_override; end
  def database_override=(name); end
  def executing?(name); end
  def exit_autosave(document); end
  def exit_execution(name); end
  def exit_validate(document); end
  def exit_without_default_scope(klass); end
  def get_session; end
  def set_current_scope(scope, klass); end
  def set_session(session); end
  def stack(name); end
  def validated?(document); end
  def validations; end
  def validations_for(klass); end
  def without_default_scope?(klass); end
end

Mongoid::Threaded::ASSIGN = T.let(T.unsafe(nil), String)

Mongoid::Threaded::AUTOSAVES_KEY = T.let(T.unsafe(nil), String)

Mongoid::Threaded::BIND = T.let(T.unsafe(nil), String)

Mongoid::Threaded::BUILD = T.let(T.unsafe(nil), String)

Mongoid::Threaded::CLIENTS_KEY = T.let(T.unsafe(nil), String)

Mongoid::Threaded::CLIENT_OVERRIDE_KEY = T.let(T.unsafe(nil), String)

Mongoid::Threaded::CREATE = T.let(T.unsafe(nil), String)

Mongoid::Threaded::CURRENT_SCOPE_KEY = T.let(T.unsafe(nil), String)

Mongoid::Threaded::DATABASE_OVERRIDE_KEY = T.let(T.unsafe(nil), String)

Mongoid::Threaded::LOAD = T.let(T.unsafe(nil), String)

module Mongoid::Threaded::Lifecycle
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Threaded::Lifecycle::ClassMethods)

  private

  def _assigning; end
  def _assigning?; end
  def _binding; end
  def _binding?; end
  def _building; end
  def _building?; end
  def _creating?; end
  def _loading; end
  def _loading?; end
end

module Mongoid::Threaded::Lifecycle::ClassMethods
  def _creating; end
end

Mongoid::Threaded::STACK_KEYS = T.let(T.unsafe(nil), T::Hash[T.untyped, T.untyped])

Mongoid::Threaded::VALIDATIONS_KEY = T.let(T.unsafe(nil), String)

module Mongoid::Timestamps
  extend(::ActiveSupport::Concern)

  include(::Mongoid::Timestamps::Timeless)
  include(::Mongoid::Timestamps::Created)
  include(::Mongoid::Timestamps::Updated)
end

module Mongoid::Timestamps::Created
  extend(::ActiveSupport::Concern)

  include(::Mongoid::Timestamps::Timeless)

  # Update the created_at field on the Document to the current time.
  # This is only called on create.
  sig {void}
  def set_created_at; end
end

module Mongoid::Timestamps::Created::Short
  extend(::ActiveSupport::Concern)
end

module Mongoid::Timestamps::Short
  extend(::ActiveSupport::Concern)
end

module Mongoid::Timestamps::Timeless
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Timestamps::Timeless::ClassMethods)

  def clear_timeless_option; end
  def timeless; end
  def timeless?; end

  class << self
    def [](*args, &block); end
    def []=(*args, &block); end
    def timeless_table; end
  end
end

module Mongoid::Timestamps::Timeless::ClassMethods
  def clear_timeless_option; end
  def clear_timeless_option_on_update; end
  def set_timeless_counter(counter); end
  def timeless; end
  def timeless?; end
end

module Mongoid::Timestamps::Updated
  extend(::ActiveSupport::Concern)

  include(::Mongoid::Timestamps::Timeless)

  def able_to_set_updated_at?; end
  def set_updated_at; end
end

module Mongoid::Timestamps::Updated::Short
  extend(::ActiveSupport::Concern)
end

module Mongoid::Touchable
  extend(::Mongoid::Touchable)

  def define_touchable!(association); end

  private

  def define_relation_touch_method(name, association); end
end

module Mongoid::Touchable::InstanceMethods
  def touch(field = T.unsafe(nil)); end
end

module Mongoid::Traversable
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Mongoid::Traversable::ClassMethods)

  def _children; end
  def _parent; end
  def _parent=(p); end
  def _reset_memoized_children!; end
  def _root; end
  def _root?; end
  def collect_children; end
  def flag_children_persisted; end
  def hereditary?; end
  def parentize(document); end
  def remove_child(child); end
  def reset_persisted_children; end
end

module Mongoid::Traversable::ClassMethods
  def hereditary?; end
  def inherited(subclass); end
end

module Mongoid::Traversable::DiscriminatorAssignment
  def discriminator_key=(value); end
  def discriminator_value=(value); end
end

module Mongoid::Traversable::DiscriminatorRetrieval
  def discriminator_value; end
end

Mongoid::VERSION = T.let(T.unsafe(nil), String)

module Mongoid::Validatable
  extend(::ActiveSupport::Concern)

  include(::Mongoid::Validatable::Macros)

  mixes_in_class_methods(::Mongoid::Validatable::ClassMethods)

  def begin_validate; end
  def exit_validate; end
  def performing_validations?(options = T.unsafe(nil)); end
  def read_attribute_for_validation(attr); end
  def valid?(context = T.unsafe(nil)); end
  def validated?; end
  def validating_with_query?; end
end

class Mongoid::Validatable::AssociatedValidator < ::ActiveModel::EachValidator
  def validate_each(document, attribute, value); end
end

module Mongoid::Validatable::ClassMethods
  def validates_relation(association); end
  # def validates_with(*args, &block); end
  def validating_with_query?; end
end

class Mongoid::Validatable::FormatValidator < ::ActiveModel::Validations::FormatValidator
  include(::Mongoid::Validatable::Localizable)
end

class Mongoid::Validatable::LengthValidator < ::ActiveModel::Validations::LengthValidator
  include(::Mongoid::Validatable::Localizable)
end

module Mongoid::Validatable::Localizable
  def validate_each(document, attribute, value); end
end

module Mongoid::Validatable::Macros
  extend(::ActiveSupport::Concern)

  # Validates whether or not an association is valid or not.
  # Will correctly handle `has_one` and `has_many` associations.
  sig {params(args: Symbol).void}
  def validates_associated(*args); end
  # Validates the format of a field.
  #
  # [Ruby on Rails documentation](https://api.rubyonrails.org/classes/ActiveModel/Validations/HelperMethods.html#method-i-validates_format_of)
  #
  # **Options:**
  # - `:message => String` Failure message.
  # - `:with => Regexp | () -> Regexp` Matching regexp.
  # - `:without => Regexp | () -> Regexp` Non-matching regexp.
  # - `:multiline => Boolean` Regexp multiline mode.
  #
  # **Examples**
  # ```
  # class Person
  #   include Mongoid::Document
  #   field :title
  #
  #   validates_format_of :title, with: /\A[a-z0-9 \-_]*\z/i
  # end
  # ```
  sig {params(args: T.any(Symbol, T::Hash[Symbol, T.untyped])).void}
  def validates_format_of(*args); end
  # Validates the length of a field.
  #
  # [Ruby on Rails documentation](https://api.rubyonrails.org/classes/ActiveModel/Validations/HelperMethods.html#method-i-validates_length_of)
  #
  # Except for `:minimum` and `:maximum` which can be paired,
  # there can be only one of these constraints active:
  # - `:minimum` The minimum size of the attribute.
  # - `:maximum` The maximum size of the attribute.
  # - `:is` The exact size of the attribute.
  # - `:within => Range` A range specifying the minimum
  #   and maximum size of the attribute.
  # - `:in => Range` Alias for `:within`.
  sig {params(args: T.any(Symbol, T::Hash[Symbol, T.untyped])).void}
  def validates_length_of(*args); end
  # Validates whether or not a field is present - meaning nil or empty.
  #
  # [Ruby on Rails documentation](https://api.rubyonrails.org/classes/ActiveModel/Validations/HelperMethods.html#method-i-validates_presence_of)
  #
  # **Options:**
  # - `:message => String` Failure message.
  sig {params(args: T.any(Symbol, T::Hash[Symbol, T.untyped])).void}
  def validates_presence_of(*args); end
  # Validates whether or not a field is unique
  # against the documents in the database.
  sig {params(args: Symbol).void}
  def validates_uniqueness_of(*args); end
end

class Mongoid::Validatable::PresenceValidator < ::ActiveModel::EachValidator
  sig { params(document: Mongoid::Document, attribute: Symbol, value: Object).returns(T.untyped) }
  def validate_each(document, attribute, value); end

  private

  sig { params(value: Object).returns(T::Boolean) }
  def not_present?(value); end
  sig { params(doc: Mongoid::Document, attr: Symbol, value: Object).returns(T::Boolean) }
  def relation_or_fk_missing?(doc, attr, value); end
end

module Mongoid::Validatable::Queryable
  def with_query(document); end
end

class Mongoid::Validatable::UniquenessValidator < ::ActiveModel::EachValidator
  include(::Mongoid::Validatable::Queryable)

  def validate_each(document, attribute, value); end

  private

  def add_error(document, attribute, value); end
  def case_sensitive?; end
  def create_criteria(base, document, attribute, value); end
  def criterion(document, attribute, value); end
  def filter(value); end
  def localized?(document, attribute); end
  def scope(criteria, document, _attribute); end
  def scope_value_changed?(document); end
  def skip_validation?(document); end
  def to_validate(document, attribute, value); end
  def validate_embedded(document, attribute, value); end
  def validate_root(document, attribute, value); end
  def validation_required?(document, attribute); end
end

module Rails
  extend(::ActiveSupport::Autoload)

  class << self
    def app_class; end
    def app_class=(_arg0); end
    def application; end
    def application=(_arg0); end
    def autoloaders; end
    def backtrace_cleaner; end
    def cache; end
    def cache=(_arg0); end
    def configuration; end
    def env; end
    def env=(environment); end
    def gem_version; end
    def groups(*groups); end
    def initialize!(*args, &block); end
    def initialized?(*args, &block); end
    def logger; end
    def logger=(_arg0); end
    def public_path; end
    def root; end
    def version; end
  end
end

module Rails::Mongoid
  extend(::Rails::Mongoid)

  def load_models(app); end
  def preload_models(app); end

  private

  def load_model(file); end
end

class Rails::Mongoid::Railtie < ::Rails::Railtie
  def handle_configuration_error(e); end

  class << self
    def rescue_responses; end
  end
end
