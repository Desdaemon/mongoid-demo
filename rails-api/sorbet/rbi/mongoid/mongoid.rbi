# typed: strong
# A class which sends values to the database as Strings but returns them to the user as Symbols.
module Mongoid
  extend Mongoid
  extend Forwardable
  extend Mongoid::Loggable
  PLATFORM_DETAILS = T.let("mongoid-#{VERSION}".freeze, T.untyped)
  MONGODB_VERSION = T.let("2.6.0", T.untyped)
  VERSION = T.let("7.2.0", T.untyped)
  sig { returns(Config) }
  def configure; end
  sig { returns(::Mongo::Client) }
  def default_client; end
  sig { returns(T::Boolean) }
  def disconnect_clients; end
  sig { params(name: T.untyped).returns(::Mongo::Client) }
  def client(name); end
  sig { returns(Logger) }
  def self.logger; end
  sig { params(logger: Logger).returns(Logger) }
  def self.logger=(logger); end
  sig { returns(Logger) }
  def self.default_logger; end
  sig { returns(Logger) }
  def self.rails_logger; end
  sig { returns(Config) }
  def self.configure; end
  sig { returns(::Mongo::Client) }
  def self.default_client; end
  sig { returns(T::Boolean) }
  def self.disconnect_clients; end
  sig { params(name: T.untyped).returns(::Mongo::Client) }
  def self.client(name); end
  module GlobalDiscriminatorKeyAssignment
    sig { params(value: T.untyped).returns(T.untyped) }
    def discriminator_key=(value); end
    class InvalidFieldHost
      include Mongoid::Document
      ILLEGAL_KEY = T.let(/(\A[$])|(\.)/.freeze, T.untyped)
      MODULES = T.let([
  Atomic,
  Attributes,
  Copyable,
  Changeable,
  Evolvable,
  Fields,
  Indexable,
  Inspectable,
  Interceptable,
  Matchable,
  Persistable,
  Association,
  Reloadable,
  Scopable,
  Serializable,
  Clients,
  Clients::Options,
  Shardable,
  Stateful,
  Cacheable,
  Threaded::Lifecycle,
  Traversable,
  Validatable,
  Equality,
  Association::Referenced::Syncable,
  Association::Macros,
  ActiveModel::Model,
  ActiveModel::Validations
], T.untyped)
      RESERVED_METHOD_NAMES = T.let([ :fields,
  :aliased_fields,
  :localized_fields,
  :index_specifications,
  :shard_key_fields,
  :nested_attributes,
  :readonly_attributes,
  :storage_options,
  :cascades,
  :cyclic,
  :cache_timestamp_format
], T.untyped)
      CALLBACKS = T.let([
  :after_build,
  :after_create,
  :after_destroy,
  :after_find,
  :after_initialize,
  :after_save,
  :after_touch,
  :after_update,
  :after_upsert,
  :after_validation,
  :around_create,
  :around_destroy,
  :around_save,
  :around_update,
  :around_upsert,
  :before_create,
  :before_destroy,
  :before_save,
  :before_update,
  :before_upsert,
  :before_validation
].freeze, T.untyped)
      MACRO_MAPPING = T.let({
    embeds_one: Association::Embedded::EmbedsOne,
    embeds_many: Association::Embedded::EmbedsMany,
    embedded_in: Association::Embedded::EmbeddedIn,
    has_one: Association::Referenced::HasOne,
    has_many: Association::Referenced::HasMany,
    has_and_belongs_to_many: Association::Referenced::HasAndBelongsToMany,
    belongs_to: Association::Referenced::BelongsTo,
}.freeze, T.untyped)
      STRATEGIES = T.let([
    :delete_all,
    :destroy,
    :nullify,
    :restrict_with_exception,
    :restrict_with_error
], T.untyped)
      LIST_OPERATIONS = T.let([ "$addToSet", "$push", "$pull", "$pullAll" ].freeze, T.untyped)
      StringifiedSymbol = T.let(Mongoid::StringifiedSymbol, T.untyped)
      TYPE_MAPPINGS = T.let({
  array: Array,
  big_decimal: BigDecimal,
  binary: BSON::Binary,
  boolean: Mongoid::Boolean,
  date: Date,
  date_time: DateTime,
  float: Float,
  hash: Hash,
  integer: Integer,
  object_id: BSON::ObjectId,
  range: Range,
  regexp: Regexp,
  set: Set,
  string: String,
  stringified_symbol: StringifiedSymbol,
  symbol: Symbol,
  time: Time
}.with_indifferent_access, T.untyped)
      IDS = T.let([ :_id, :id, '_id', 'id' ].freeze, T.untyped)
      CREATE_LOCK = T.let(Mutex.new, T.untyped)
      UPDATES = T.let([
  :atomic_array_pushes,
  :atomic_array_pulls,
  :atomic_array_add_to_sets,
  :atomic_pulls,
  :delayed_atomic_sets,
  :delayed_atomic_pulls,
  :delayed_atomic_unsets
], T.untyped)
      sig { returns(Document) }
      def freeze; end
      sig { returns(T::Boolean) }
      def frozen?; end
      sig { returns(Integer) }
      def hash; end
      sig { returns(T::Array[T.untyped]) }
      def identity; end
      sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).void }
      def initialize(attrs = nil); end
      sig { returns(String) }
      def model_name; end
      sig { returns(String) }
      def to_key; end
      sig { returns(T::Array[Document]) }
      def to_a; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def as_document; end
      sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Hash[T.untyped, T.untyped]) }
      def as_json(options = nil); end
      sig { params(klass: Class).returns(Document) }
      def becomes(klass); end
      sig { returns(Logger) }
      def logger; end
      sig { returns(String) }
      def model_key; end
      sig { returns(T.nilable(T.any())) }
      def to_ary; end
      sig { returns(T.untyped) }
      def as_attributes; end
      sig { params(field: T.nilable(Symbol)).returns(T::Boolean) }
      def touch(field = nil); end
      sig { params(other: Document).returns(Integer) }
      def <=>(other); end
      sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
      def ==(other); end
      sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
      def ===(other); end
      sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
      def eql?(other); end
      sig { returns(Document) }
      def clone; end
      sig { returns(T.untyped) }
      def clone_document; end
      sig { params(klass: T.untyped, attrs: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def process_localized_attributes(klass, attrs); end
      sig { params(kind: Symbol).returns(T::Boolean) }
      def callback_executable?(kind); end
      sig { params(kind: Symbol).returns(T::Boolean) }
      def in_callback_state?(kind); end
      sig { params(kinds: Symbol).returns(Object) }
      def run_after_callbacks(*kinds); end
      sig { params(kinds: Symbol).returns(Object) }
      def run_before_callbacks(*kinds); end
      sig { params(kind: Symbol, args: T::Array[T.untyped], block: T.untyped).returns(Document) }
      def run_callbacks(kind, *args, &block); end
      sig { returns(T::Boolean) }
      def before_callback_halted?; end
      sig { params(kind: Symbol, children: T.untyped).returns(T::Array[Document]) }
      def cascadable_children(kind, children = Set.new); end
      sig { params(kind: Symbol, child: Document, association: T.untyped).returns(T::Boolean) }
      def cascadable_child?(kind, child, association); end
      sig { params(kind: Symbol, child: Document).returns(Symbol) }
      def child_callback_type(kind, child); end
      sig { params(filter: Symbol).returns(T.untyped) }
      def halted_callback_hook(filter); end
      sig { params(place: Symbol, kind: Symbol).returns(Object) }
      def run_targeted_callbacks(place, kind); end
      sig { returns(T.untyped) }
      def begin_validate; end
      sig { returns(T.untyped) }
      def exit_validate; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def performing_validations?(options = {}); end
      sig { params(attr: Symbol).returns(Object) }
      def read_attribute_for_validation(attr); end
      sig { params(context: T.nilable(Symbol)).returns(T::Boolean) }
      def valid?(context = nil); end
      sig { returns(T::Boolean) }
      def validated?; end
      sig { returns(T::Boolean) }
      def validating_with_query?; end
      sig { returns(T.untyped) }
      def _parent; end
      sig { params(p: T.untyped).returns(T.untyped) }
      def _parent=(p); end
      sig { returns(T::Array[Document]) }
      def _children; end
      sig { returns(T::Array[Document]) }
      def collect_children; end
      sig { returns(T::Array[Document]) }
      def flag_children_persisted; end
      sig { returns(T::Boolean) }
      def hereditary?; end
      sig { params(document: Document).returns(Document) }
      def parentize(document); end
      sig { params(child: Document).returns(T.untyped) }
      def remove_child(child); end
      sig { returns(T::Array[Document]) }
      def reset_persisted_children; end
      sig { returns(T.nilable(T.any())) }
      def _reset_memoized_children!; end
      sig { returns(Document) }
      def _root; end
      sig { returns(T::Boolean) }
      def _root?; end
      sig { returns(Object) }
      def _assigning; end
      sig { returns(T::Boolean) }
      def _assigning?; end
      sig { returns(Object) }
      def _binding; end
      sig { returns(T::Boolean) }
      def _binding?; end
      sig { returns(Object) }
      def _building; end
      sig { returns(T::Boolean) }
      def _building?; end
      sig { returns(T::Boolean) }
      def _creating?; end
      sig { returns(Object) }
      def _loading; end
      sig { returns(T::Boolean) }
      def _loading?; end
      sig { returns(String) }
      def cache_key; end
      sig { returns(T::Boolean) }
      def new_record?; end
      sig { returns(T::Boolean) }
      def persisted?; end
      sig { returns(T::Boolean) }
      def flagged_for_destroy?; end
      sig { returns(T::Boolean) }
      def destroyed?; end
      sig { returns(T::Boolean) }
      def pushable?; end
      sig { returns(T::Boolean) }
      def readonly?; end
      sig { returns(T::Boolean) }
      def settable?; end
      sig { returns(T::Boolean) }
      def updateable?; end
      sig { returns(T.untyped) }
      def reset_readonly; end
      sig { returns(T::Array[String]) }
      def shard_key_fields; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def shard_key_selector; end
      sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Hash[T.untyped, T.untyped]) }
      def serializable_hash(options = nil); end
      sig { params(options: T.untyped).returns(T::Array[String]) }
      def field_names(options); end
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
      sig { params(inclusions: T.any(T::Hash[T.untyped, T.untyped], Symbol, T::Array[Symbol])).returns(T::Array[Symbol]) }
      def relation_names(inclusions); end
      sig { params(inclusions: T.any(T::Hash[T.untyped, T.untyped], Symbol, T::Array[Symbol]), options: T::Hash[T.untyped, T.untyped], name: Symbol).returns(T::Hash[T.untyped, T.untyped]) }
      def relation_options(inclusions, options, name); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_selector; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def embedded_atomic_selector; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def root_atomic_selector; end
      sig { returns(T::Boolean) }
      def apply_default_scoping; end
      sig { returns(Document) }
      def reload; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def _reload; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def reload_root_document; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def reload_embedded_document; end
      sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
      def extract_embedded_attributes(attributes); end
      sig { returns(T::Boolean) }
      def embedded?; end
      sig { returns(T::Boolean) }
      def embedded_many?; end
      sig { returns(T::Boolean) }
      def embedded_one?; end
      sig { returns(Symbol) }
      def association_name; end
      sig { returns(T::Boolean) }
      def referenced_many?; end
      sig { returns(T::Boolean) }
      def referenced_one?; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def reload_relations; end
      sig { params(name: T.any(String, Symbol)).returns(Association) }
      def reflect_on_association(name); end
      sig { params(macros: Symbol).returns(T::Array[Association]) }
      def reflect_on_all_association(*macros); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def associations; end
      sig { params(args: T::Array[T.untyped]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def parse_args(*args); end
      sig { returns(T.untyped) }
      def apply_delete_dependencies!; end
      sig { params(association: T.untyped).returns(T.untyped) }
      def _dependent_delete_all!(association); end
      sig { params(association: T.untyped).returns(T.untyped) }
      def _dependent_destroy!(association); end
      sig { params(association: T.untyped).returns(T.untyped) }
      def _dependent_nullify!(association); end
      sig { params(association: T.untyped).returns(T.untyped) }
      def _dependent_restrict_with_exception!(association); end
      sig { params(association: T.untyped).returns(T.untyped) }
      def _dependent_restrict_with_error!(association); end
      sig do
        params(
          name: T.any(String, Symbol),
          object: T.any(T::Hash[T.untyped, T.untyped], BSON::ObjectId),
          association: Association,
          selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
        ).returns(Proxy)
      end
      def __build__(name, object, association, selected_fields = nil); end
      sig { params(object: T.any(Document, T::Array[Document]), association: Association, selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Proxy) }
      def create_relation(object, association, selected_fields = nil); end
      sig { params(name: Symbol).returns(T.untyped) }
      def reset_relation_criteria(name); end
      sig { params(name: T.any(String, Symbol), relation: Proxy).returns(Proxy) }
      def set_relation(name, relation); end
      sig do
        params(
          name: Symbol,
          association: Association,
          object: Object,
          reload: T::Boolean
        ).returns(Proxy)
      end
      def get_relation(name, association, object, reload = false); end
      sig { params(assoc_key: String).returns(T.nilable(T::Hash[T.untyped, T.untyped])) }
      def _mongoid_filter_selected_fields(assoc_key); end
      sig { params(object: T.untyped, association: T.untyped).returns(T::Boolean) }
      def needs_no_database_query?(object, association); end
      sig { returns(T::Boolean) }
      def without_autobuild?; end
      sig { returns(Object) }
      def without_autobuild; end
      sig { params(association: Association).returns(T::Boolean) }
      def _syncable?(association); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def _synced; end
      sig { params(foreign_key: String).returns(T::Boolean) }
      def _synced?(foreign_key); end
      sig { params(association: Association).returns(Object) }
      def remove_inverse_keys(association); end
      sig { params(association: Association).returns(Object) }
      def update_inverse_keys(association); end
      sig { params(counters: T.any(Symbol, T::Array[T.untyped])).returns(T.untyped) }
      def reset_counters(*counters); end
      sig { returns(T::Boolean) }
      def autosaved?; end
      sig { returns(T.untyped) }
      def __autosaving__; end
      sig { params(doc: T.untyped).returns(T::Boolean) }
      def changed_for_autosave?(doc); end
      sig { params(join_context: T.nilable(T::Boolean)).returns(T::Boolean) }
      def atomically(join_context: nil); end
      sig { returns(T.untyped) }
      def fail_due_to_validation!; end
      sig { params(method: Symbol).returns(T.untyped) }
      def fail_due_to_callback!(method); end
      sig { returns(T::Boolean) }
      def executing_atomically?; end
      sig { params(result: Object, options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def post_process_persist(result, options = {}); end
      sig { returns(Object) }
      def prepare_atomic_operation; end
      sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
      def process_atomic_operations(operations); end
      sig { returns(T.untyped) }
      def _mongoid_remove_atomic_context_changes; end
      sig { returns(T.untyped) }
      def _mongoid_reset_atomic_context_changes!; end
      sig { returns(T.untyped) }
      def _mongoid_push_atomic_context; end
      sig { returns(T.untyped) }
      def _mongoid_pop_atomic_context; end
      sig { returns(T::Array[T.untyped]) }
      def _mongoid_atomic_context_changed_fields; end
      sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def persist_or_delay_atomic_operation(operation); end
      sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def persist_atomic_operations(operations); end
      sig { params(fields: T.any(String, Symbol)).returns(Document) }
      def unset(*fields); end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def upsert(options = {}); end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def prepare_upsert(options = {}); end
      sig { params(name: T.any(Symbol, String), value: Object).returns(T::Boolean) }
      def update_attribute(name, value); end
      sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def update(attributes = {}); end
      sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def update!(attributes = {}); end
      sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def init_atomic_updates; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def prepare_update(options = {}); end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def update_document(options = {}); end
      sig { params(setters: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def set(setters); end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def save(options = {}); end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def save!(options = {}); end
      sig { params(renames: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def rename(renames); end
      sig { params(adds: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def add_to_set(adds); end
      sig { params(pushes: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def push(pushes); end
      sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def pull(pulls); end
      sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def pull_all(pulls); end
      sig { params(selector: T::Hash[T.untyped, T.untyped], operations: T::Hash[T.untyped, T.untyped], processed: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
      def positionally(selector, operations, processed = {}); end
      sig { params(keys: T.untyped, operations: T.untyped, processed: T.untyped).returns(T.untyped) }
      def process_operations(keys, operations, processed); end
      sig { params(keys: T.untyped, update: T.untyped, updates: T.untyped).returns(T.untyped) }
      def process_updates(keys, update, updates = {}); end
      sig { params(keys: T.untyped, position: T.untyped).returns(T.untyped) }
      def replace_index(keys, position); end
      sig { params(pops: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def pop(pops); end
      sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def bit(operations); end
      sig { params(increments: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def inc(increments); end
      sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Boolean) }
      def destroy(options = nil); end
      sig { params(options: T.untyped).returns(T.untyped) }
      def destroy!(options = {}); end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(TrueClass) }
      def delete(options = {}); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_deletes; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def delete_as_embedded(options = {}); end
      sig { returns(T::Boolean) }
      def delete_as_root; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def notifying_parent?(options = {}); end
      sig { returns(Object) }
      def prepare_delete; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def insert(options = {}); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_inserts; end
      sig { returns(Document) }
      def insert_as_embedded; end
      sig { returns(Document) }
      def insert_as_root; end
      sig { returns(T::Boolean) }
      def post_process_insert; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def prepare_insert(options = {}); end
      sig { params(selector: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def _matches?(selector); end
      sig { returns(T::Array[String]) }
      def apply_pre_processed_defaults; end
      sig { returns(T::Array[String]) }
      def apply_post_processed_defaults; end
      sig { params(name: String).returns(T.untyped) }
      def apply_default(name); end
      sig { returns(T.untyped) }
      def apply_defaults; end
      sig { returns(T::Array[String]) }
      def attribute_names; end
      sig { params(name: T.any(String, Symbol)).returns(String) }
      def database_field_name(name); end
      sig { params(field: T.any(Standard, ForeignKey), value: Object).returns(T::Boolean) }
      def lazy_settable?(field, value); end
      sig { returns(T::Boolean) }
      def using_object_ids?; end
      sig { returns(Object) }
      def __evolve_object_id__; end
      sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
      def attribute_present?(name); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def attributes_before_type_cast; end
      sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
      def has_attribute?(name); end
      sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
      def has_attribute_before_type_cast?(name); end
      sig { params(name: T.any(String, Symbol)).returns(Object) }
      def read_attribute(name); end
      sig { params(name: T.any(String, Symbol)).returns(Object) }
      def read_attribute_before_type_cast(name); end
      sig { params(name: T.any(String, Symbol)).returns(T.untyped) }
      def remove_attribute(name); end
      sig { params(name: T.any(String, Symbol), value: Object).returns(T.untyped) }
      def write_attribute(name, value); end
      sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
      def assign_attributes(attrs = nil); end
      sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
      def write_attributes(attrs = nil); end
      sig { params(name: String).returns(T::Boolean) }
      def attribute_missing?(name); end
      sig { returns(Object) }
      def typed_attributes; end
      sig { params(name: T.untyped, selection: T.untyped, field: T.untyped).returns(T::Boolean) }
      def selection_excluded?(name, selection, field); end
      sig { params(name: T.untyped, selection: T.untyped, field: T.untyped).returns(T::Boolean) }
      def selection_included?(name, selection, field); end
      sig { params(string: T.untyped).returns(T::Boolean) }
      def hash_dot_syntax?(string); end
      sig { params(key: T.any(String, Symbol), value: Object).returns(Object) }
      def typed_value_for(key, value); end
      sig { params(name: T.untyped).returns(T.untyped) }
      def read_raw_attribute(name); end
      sig { params(field_name: T.any(String, Symbol), value: Object).returns(T.untyped) }
      def validate_attribute_value(field_name, value); end
      sig { params(name: T.untyped, value: T.untyped).returns(T.untyped) }
      def lookup_attribute_presence(name, value); end
      sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
      def attribute_writable?(name); end
      sig { params(name: T.untyped, value: T.untyped).returns(T.untyped) }
      def as_writable_attribute!(name, value = :nil); end
      sig { params(name: T.untyped).returns(T::Boolean) }
      def _loaded?(name); end
      sig { params(name: T.untyped).returns(T::Boolean) }
      def projected_field?(name); end
      sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
      def process_attributes(attrs = nil); end
      sig { params(key: Symbol, value: Object).returns(T::Boolean) }
      def pending_attribute?(key, value); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def pending_relations; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def pending_nested; end
      sig { params(name: Symbol, value: Object).returns(T.untyped) }
      def process_attribute(name, value); end
      sig { returns(T.untyped) }
      def process_nested; end
      sig { returns(T.untyped) }
      def process_pending; end
      sig { returns(T.untyped) }
      def process_relations; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Object) }
      def with_session(options = {}); end
      sig { returns(T.untyped) }
      def _session; end
      sig { params(options_or_context: T.any(T::Hash[T.untyped, T.untyped], Mongoid::PersistenceContext), block: T.untyped).returns(T.untyped) }
      def with(options_or_context, &block); end
      sig { params(parent: T.untyped).returns(T.untyped) }
      def collection(parent = nil); end
      sig { returns(T.untyped) }
      def collection_name; end
      sig { returns(T.untyped) }
      def mongo_client; end
      sig { returns(T.untyped) }
      def persistence_context; end
      sig { params(options_or_context: T.untyped).returns(T.untyped) }
      def set_persistence_context(options_or_context); end
      sig { params(original_cluster: T.untyped, context: T.untyped).returns(T.untyped) }
      def clear_persistence_context(original_cluster = nil, context = nil); end
      sig { returns(T::Array[String]) }
      def changed; end
      sig { returns(T::Boolean) }
      def changed?; end
      sig { returns(T::Boolean) }
      def children_changed?; end
      sig { returns(T::Hash[String, Object]) }
      def changed_attributes; end
      sig { returns(T::Hash[String, T::Array[T.any(Object, Object)]]) }
      def changes; end
      sig { returns(T.untyped) }
      def move_changes; end
      sig { returns(T.untyped) }
      def post_persist; end
      sig { returns(T::Hash[String, T::Array[T.any(Object, Object)]]) }
      def previous_changes; end
      sig { params(name: T.any(Symbol, String)).returns(T.untyped) }
      def remove_change(name); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def setters; end
      sig { params(attr: String).returns(T::Array[Object]) }
      def attribute_change(attr); end
      sig { params(attr: String).returns(T::Boolean) }
      def attribute_changed?(attr); end
      sig { params(attr: String).returns(T::Boolean) }
      def attribute_changed_from_default?(attr); end
      sig { params(attr: String).returns(T.untyped) }
      def attribute_was(attr); end
      sig { params(attr: String).returns(Object) }
      def attribute_will_change!(attr); end
      sig { params(attr: String).returns(Object) }
      def reset_attribute!(attr); end
      sig { params(attr: T.untyped).returns(T.untyped) }
      def reset_attribute_to_default!(attr); end
      sig { params(document: Document).returns(T.untyped) }
      def add_atomic_pull(document); end
      sig { params(document: Document).returns(T::Array[Document]) }
      def add_atomic_unset(document); end
      sig { params(name: T.untyped).returns(String) }
      def atomic_attribute_name(name); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_array_pushes; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_array_pulls; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_array_add_to_sets; end
      sig { params(_use_indexes: T.untyped).returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_updates(_use_indexes = false); end
      sig { returns(String) }
      def atomic_delete_modifier; end
      sig { returns(String) }
      def atomic_insert_modifier; end
      sig { returns(String) }
      def atomic_path; end
      sig { returns(String) }
      def atomic_position; end
      sig { returns(Object) }
      def atomic_paths; end
      sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def atomic_pulls; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_pushes; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_sets; end
      sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def atomic_unsets; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def delayed_atomic_sets; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def delayed_atomic_pulls; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def delayed_atomic_unsets; end
      sig { returns(String) }
      def flag_as_destroyed; end
      sig { returns(T::Array[Proc]) }
      def flagged_destroys; end
      sig { returns(T::Array[T.untyped]) }
      def process_flagged_destroys; end
      sig { params(mods: Modifiers, doc: Document).returns(T.untyped) }
      def generate_atomic_updates(mods, doc); end
      sig { params(field: T.nilable(Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
      def touch_atomic_updates(field = nil); end
    end
  end
  module Atomic
    extend ActiveSupport::Concern
    UPDATES = T.let([
  :atomic_array_pushes,
  :atomic_array_pulls,
  :atomic_array_add_to_sets,
  :atomic_pulls,
  :delayed_atomic_sets,
  :delayed_atomic_pulls,
  :delayed_atomic_unsets
], T.untyped)
    sig { params(document: Document).returns(T.untyped) }
    def add_atomic_pull(document); end
    sig { params(document: Document).returns(T::Array[Document]) }
    def add_atomic_unset(document); end
    sig { params(name: T.untyped).returns(String) }
    def atomic_attribute_name(name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_array_pushes; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_array_pulls; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_array_add_to_sets; end
    sig { params(_use_indexes: T.untyped).returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_updates(_use_indexes = false); end
    sig { returns(String) }
    def atomic_delete_modifier; end
    sig { returns(String) }
    def atomic_insert_modifier; end
    sig { returns(String) }
    def atomic_path; end
    sig { returns(String) }
    def atomic_position; end
    sig { returns(Object) }
    def atomic_paths; end
    sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def atomic_pulls; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_pushes; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_sets; end
    sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def atomic_unsets; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def delayed_atomic_sets; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def delayed_atomic_pulls; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def delayed_atomic_unsets; end
    sig { returns(String) }
    def flag_as_destroyed; end
    sig { returns(T::Array[Proc]) }
    def flagged_destroys; end
    sig { returns(T::Array[T.untyped]) }
    def process_flagged_destroys; end
    sig { params(mods: Modifiers, doc: Document).returns(T.untyped) }
    def generate_atomic_updates(mods, doc); end
    sig { params(field: T.nilable(Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def touch_atomic_updates(field = nil); end
    class Modifiers < Hash
      sig { params(modifications: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def add_to_set(modifications); end
      sig { params(modifications: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def pull_all(modifications); end
      sig { params(modifications: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def pull(modifications); end
      sig { params(modifications: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def push(modifications); end
      sig { params(modifications: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def set(modifications); end
      sig { params(modifications: T::Array[String]).returns(T.untyped) }
      def unset(modifications); end
      sig { params(mods: T::Hash[T.untyped, T.untyped], field: String, value: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def add_operation(mods, field, value); end
      sig { params(mods: T::Hash[T.untyped, T.untyped], field: String, value: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def add_each_operation(mods, field, value); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def add_to_sets; end
      sig { params(field: String).returns(T::Boolean) }
      def set_conflict?(field); end
      sig { params(field: String).returns(T::Boolean) }
      def push_conflict?(field); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def conflicting_pulls; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def conflicting_pushes; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def conflicting_sets; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def conflicts; end
      sig { returns(T::Array[String]) }
      def pull_fields; end
      sig { returns(T::Array[String]) }
      def push_fields; end
      sig { returns(T::Array[String]) }
      def set_fields; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def pull_alls; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def pulls; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def pushes; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def sets; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def unsets; end
    end
    module Paths
      class Root
        sig { params(document: Document).void }
        def initialize(document); end
        sig { returns(T.untyped) }
        def insert_modifier; end
        sig { returns(T.untyped) }
        attr_reader :document
        sig { returns(T.untyped) }
        attr_reader :path
        sig { returns(T.untyped) }
        attr_reader :position
      end
      module Embedded
        sig { returns(String) }
        def path; end
        sig { returns(T.untyped) }
        attr_reader :delete_modifier
        sig { returns(T.untyped) }
        attr_reader :document
        sig { returns(T.untyped) }
        attr_reader :insert_modifier
        sig { returns(T.untyped) }
        attr_reader :parent
        class One
          include Mongoid::Atomic::Paths::Embedded
          sig { params(document: Document).void }
          def initialize(document); end
          sig { returns(String) }
          def position; end
          sig { returns(String) }
          def path; end
        end
        class Many
          include Mongoid::Atomic::Paths::Embedded
          sig { params(document: Document).void }
          def initialize(document); end
          sig { returns(String) }
          def position; end
          sig { returns(String) }
          def path; end
        end
      end
    end
  end
  module Config
    extend Mongoid::Config
    extend Forwardable
    extend Mongoid::Config::Options
    LOCK = T.let(Mutex.new, T.untyped)
    sig { returns(T::Boolean) }
    def configured?; end
    sig { params(name: String, options: T.untyped).returns(T.untyped) }
    def connect_to(name, options = { read: { mode: :primary }}); end
    sig { returns(T::Array[String]) }
    def destructive_fields; end
    sig { params(path: String, environment: T.nilable(T.any(String, Symbol))).returns(T.untyped) }
    def load!(path, environment = nil); end
    sig { returns(T::Array[Class]) }
    def models; end
    sig { params(klass: Class).returns(T.untyped) }
    def register_model(klass); end
    sig { params(settings: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def load_configuration(settings); end
    sig { params(name: T.any(String, Symbol)).returns(T.any(String, Symbol)) }
    def override_database(name); end
    sig { params(name: T.any(String, Symbol)).returns(T.any(String, Symbol)) }
    def override_client(name); end
    sig { returns(T::Boolean) }
    def purge!; end
    sig { returns(T::Boolean) }
    def truncate!; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def options=(options); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def clients; end
    sig { returns(String) }
    def time_zone; end
    sig { returns(T::Boolean) }
    def running_with_passenger?; end
    sig { returns(T.untyped) }
    def set_log_levels; end
    sig { params(clients: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def clients=(clients); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def self.defaults; end
    sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def self.option(name, options = {}); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def self.reset; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def self.settings; end
    sig { returns(Integer) }
    def self.log_level; end
    sig { returns(T::Boolean) }
    def self.configured?; end
    sig { params(name: String, options: T.untyped).returns(T.untyped) }
    def self.connect_to(name, options = { read: { mode: :primary }}); end
    sig { returns(T::Array[String]) }
    def self.destructive_fields; end
    sig { params(path: String, environment: T.nilable(T.any(String, Symbol))).returns(T.untyped) }
    def self.load!(path, environment = nil); end
    sig { returns(T::Array[Class]) }
    def self.models; end
    sig { params(klass: Class).returns(T.untyped) }
    def self.register_model(klass); end
    sig { params(settings: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def self.load_configuration(settings); end
    sig { params(name: T.any(String, Symbol)).returns(T.any(String, Symbol)) }
    def self.override_database(name); end
    sig { params(name: T.any(String, Symbol)).returns(T.any(String, Symbol)) }
    def self.override_client(name); end
    sig { returns(T::Boolean) }
    def self.purge!; end
    sig { returns(T::Boolean) }
    def self.truncate!; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def self.options=(options); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def self.clients; end
    sig { returns(String) }
    def self.time_zone; end
    sig { returns(T::Boolean) }
    def self.running_with_passenger?; end
    sig { returns(T.untyped) }
    def self.set_log_levels; end
    sig { params(clients: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def self.clients=(clients); end
    module Options
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def defaults; end
      sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def option(name, options = {}); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def reset; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def settings; end
      sig { returns(Integer) }
      def log_level; end
    end
    module Environment
      extend Mongoid::Config::Environment
      sig { returns(String) }
      def env_name; end
      sig { params(path: String, environment: T.nilable(T.any(String, Symbol))).returns(T::Hash[T.untyped, T.untyped]) }
      def load_yaml(path, environment = nil); end
      sig { returns(String) }
      def self.env_name; end
      sig { params(path: String, environment: T.nilable(T.any(String, Symbol))).returns(T::Hash[T.untyped, T.untyped]) }
      def self.load_yaml(path, environment = nil); end
    end
    module Validators
      module Client
        extend Mongoid::Config::Validators::Client
        STANDARD = T.let([ :database, :hosts, :username, :password ].freeze, T.untyped)
        sig { params(clients: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate(clients); end
        sig { params(name: T.any(String, Symbol), config: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate_client_database(name, config); end
        sig { params(name: T.any(String, Symbol), config: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate_client_hosts(name, config); end
        sig { params(name: T.any(String, Symbol), config: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate_client_uri(name, config); end
        sig { params(config: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def no_database_or_uri?(config); end
        sig { params(config: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def no_hosts_or_uri?(config); end
        sig { params(config: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def both_uri_and_standard?(config); end
        sig { params(clients: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate(clients); end
        sig { params(name: T.any(String, Symbol), config: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate_client_database(name, config); end
        sig { params(name: T.any(String, Symbol), config: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate_client_hosts(name, config); end
        sig { params(name: T.any(String, Symbol), config: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate_client_uri(name, config); end
        sig { params(config: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def self.no_database_or_uri?(config); end
        sig { params(config: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def self.no_hosts_or_uri?(config); end
        sig { params(config: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def self.both_uri_and_standard?(config); end
      end
      module Option
        extend Mongoid::Config::Validators::Option
        sig { params(option: String).returns(T.untyped) }
        def validate(option); end
        sig { params(option: String).returns(T.untyped) }
        def self.validate(option); end
      end
    end
  end
  module Fields
    extend ActiveSupport::Concern
    StringifiedSymbol = T.let(Mongoid::StringifiedSymbol, T.untyped)
    TYPE_MAPPINGS = T.let({
  array: Array,
  big_decimal: BigDecimal,
  binary: BSON::Binary,
  boolean: Mongoid::Boolean,
  date: Date,
  date_time: DateTime,
  float: Float,
  hash: Hash,
  integer: Integer,
  object_id: BSON::ObjectId,
  range: Range,
  regexp: Regexp,
  set: Set,
  string: String,
  stringified_symbol: StringifiedSymbol,
  symbol: Symbol,
  time: Time
}.with_indifferent_access, T.untyped)
    IDS = T.let([ :_id, :id, '_id', 'id' ].freeze, T.untyped)
    sig { returns(T::Array[String]) }
    def apply_pre_processed_defaults; end
    sig { returns(T::Array[String]) }
    def apply_post_processed_defaults; end
    sig { params(name: String).returns(T.untyped) }
    def apply_default(name); end
    sig { returns(T.untyped) }
    def apply_defaults; end
    sig { returns(T::Array[String]) }
    def attribute_names; end
    sig { params(name: T.any(String, Symbol)).returns(String) }
    def database_field_name(name); end
    sig { params(field: T.any(Standard, ForeignKey), value: Object).returns(T::Boolean) }
    def lazy_settable?(field, value); end
    sig { returns(T::Boolean) }
    def using_object_ids?; end
    sig { params(option_name: Symbol, block: T.untyped).returns(T.untyped) }
    def self.option(option_name, &block); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def self.options; end
    module ClassMethods
      sig { returns(T::Array[String]) }
      def attribute_names; end
      sig { params(name: T.any(String, Symbol)).returns(String) }
      def database_field_name(name); end
      sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.any(Standard, ForeignKey)) }
      def field(name, options = {}); end
      sig { params(name: String, type: Class).returns(Serializable) }
      def replace_field(name, type); end
      sig { returns(T::Boolean) }
      def using_object_ids?; end
      sig { params(field: T.any(Standard, ForeignKey)).returns(T.untyped) }
      def add_defaults(field); end
      sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def add_field(name, options = {}); end
      sig { params(field: T.any(Standard, ForeignKey)).returns(T.untyped) }
      def process_options(field); end
      sig { params(name: Symbol, meth: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def create_accessors(name, meth, options = {}); end
      sig { params(name: String, meth: String, field: T.any(Standard, ForeignKey)).returns(T.untyped) }
      def create_field_getter(name, meth, field); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_field_getter_before_type_cast(name, meth); end
      sig { params(name: String, meth: String, field: T.any(Standard, ForeignKey)).returns(T.untyped) }
      def create_field_setter(name, meth, field); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_field_check(name, meth); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_translations_getter(name, meth); end
      sig { params(name: String, meth: String, field: T.any(Standard, ForeignKey)).returns(T.untyped) }
      def create_translations_setter(name, meth, field); end
      sig { returns(Module) }
      def generated_methods; end
      sig { params(name: String).returns(T.untyped) }
      def remove_defaults(name); end
      sig { params(name: T.untyped, options: T.untyped).returns(T.untyped) }
      def field_for(name, options); end
      sig { params(options: T.untyped).returns(T.untyped) }
      def unmapped_type(options); end
    end
    class Standard
      extend Forwardable
      sig do
        params(
          document: Document,
          name: String,
          key: String,
          mods: T::Hash[T.untyped, T.untyped],
          new: T::Array[T.untyped],
          old: T::Array[T.untyped]
        ).returns(T.untyped)
      end
      def add_atomic_changes(document, name, key, mods, new, old); end
      sig { params(doc: Document).returns(Object) }
      def eval_default(doc); end
      sig { returns(T::Boolean) }
      def foreign_key?; end
      sig { params(name: T.untyped, options: T::Hash[T.untyped, T.untyped]).void }
      def initialize(name, options = {}); end
      sig { returns(T::Boolean) }
      def lazy?; end
      sig { returns(T::Boolean) }
      def localized?; end
      sig { returns(Association) }
      def association; end
      sig { returns(T::Boolean) }
      def object_id_field?; end
      sig { returns(T::Boolean) }
      def pre_processed?; end
      sig { returns(Class) }
      def type; end
      sig { returns(String) }
      def default_name; end
      sig { params(object: T.any(Class, Module)).returns(T.untyped) }
      def define_default_method(object); end
      sig { params(fields: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def included?(fields); end
      sig { params(doc: Document).returns(Object) }
      def evaluated_default(doc); end
      sig { params(doc: Document).returns(Object) }
      def evaluate_default_proc(doc); end
      sig { params(object: Object).returns(Object) }
      def serialize_default(object); end
      sig { returns(T.untyped) }
      attr_accessor :default_val
      sig { returns(T.untyped) }
      attr_accessor :label
      sig { returns(T.untyped) }
      attr_accessor :name
      sig { returns(T.untyped) }
      attr_accessor :options
    end
    class Localized < Mongoid::Fields::Standard
      sig { params(object: T::Hash[T.untyped, T.untyped]).returns(Object) }
      def demongoize(object); end
      sig { returns(T::Boolean) }
      def localized?; end
      sig { params(object: String).returns(T::Hash[T.untyped, T.untyped]) }
      def mongoize(object); end
      sig { returns(T::Boolean) }
      def fallbacks?; end
      sig { params(object: T::Hash[T.untyped, T.untyped]).returns(Object) }
      def lookup(object); end
    end
    class ForeignKey < Mongoid::Fields::Standard
      sig do
        params(
          document: Document,
          name: String,
          key: String,
          mods: T::Hash[T.untyped, T.untyped],
          new_elements: T::Array[T.untyped],
          old_elements: T::Array[T.untyped]
        ).returns(T.untyped)
      end
      def add_atomic_changes(document, name, key, mods, new_elements, old_elements); end
      sig { returns(T::Boolean) }
      def foreign_key?; end
      sig { params(object: Object).returns(Object) }
      def evolve(object); end
      sig { returns(T::Boolean) }
      def lazy?; end
      sig { params(object: Object).returns(Object) }
      def mongoize(object); end
      sig { returns(T::Boolean) }
      def object_id_field?; end
      sig { returns(T::Boolean) }
      def resizable?; end
      sig { params(doc: Document).returns(Object) }
      def evaluate_default_proc(doc); end
      sig { returns(Fields::Standard) }
      def related_id_field; end
      sig { params(object: Object).returns(Object) }
      def serialize_default(object); end
    end
    module Validators
      module Macro
        extend Mongoid::Fields::Validators::Macro
        FIELD_TYPE_IS_SYMBOL = T.let('The BSON symbol type is deprecated; use String instead'.freeze, T.untyped)
        OPTIONS = T.let([
  :as,
  :default,
  :identity,
  :label,
  :localize,
  :fallbacks,
  :association,
  :pre_processed,
  :subtype,
  :type,
  :overwrite
], T.untyped)
        sig { params(klass: Class, name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate(klass, name, options); end
        sig { params(klass: Class, name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate_relation(klass, name, options = {}); end
        sig { params(klass: Class, name: Symbol).returns(T.untyped) }
        def validate_field_name(klass, name); end
        sig { params(klass: Class, name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate_name_uniqueness(klass, name, options); end
        sig { params(klass: Class, name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate_options(klass, name, options); end
        sig { params(klass: Class, name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate(klass, name, options); end
        sig { params(klass: Class, name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate_relation(klass, name, options = {}); end
        sig { params(klass: Class, name: Symbol).returns(T.untyped) }
        def self.validate_field_name(klass, name); end
        sig { params(klass: Class, name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate_name_uniqueness(klass, name, options); end
        sig { params(klass: Class, name: Symbol, options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate_options(klass, name, options); end
      end
    end
  end
  module Clients
    include Mongoid::Clients::StorageOptions
    include Mongoid::Clients::Options
    include Mongoid::Clients::Sessions
    extend ActiveSupport::Concern
    CREATE_LOCK = T.let(Mutex.new, T.untyped)
    sig { returns(T::Array[T.untyped]) }
    def self.clear; end
    sig { returns(::Mongo::Client) }
    def self.default; end
    sig { returns(T::Boolean) }
    def self.disconnect; end
    sig { params(name: Symbol).returns(::Mongo::Client) }
    def self.with_name(name); end
    sig { params(name: T.untyped, client: T.untyped).returns(T.untyped) }
    def self.set(name, client); end
    sig { returns(T.untyped) }
    def self.clients; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Object) }
    def with_session(options = {}); end
    sig { returns(T.untyped) }
    def _session; end
    sig { params(options_or_context: T.any(T::Hash[T.untyped, T.untyped], Mongoid::PersistenceContext), block: T.untyped).returns(T.untyped) }
    def with(options_or_context, &block); end
    sig { params(parent: T.untyped).returns(T.untyped) }
    def collection(parent = nil); end
    sig { returns(T.untyped) }
    def collection_name; end
    sig { returns(T.untyped) }
    def mongo_client; end
    sig { returns(T.untyped) }
    def persistence_context; end
    sig { params(options_or_context: T.untyped).returns(T.untyped) }
    def set_persistence_context(options_or_context); end
    sig { params(original_cluster: T.untyped, context: T.untyped).returns(T.untyped) }
    def clear_persistence_context(original_cluster = nil, context = nil); end
    module Factory
      extend Mongoid::Clients::Factory
      MONGOID_WRAPPING_LIBRARY = T.let({
  name: 'Mongoid',
  version: VERSION,
}.freeze, T.untyped)
      sig { params(name: T.nilable(T.any(String, Symbol))).returns(::Mongo::Client) }
      def create(name = nil); end
      sig { returns(::Mongo::Client) }
      def default; end
      sig { params(configuration: T::Hash[T.untyped, T.untyped]).returns(::Mongo::Client) }
      def create_client(configuration); end
      sig { returns(T.untyped) }
      def driver_version; end
      sig { params(configuration: T.untyped).returns(T.untyped) }
      def options(configuration); end
      sig { params(name: T.nilable(T.any(String, Symbol))).returns(::Mongo::Client) }
      def self.create(name = nil); end
      sig { returns(::Mongo::Client) }
      def self.default; end
      sig { params(configuration: T::Hash[T.untyped, T.untyped]).returns(::Mongo::Client) }
      def self.create_client(configuration); end
      sig { returns(T.untyped) }
      def self.driver_version; end
      sig { params(configuration: T.untyped).returns(T.untyped) }
      def self.options(configuration); end
    end
    module Options
      extend ActiveSupport::Concern
      sig { params(options_or_context: T.any(T::Hash[T.untyped, T.untyped], Mongoid::PersistenceContext), block: T.untyped).returns(T.untyped) }
      def with(options_or_context, &block); end
      sig { params(parent: T.untyped).returns(T.untyped) }
      def collection(parent = nil); end
      sig { returns(T.untyped) }
      def collection_name; end
      sig { returns(T.untyped) }
      def mongo_client; end
      sig { returns(T.untyped) }
      def persistence_context; end
      sig { params(options_or_context: T.untyped).returns(T.untyped) }
      def set_persistence_context(options_or_context); end
      sig { params(original_cluster: T.untyped, context: T.untyped).returns(T.untyped) }
      def clear_persistence_context(original_cluster = nil, context = nil); end
      module ClassMethods
        sig { returns(T.untyped) }
        def client_name; end
        sig { returns(T.untyped) }
        def collection_name; end
        sig { returns(T.untyped) }
        def database_name; end
        sig { returns(T.untyped) }
        def collection; end
        sig { returns(T.untyped) }
        def mongo_client; end
        sig { params(options: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(T.untyped) }
        def with(options, &block); end
        sig { returns(T.untyped) }
        def persistence_context; end
      end
    end
    module Sessions
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Object) }
      def with_session(options = {}); end
      sig { returns(T.untyped) }
      def _session; end
      module ClassMethods
        sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Object) }
        def with_session(options = {}); end
        sig { returns(T.untyped) }
        def _session; end
      end
    end
    module StorageOptions
      extend ActiveSupport::Concern
      module ClassMethods
        sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Class) }
        def store_in(options); end
        sig { returns(T.untyped) }
        def reset_storage_options!; end
        sig { returns(T::Hash[T.untyped, T.untyped]) }
        def storage_options_defaults; end
      end
    end
    module Validators
      module Storage
        extend Mongoid::Clients::Validators::Storage
        VALID_OPTIONS = T.let([ :collection, :database, :client ].freeze, T.untyped)
        sig { params(klass: Class, options: T.any(T::Hash[T.untyped, T.untyped], String, Symbol)).returns(T.untyped) }
        def validate(klass, options); end
        sig { params(klass: Class).returns(T::Boolean) }
        def valid_parent?(klass); end
        sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def valid_keys?(options); end
        sig { params(klass: Class, options: T.any(T::Hash[T.untyped, T.untyped], String, Symbol)).returns(T.untyped) }
        def self.validate(klass, options); end
        sig { params(klass: Class).returns(T::Boolean) }
        def self.valid_parent?(klass); end
        sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def self.valid_keys?(options); end
      end
    end
  end
  module Factory
    extend Mongoid::Factory
    TYPE = T.let("_type".freeze, T.untyped)
    sig { params(klass: Class, attributes: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Document) }
    def build(klass, attributes = nil); end
    sig do
      params(
        klass: Class,
        attributes: T.nilable(T::Hash[T.untyped, T.untyped]),
        criteria: T.nilable(Criteria),
        selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
      ).returns(Document)
    end
    def from_db(klass, attributes = nil, criteria = nil, selected_fields = nil); end
    sig { params(klass: Class, attributes: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Document) }
    def self.build(klass, attributes = nil); end
    sig do
      params(
        klass: Class,
        attributes: T.nilable(T::Hash[T.untyped, T.untyped]),
        criteria: T.nilable(Criteria),
        selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
      ).returns(Document)
    end
    def self.from_db(klass, attributes = nil, criteria = nil, selected_fields = nil); end
  end
  module Matcher
    sig { returns(T.untyped) }
    def as_attributes; end
    sig { returns(T.untyped) }
    def self.as_attributes; end
    module Eq
    end
    module Gt
      sig { returns(T.untyped) }
      def >; end
      sig { returns(T.untyped) }
      def self.>; end
    end
    module In
    end
    module Lt
      sig { returns(T.untyped) }
      def <; end
      sig { returns(T.untyped) }
      def self.<; end
    end
    module Ne
    end
    module Or
    end
    module All
    end
    module And
    end
    module Gte
      sig { returns(T.untyped) }
      def >=; end
      sig { returns(T.untyped) }
      def self.>=; end
    end
    module Lte
      sig { returns(T.untyped) }
      def <=; end
      sig { returns(T.untyped) }
      def self.<=; end
    end
    module Nin
    end
    module Nor
    end
    module Not
    end
    module Size
    end
    module Regex
    end
    module Exists
    end
    module EqImpl
    end
    module ElemMatch
    end
    module Expression
    end
    module FieldOperator
      MAP = T.let({
  '$all' => All,
  '$elemMatch' => ElemMatch,
  '$eq' => Eq,
  '$exists' => Exists,
  '$gt' => Gt,
  '$gte' => Gte,
  '$in' => In,
  '$lt' => Lt,
  '$lte' => Lte,
  '$nin' => Nin,
  '$ne' => Ne,
  '$not' => Not,
  '$regex' => Regex,
  '$size' => Size,
}.freeze, T.untyped)
    end
    module FieldExpression
    end
    module EqImplWithRegexp
    end
    module ExpressionOperator
      MAP = T.let({
  '$and' => And,
  '$nor' => Nor,
  '$or' => Or,
}.freeze, T.untyped)
    end
    module ElemMatchExpression
    end
  end
  module Copyable
    extend ActiveSupport::Concern
    sig { returns(Document) }
    def clone; end
    sig { returns(T.untyped) }
    def clone_document; end
    sig { params(klass: T.untyped, attrs: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def process_localized_attributes(klass, attrs); end
  end
  class Criteria
    include Enumerable
    include Mongoid::Contextual
    include Mongoid::Criteria::Queryable
    include Mongoid::Criteria::Findable
    include Inspectable
    include Mongoid::Criteria::Includable
    include Mongoid::Criteria::Marshalable
    include Mongoid::Criteria::Modifiable
    include Mongoid::Criteria::Scopable
    include Mongoid::Clients::Options
    include Mongoid::Clients::Sessions
    include Mongoid::Criteria::Options
    CHECK = T.let([], T.untyped)
    sig { params(args: T.untyped).returns(T.untyped) }
    def _enumerable_find(*args); end
    sig { params(args: T.untyped).returns(T.untyped) }
    def _findable_find(*args); end
    sig { params(other: Object).returns(T::Boolean) }
    def ==(other); end
    sig { params(args: T.untyped, block: T.untyped).returns(T.nilable(T.any(Document, T::Array[Document]))) }
    def find(*args, &block); end
    sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(String) }
    def as_json(options = nil); end
    sig { returns(Criteria) }
    def cache; end
    sig { returns(T::Boolean) }
    def cached?; end
    sig { returns(T::Array[Document]) }
    def documents; end
    sig { params(docs: T::Array[Document]).returns(T::Array[Document]) }
    def documents=(docs); end
    sig { returns(T::Boolean) }
    def embedded?; end
    sig { returns(Object) }
    def extract_id; end
    sig { params(extras: T::Hash[T.untyped, T.untyped]).returns(Criteria) }
    def extras(extras); end
    sig { returns(T::Array[String]) }
    def field_list; end
    sig { returns(Criteria) }
    def freeze; end
    sig { params(klass: Class).void }
    def initialize(klass); end
    sig { params(other: Criteria).returns(Criteria) }
    def merge(other); end
    sig { params(other: Criteria).returns(Criteria) }
    def merge!(other); end
    sig { returns(Criteria) }
    def none; end
    sig { returns(T::Boolean) }
    def empty_and_chainable?; end
    sig { params(args: Symbol).returns(Criteria) }
    def only(*args); end
    sig { params(value: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
    def read(value = nil); end
    sig { params(args: Symbol).returns(Criteria) }
    def without(*args); end
    sig { params(name: Symbol, include_private: T::Boolean).returns(T::Boolean) }
    def respond_to?(name, include_private = false); end
    sig { returns(Criteria) }
    def to_criteria; end
    sig { returns(Proc) }
    def to_proc; end
    sig { params(types: T::Array[String]).returns(Criteria) }
    def type(types); end
    sig { params(args: T.any(String, T::Hash[T.untyped, T.untyped])).returns(Criteria) }
    def where(*args); end
    sig { returns(Criteria) }
    def without_options; end
    sig { params(javascript: String, scope: T::Hash[T.untyped, T.untyped]).returns(Criteria) }
    def for_js(javascript, scope = {}); end
    sig { params(result: T::Array[Document], ids: T::Array[Object]).returns(T.untyped) }
    def check_for_missing_documents!(result, ids); end
    sig { params(other: Criteria).returns(T.nilable(T.any())) }
    def initialize_copy(other); end
    sig { params(name: Symbol, args: T.untyped, block: T.untyped).returns(Object) }
    def method_missing(name, *args, &block); end
    sig { returns(T::Boolean) }
    def merge_type_selection; end
    sig { returns(T::Boolean) }
    def type_selectable?; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def type_selection; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def selector_with_type_selection; end
    sig { returns(T.untyped) }
    def persistence_context; end
    sig { params(options: T.untyped).returns(T.untyped) }
    def set_persistence_context(options); end
    sig { params(original_cluster: T.untyped, original_context: T.untyped).returns(T.untyped) }
    def clear_persistence_context(original_cluster, original_context); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Object) }
    def with_session(options = {}); end
    sig { returns(T.untyped) }
    def _session; end
    sig { params(options_or_context: T.any(T::Hash[T.untyped, T.untyped], Mongoid::PersistenceContext), block: T.untyped).returns(T.untyped) }
    def with(options_or_context, &block); end
    sig { params(parent: T.untyped).returns(::Mongo::Collection) }
    def collection(parent = nil); end
    sig { returns(T.untyped) }
    def collection_name; end
    sig { returns(::Mongo::Client) }
    def mongo_client; end
    sig { returns(Criteria) }
    def apply_default_scope; end
    sig { params(other: Criteria).returns(Criteria) }
    def remove_scoping(other); end
    sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
    def scoped(options = nil); end
    sig { returns(T::Boolean) }
    def scoped?; end
    sig { returns(Criteria) }
    def unscoped; end
    sig { returns(T::Boolean) }
    def unscoped?; end
    sig { returns(T::Array[T.untyped]) }
    def scoping_options; end
    sig { params(options: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
    def scoping_options=(options); end
    sig { returns(Criteria) }
    def with_default_scope; end
    sig { params(other: T.untyped, methods: T.untyped).returns(T.untyped) }
    def reject_matching(other, *methods); end
    sig { params(attrs: T.untyped, block: T.untyped).returns(Document) }
    def build(attrs = {}, &block); end
    sig { params(attrs: T.untyped, block: T.untyped).returns(Document) }
    def create(attrs = {}, &block); end
    sig { params(attrs: T.untyped, block: T.untyped).returns(Document) }
    def create!(attrs = {}, &block); end
    sig { params(attrs: T.untyped).returns(Mongoid::Criteria) }
    def create_with(attrs = {}); end
    sig { params(attrs: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Document) }
    def find_or_create_by(attrs = {}, &block); end
    sig { params(attrs: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Document) }
    def find_or_create_by!(attrs = {}, &block); end
    sig { params(attrs: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Document) }
    def find_or_initialize_by(attrs = {}, &block); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped]), block: T.untyped).returns(Document) }
    def first_or_create(attrs = nil, &block); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped]), block: T.untyped).returns(Document) }
    def first_or_create!(attrs = nil, &block); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped]), block: T.untyped).returns(Document) }
    def first_or_initialize(attrs = nil, &block); end
    sig { params(method: Symbol, attrs: T.nilable(T::Hash[T.untyped, T.untyped]), block: T.untyped).returns(Document) }
    def create_document(method, attrs = nil, &block); end
    sig { params(method: Symbol, attrs: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Document) }
    def find_or(method, attrs = {}, &block); end
    sig { params(method: Symbol, attrs: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Document) }
    def first_or(method, attrs = {}, &block); end
    sig { params(hash: T.untyped, key: T.untyped).returns(T::Boolean) }
    def invalid_key?(hash, key); end
    sig { params(value: T.untyped).returns(T::Boolean) }
    def invalid_embedded_doc?(value); end
    sig { returns(T::Array[Object]) }
    def marshal_dump; end
    sig { params(data: T::Array[T.untyped]).returns(T.untyped) }
    def marshal_load(data); end
    sig { params(name: T.untyped).returns(T.untyped) }
    def dump_hash(name); end
    sig { params(hash_class: T.untyped, raw: T.untyped).returns(T.untyped) }
    def load_hash(hash_class, raw); end
    sig { params(relations: T.any(Symbol, T::Hash[T.untyped, T.untyped])).returns(Criteria) }
    def includes(*relations); end
    sig { returns(T::Array[Association]) }
    def inclusions; end
    sig { params(value: T::Array[Association]).returns(T::Array[Association]) }
    def inclusions=(value); end
    sig { params(_klass: T.any(Class, String, Symbol), association: Symbol).returns(T.untyped) }
    def add_inclusion(_klass, association); end
    sig { params(_parent_class: T.untyped, relations_list: T.untyped).returns(T.untyped) }
    def extract_includes_list(_parent_class, *relations_list); end
    sig { params(ids: Object, multi: T::Boolean).returns(T.any(Document, T::Array[Document])) }
    def execute_or_raise(ids, multi); end
    sig { params(ids: T::Array[T.untyped]).returns(Criteria) }
    def for_ids(ids); end
    sig { params(ids: T::Array[Object]).returns(T::Array[Document]) }
    def multiple_from_db(ids); end
    sig { returns(Symbol) }
    def id_finder; end
    sig { params(ids: T::Array[Object]).returns(T::Array[Document]) }
    def from_database(ids); end
    sig { params(ids: T.untyped).returns(T.untyped) }
    def from_database_selector(ids); end
    sig { params(ids: T::Array[Object]).returns(T::Array[Object]) }
    def mongoize_ids(ids); end
    sig { returns(T.untyped) }
    def raise_invalid; end
    sig { params(fields: Symbol).returns(Criteria) }
    def ascending(*fields); end
    sig { params(value: T.nilable(Integer)).returns(Criteria) }
    def batch_size(value = nil); end
    sig { params(fields: Symbol).returns(Criteria) }
    def descending(*fields); end
    sig { params(value: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
    def hint(value = nil); end
    sig { params(value: T.nilable(Integer)).returns(Criteria) }
    def limit(value = nil); end
    sig { params(value: T.nilable(Integer)).returns(Criteria) }
    def max_scan(value = nil); end
    sig { params(value: T.nilable(Integer)).returns(Criteria) }
    def max_time_ms(value = nil); end
    sig { returns(Criteria) }
    def no_timeout; end
    sig { params(spec: T.any(T::Array[T.untyped], T::Hash[T.untyped, T.untyped], String)).returns(Criteria) }
    def order_by(*spec); end
    sig { params(spec: T.any(T::Array[T.untyped], T::Hash[T.untyped, T.untyped], String)).returns(Criteria) }
    def reorder(*spec); end
    sig { params(value: T.nilable(Integer)).returns(Criteria) }
    def skip(value = nil); end
    sig { params(criterion: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
    def slice(criterion = nil); end
    sig { returns(Criteria) }
    def snapshot; end
    sig { params(comment: T.nilable(String)).returns(Criteria) }
    def comment(comment = nil); end
    sig { params(type: Symbol).returns(Criteria) }
    def cursor_type(type); end
    sig { params(collation_doc: T::Hash[T.untyped, T.untyped]).returns(Criteria) }
    def collation(collation_doc); end
    sig { params(options: T::Hash[T.untyped, T.untyped], field: String, direction: Integer).returns(Criteria) }
    def add_sort_option(options, field, direction); end
    sig { params(args: T.untyped).returns(Criteria) }
    def option(*args); end
    sig { params(fields: String, direction: Integer).returns(Criteria) }
    def sort_with_list(*fields, direction); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_selector; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def embedded_atomic_selector; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def root_atomic_selector; end
    sig { returns(T::Boolean) }
    def aggregating?; end
    sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(Criteria) }
    def group(operation); end
    sig { params(operation: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
    def project(operation = nil); end
    sig { params(field: T.any(String, Symbol)).returns(Criteria) }
    def unwind(field); end
    sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(Criteria) }
    def aggregation(operation); end
    sig { returns(Mergeable) }
    def intersect; end
    sig { returns(Mergeable) }
    def override; end
    sig { returns(Mergeable) }
    def union; end
    sig { returns(Criteria) }
    def reset_strategies!; end
    sig { params(criterion: T::Hash[T.untyped, T.untyped], operator: String).returns(Criteria) }
    def __add__(criterion, operator); end
    sig { params(criterion: T::Hash[T.untyped, T.untyped], outer: String, inner: String).returns(Criteria) }
    def __expanded__(criterion, outer, inner); end
    sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Criteria) }
    def __merge__(criterion); end
    sig { params(criterion: T::Hash[T.untyped, T.untyped], operator: String).returns(Criteria) }
    def __intersect__(criterion, operator); end
    sig { params(criteria: T::Array[T.any(T::Hash[T.untyped, T.untyped], Criteria)], operator: String).returns(Criteria) }
    def __multi__(criteria, operator); end
    sig { params(operator: T.untyped, criteria: T.untyped).returns(T.untyped) }
    def _mongoid_add_top_level_operation(operator, criteria); end
    sig { params(array: T.untyped).returns(T.untyped) }
    def _mongoid_flatten_arrays(array); end
    sig { params(expr: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def _mongoid_expand_keys(expr); end
    sig { params(criterion: T.any(T::Hash[T.untyped, T.untyped], Criteria), operator: String).returns(Criteria) }
    def __override__(criterion, operator); end
    sig { params(criterion: T::Hash[T.untyped, T.untyped], operator: String).returns(Criteria) }
    def __union__(criterion, operator); end
    sig { params(strategy: Symbol).returns(Criteria) }
    def use(strategy); end
    sig { params(strategy: Symbol, criterion: Object, operator: String).returns(Criteria) }
    def with_strategy(strategy, criterion, operator); end
    sig { params(field: String, operator: T.untyped, value: Object).returns(Object) }
    def prepare(field, operator, value); end
    sig { params(condition: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def expand_condition(condition); end
    sig { params(field: T.any(String, Symbol, Key), value: Object).returns(T::Array[T.any(String, Object)]) }
    def expand_one_condition(field, value); end
    sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def expand_condition_to_array_values(criterion); end
    sig { params(field: String, value: Object).returns(Storable) }
    def add_field_expression(field, value); end
    sig { params(operator: String, op_expr: T::Array[T::Hash[T.untyped, T.untyped]]).returns(Storable) }
    def add_logical_operator_expression(operator, op_expr); end
    sig { params(operator: String, op_expr: Object).returns(Storable) }
    def add_operator_expression(operator, op_expr); end
    sig { params(field: String, value: Object).returns(Storable) }
    def add_one_expression(field, value); end
    sig { returns(T.any(Memory, Mongo)) }
    def context; end
    sig { returns(T.any(Mongo, Memory)) }
    def create_context; end
    sig { returns(T.untyped) }
    attr_accessor :embedded
    sig { returns(T.untyped) }
    attr_accessor :klass
    sig { returns(T.untyped) }
    attr_accessor :parent_document
    sig { returns(T.untyped) }
    attr_accessor :association
    module Options
      sig { returns(T.untyped) }
      def persistence_context; end
      sig { params(options: T.untyped).returns(T.untyped) }
      def set_persistence_context(options); end
      sig { params(original_cluster: T.untyped, original_context: T.untyped).returns(T.untyped) }
      def clear_persistence_context(original_cluster, original_context); end
    end
    module Findable
      sig { params(ids: Object, multi: T::Boolean).returns(T.any(Document, T::Array[Document])) }
      def execute_or_raise(ids, multi); end
      sig { params(args: BSON::ObjectId).returns(T.any(T::Array[Document], Document)) }
      def find(*args); end
      sig { params(ids: T::Array[T.untyped]).returns(Criteria) }
      def for_ids(ids); end
      sig { params(ids: T::Array[Object]).returns(T::Array[Document]) }
      def multiple_from_db(ids); end
      sig { returns(Symbol) }
      def id_finder; end
      sig { params(ids: T::Array[Object]).returns(T::Array[Document]) }
      def from_database(ids); end
      sig { params(ids: T.untyped).returns(T.untyped) }
      def from_database_selector(ids); end
      sig { params(ids: T::Array[Object]).returns(T::Array[Object]) }
      def mongoize_ids(ids); end
      sig { returns(T.untyped) }
      def raise_invalid; end
    end
    module Scopable
      sig { returns(Criteria) }
      def apply_default_scope; end
      sig { params(other: Criteria).returns(Criteria) }
      def remove_scoping(other); end
      sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
      def scoped(options = nil); end
      sig { returns(T::Boolean) }
      def scoped?; end
      sig { returns(Criteria) }
      def unscoped; end
      sig { returns(T::Boolean) }
      def unscoped?; end
      sig { returns(T::Array[T.untyped]) }
      def scoping_options; end
      sig { params(options: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
      def scoping_options=(options); end
      sig { returns(Criteria) }
      def with_default_scope; end
      sig { params(other: T.untyped, methods: T.untyped).returns(T.untyped) }
      def reject_matching(other, *methods); end
    end
    module Queryable
      include Mongoid::Criteria::Queryable::Storable
      include Mongoid::Criteria::Queryable::Expandable
      include Mongoid::Criteria::Queryable::Mergeable
      include Mongoid::Criteria::Queryable::Aggregable
      include Mongoid::Selectable
      include Mongoid::Criteria::Queryable::Optional
      sig { params(other: Object).returns(T::Boolean) }
      def ==(other); end
      sig { params(aliases: T::Hash[T.untyped, T.untyped], serializers: T::Hash[T.untyped, T.untyped], driver: Symbol).void }
      def initialize(aliases = {}, serializers = {}, driver = :mongo); end
      sig { params(other: Queryable).returns(T.untyped) }
      def initialize_copy(other); end
      sig { params(fields: Symbol).returns(Criteria) }
      def ascending(*fields); end
      sig { params(value: T.nilable(Integer)).returns(Criteria) }
      def batch_size(value = nil); end
      sig { params(fields: Symbol).returns(Criteria) }
      def descending(*fields); end
      sig { params(value: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
      def hint(value = nil); end
      sig { params(value: T.nilable(Integer)).returns(Criteria) }
      def limit(value = nil); end
      sig { params(value: T.nilable(Integer)).returns(Criteria) }
      def max_scan(value = nil); end
      sig { params(value: T.nilable(Integer)).returns(Criteria) }
      def max_time_ms(value = nil); end
      sig { returns(Criteria) }
      def no_timeout; end
      sig { params(args: Symbol).returns(Criteria) }
      def only(*args); end
      sig { params(spec: T.any(T::Array[T.untyped], T::Hash[T.untyped, T.untyped], String, Object)).returns(Criteria) }
      def order_by(*spec); end
      sig { params(spec: T.any(T::Array[T.untyped], T::Hash[T.untyped, T.untyped], String, Object)).returns(Criteria) }
      def reorder(*spec); end
      sig { params(value: T.nilable(Integer)).returns(Criteria) }
      def skip(value = nil); end
      sig { params(criterion: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
      def slice(criterion = nil); end
      sig { returns(Criteria) }
      def snapshot; end
      sig { params(args: Symbol).returns(Criteria) }
      def without(*args); end
      sig { params(comment: T.nilable(String)).returns(Criteria) }
      def comment(comment = nil); end
      sig { params(type: Symbol).returns(Criteria) }
      def cursor_type(type); end
      sig { params(collation_doc: T::Hash[T.untyped, T.untyped]).returns(Criteria) }
      def collation(collation_doc); end
      sig { params(options: T::Hash[T.untyped, T.untyped], field: String, direction: Integer).returns(Criteria) }
      def add_sort_option(options, field, direction); end
      sig { params(args: T::Array[T.untyped]).returns(Queryable) }
      def option(*args); end
      sig { params(fields: String, direction: Integer).returns(Criteria) }
      def sort_with_list(*fields, direction); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_selector; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def embedded_atomic_selector; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def root_atomic_selector; end
      sig { returns(T::Boolean) }
      def aggregating?; end
      sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(Aggregable) }
      def group(operation); end
      sig { params(operation: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Aggregable) }
      def project(operation = nil); end
      sig { params(field: T.any(String, Symbol)).returns(Aggregable) }
      def unwind(field); end
      sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(Aggregable) }
      def aggregation(operation); end
      sig { returns(Mergeable) }
      def intersect; end
      sig { returns(Mergeable) }
      def override; end
      sig { returns(Mergeable) }
      def union; end
      sig { returns(Criteria) }
      def reset_strategies!; end
      sig { params(criterion: T::Hash[T.untyped, T.untyped], operator: String).returns(Mergeable) }
      def __add__(criterion, operator); end
      sig { params(criterion: T::Hash[T.untyped, T.untyped], outer: String, inner: String).returns(Mergeable) }
      def __expanded__(criterion, outer, inner); end
      sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Mergeable) }
      def __merge__(criterion); end
      sig { params(criterion: T::Hash[T.untyped, T.untyped], operator: String).returns(Mergeable) }
      def __intersect__(criterion, operator); end
      sig { params(criteria: T::Array[T.any(T::Hash[T.untyped, T.untyped], Criteria)], operator: String).returns(Mergeable) }
      def __multi__(criteria, operator); end
      sig { params(operator: T.untyped, criteria: T.untyped).returns(T.untyped) }
      def _mongoid_add_top_level_operation(operator, criteria); end
      sig { params(array: T.untyped).returns(T.untyped) }
      def _mongoid_flatten_arrays(array); end
      sig { params(expr: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
      def _mongoid_expand_keys(expr); end
      sig { params(criterion: T.any(T::Hash[T.untyped, T.untyped], Criteria), operator: String).returns(Mergeable) }
      def __override__(criterion, operator); end
      sig { params(criterion: T::Hash[T.untyped, T.untyped], operator: String).returns(Mergeable) }
      def __union__(criterion, operator); end
      sig { params(strategy: Symbol).returns(Mergeable) }
      def use(strategy); end
      sig { params(strategy: Symbol, criterion: Object, operator: String).returns(Mergeable) }
      def with_strategy(strategy, criterion, operator); end
      sig { params(field: String, operator: T.untyped, value: Object).returns(Object) }
      def prepare(field, operator, value); end
      sig { params(condition: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
      def expand_condition(condition); end
      sig { params(field: T.any(String, Symbol, Key), value: Object).returns(T::Array[T.any(String, Object)]) }
      def expand_one_condition(field, value); end
      sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
      def expand_condition_to_array_values(criterion); end
      sig { params(field: String, value: Object).returns(Storable) }
      def add_field_expression(field, value); end
      sig { params(operator: String, op_expr: T::Array[T::Hash[T.untyped, T.untyped]]).returns(Storable) }
      def add_logical_operator_expression(operator, op_expr); end
      sig { params(operator: String, op_expr: Object).returns(Storable) }
      def add_operator_expression(operator, op_expr); end
      sig { params(field: String, value: Object).returns(Storable) }
      def add_one_expression(field, value); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      attr_reader :aliases
      sig { returns(Symbol) }
      attr_reader :driver
      sig { returns(T.untyped) }
      attr_reader :serializers
      class Key
        sig { params(other: Object).returns(T::Boolean) }
        def ==(other); end
        sig { returns(Fixnum) }
        def hash; end
        sig do
          params(
            name: T.any(String, Symbol),
            strategy: Symbol,
            operator: T.any(String, Integer),
            expanded: T.nilable(String),
            block: T.untyped
          ).void
        end
        def initialize(name, strategy, operator, expanded = nil, &block); end
        sig { params(object: Object, negating: T::Boolean).returns(T::Hash[T.untyped, T.untyped]) }
        def __expr_part__(object, negating = false); end
        sig { params(value: T.untyped, negating: T.untyped).returns(T.untyped) }
        def transform_value(value, negating = false); end
        sig { returns(T::Hash[T.untyped, T.untyped]) }
        def __sort_option__; end
        sig { returns(String) }
        def to_s; end
        sig { returns(T.any(String, Symbol)) }
        attr_reader :name
        sig { returns(String) }
        attr_reader :operator
        sig { returns(String) }
        attr_reader :expanded
        sig { returns(Symbol) }
        attr_reader :strategy
        sig { returns(Proc) }
        attr_reader :block
      end
      class Smash < Hash
        sig { returns(Smash) }
        def __deep_copy__; end
        sig { params(aliases: T::Hash[T.untyped, T.untyped], serializers: T::Hash[T.untyped, T.untyped]).void }
        def initialize(aliases = {}, serializers = {}); end
        sig { params(key: String).returns(Object) }
        def [](key); end
        sig { params(name: String, serializer: Object).returns(String) }
        def localized_key(name, serializer); end
        sig { params(key: T.any(Symbol, String)).returns(T::Array[T.any(String, Object)]) }
        def storage_pair(key); end
        sig { returns(T::Hash[T.untyped, T.untyped]) }
        attr_reader :aliases
        sig { returns(T.untyped) }
        attr_reader :serializers
      end
      class Options < Mongoid::Criteria::Queryable::Smash
        sig { returns(T::Hash[T.untyped, T.untyped]) }
        def fields; end
        sig { returns(Integer) }
        def limit; end
        sig { returns(Integer) }
        def skip; end
        sig { returns(T::Hash[T.untyped, T.untyped]) }
        def sort; end
        sig { params(key: T.any(String, Symbol), value: Object, localize: T.untyped).returns(Object) }
        def store(key, value, localize = true); end
        sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
        def to_pipeline; end
        sig { returns(Options) }
        def __deep_copy__; end
        sig { params(value: Object, localize: T.untyped).returns(Object) }
        def evolve(value, localize = true); end
        sig { params(value: T::Hash[T.untyped, T.untyped], localize: T.untyped).returns(Object) }
        def evolve_hash(value, localize = true); end
      end
      module Optional
        extend Mongoid::Criteria::Queryable::Macroable
        sig { params(fields: Symbol).returns(Criteria) }
        def ascending(*fields); end
        sig { params(value: T.nilable(Integer)).returns(Criteria) }
        def batch_size(value = nil); end
        sig { params(fields: Symbol).returns(Criteria) }
        def descending(*fields); end
        sig { params(value: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
        def hint(value = nil); end
        sig { params(value: T.nilable(Integer)).returns(Criteria) }
        def limit(value = nil); end
        sig { params(value: T.nilable(Integer)).returns(Criteria) }
        def max_scan(value = nil); end
        sig { params(value: T.nilable(Integer)).returns(Criteria) }
        def max_time_ms(value = nil); end
        sig { returns(Criteria) }
        def no_timeout; end
        sig { params(args: Symbol).returns(Criteria) }
        def only(*args); end
        sig { params(spec: T.any(T::Array[T.untyped], T::Hash[T.untyped, T.untyped], String)).returns(Criteria) }
        def order_by(*spec); end
        sig { params(spec: T.any(T::Array[T.untyped], T::Hash[T.untyped, T.untyped], String)).returns(Criteria) }
        def reorder(*spec); end
        sig { params(value: T.nilable(Integer)).returns(Criteria) }
        def skip(value = nil); end
        sig { params(criterion: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
        def slice(criterion = nil); end
        sig { returns(Criteria) }
        def snapshot; end
        sig { params(args: Symbol).returns(Criteria) }
        def without(*args); end
        sig { params(comment: T.nilable(String)).returns(Criteria) }
        def comment(comment = nil); end
        sig { params(type: Symbol).returns(Criteria) }
        def cursor_type(type); end
        sig { params(collation_doc: T::Hash[T.untyped, T.untyped]).returns(Criteria) }
        def collation(collation_doc); end
        sig { params(options: T::Hash[T.untyped, T.untyped], field: String, direction: Integer).returns(Criteria) }
        def add_sort_option(options, field, direction); end
        sig { params(args: T::Array[T.untyped]).returns(Queryable) }
        def option(*args); end
        sig { params(fields: String, direction: Integer).returns(Criteria) }
        def sort_with_list(*fields, direction); end
        sig { returns(T::Array[Symbol]) }
        def self.forwardables; end
        sig do
          params(
            name: Symbol,
            strategy: Symbol,
            operator: String,
            additional: T.nilable(String),
            block: T.untyped
          ).returns(T.untyped)
        end
        def self.key(name, strategy, operator, additional = nil, &block); end
        sig { returns(T.any(T::Hash[T.untyped, T.untyped], T.untyped)) }
        attr_accessor :options
      end
      class Pipeline < Array
        sig { returns(Pipeline) }
        def __deep_copy__; end
        sig { params(entry: T::Hash[T.untyped, T.untyped]).returns(Pipeline) }
        def group(entry); end
        sig { params(aliases: T::Hash[T.untyped, T.untyped]).void }
        def initialize(aliases = {}); end
        sig { params(entry: T::Hash[T.untyped, T.untyped]).returns(Pipeline) }
        def project(entry); end
        sig { params(field_or_doc: T.any(String, Symbol, T::Hash[T.untyped, T.untyped])).returns(Pipeline) }
        def unwind(field_or_doc); end
        sig { params(entry: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
        def evolve(entry); end
        sig { returns(T.untyped) }
        attr_reader :aliases
      end
      class Selector < Mongoid::Criteria::Queryable::Smash
        sig { params(other: T.any(T::Hash[T.untyped, T.untyped], Selector)).returns(Selector) }
        def merge!(other); end
        sig { params(key: T.any(String, Symbol), value: Object).returns(Object) }
        def store(key, value); end
        sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
        def to_pipeline; end
        sig { params(specs: T::Array[T::Hash[T.untyped, T.untyped]]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
        def evolve_multi(specs); end
        sig { params(serializer: Object, value: Object).returns(Object) }
        def evolve(serializer, value); end
        sig { params(serializer: Object, value: T::Array[Object]).returns(Object) }
        def evolve_array(serializer, value); end
        sig { params(serializer: Object, value: T::Hash[T.untyped, T.untyped]).returns(Object) }
        def evolve_hash(serializer, value); end
        sig { params(key: String).returns(T::Boolean) }
        def multi_selection?(key); end
      end
      module Storable
        sig { params(field: String, value: Object).returns(Storable) }
        def add_field_expression(field, value); end
        sig { params(operator: String, op_expr: T::Array[T::Hash[T.untyped, T.untyped]]).returns(Storable) }
        def add_logical_operator_expression(operator, op_expr); end
        sig { params(operator: String, op_expr: Object).returns(Storable) }
        def add_operator_expression(operator, op_expr); end
        sig { params(field: String, value: Object).returns(Storable) }
        def add_one_expression(field, value); end
      end
      module Macroable
        sig do
          params(
            name: Symbol,
            strategy: Symbol,
            operator: String,
            additional: T.nilable(String),
            block: T.untyped
          ).returns(T.untyped)
        end
        def key(name, strategy, operator, additional = nil, &block); end
      end
      module Mergeable
        sig { returns(Mergeable) }
        def intersect; end
        sig { returns(Mergeable) }
        def override; end
        sig { returns(Mergeable) }
        def union; end
        sig { returns(Criteria) }
        def reset_strategies!; end
        sig { params(criterion: T::Hash[T.untyped, T.untyped], operator: String).returns(Mergeable) }
        def __add__(criterion, operator); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped], outer: String, inner: String).returns(Mergeable) }
        def __expanded__(criterion, outer, inner); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Mergeable) }
        def __merge__(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped], operator: String).returns(Mergeable) }
        def __intersect__(criterion, operator); end
        sig { params(criteria: T::Array[T.any(T::Hash[T.untyped, T.untyped], Criteria)], operator: String).returns(Mergeable) }
        def __multi__(criteria, operator); end
        sig { params(operator: T.untyped, criteria: T.untyped).returns(T.untyped) }
        def _mongoid_add_top_level_operation(operator, criteria); end
        sig { params(array: T.untyped).returns(T.untyped) }
        def _mongoid_flatten_arrays(array); end
        sig { params(expr: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
        def _mongoid_expand_keys(expr); end
        sig { params(criterion: T.any(T::Hash[T.untyped, T.untyped], Criteria), operator: String).returns(Mergeable) }
        def __override__(criterion, operator); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped], operator: String).returns(Mergeable) }
        def __union__(criterion, operator); end
        sig { params(strategy: Symbol).returns(Mergeable) }
        def use(strategy); end
        sig { params(strategy: Symbol, criterion: Object, operator: String).returns(Mergeable) }
        def with_strategy(strategy, criterion, operator); end
        sig { params(field: String, operator: T.untyped, value: Object).returns(Object) }
        def prepare(field, operator, value); end
        sig { returns(T.untyped) }
        attr_accessor :strategy
      end
      module Aggregable
        extend Mongoid::Criteria::Queryable::Macroable
        sig { returns(T::Boolean) }
        def aggregating?; end
        sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(Aggregable) }
        def group(operation); end
        sig { params(operation: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Aggregable) }
        def project(operation = nil); end
        sig { params(field: T.any(String, Symbol)).returns(Aggregable) }
        def unwind(field); end
        sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(Aggregable) }
        def aggregation(operation); end
        sig do
          params(
            name: Symbol,
            strategy: Symbol,
            operator: String,
            additional: T.nilable(String),
            block: T.untyped
          ).returns(T.untyped)
        end
        def self.key(name, strategy, operator, additional = nil, &block); end
        sig { returns(T.untyped) }
        attr_reader :pipeline
        sig { params(aggregating: T.untyped).returns(T.untyped) }
        attr_writer :aggregating
      end
      module Expandable
        sig { params(condition: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
        def expand_condition(condition); end
        sig { params(field: T.any(String, Symbol, Key), value: Object).returns(T::Array[T.any(String, Object)]) }
        def expand_one_condition(field, value); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
        def expand_condition_to_array_values(criterion); end
      end
      module Selectable
        extend Mongoid::Criteria::Queryable::Macroable
        LINE_STRING = T.let("LineString", T.untyped)
        POINT = T.let("Point", T.untyped)
        POLYGON = T.let("Polygon", T.untyped)
        sig { params(criteria: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def all(*criteria); end
        sig { params(criteria: T.any(T::Hash[T.untyped, T.untyped], Criteria)).returns(Selectable) }
        def and(*criteria); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def between(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def elem_match(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def exists(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def geo_spatial(criterion); end
        sig { params(criterion: T.untyped).returns(T.untyped) }
        def geo_spacial(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def gt(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def gte(criterion); end
        sig { params(condition: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def in(condition); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def lt(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def lte(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def max_distance(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def mod(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def ne(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def near(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def near_sphere(criterion); end
        sig { params(condition: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def nin(condition); end
        sig { params(criteria: T.any(T::Hash[T.untyped, T.untyped], Criteria)).returns(Selectable) }
        def nor(*criteria); end
        sig { returns(T::Boolean) }
        def negating?; end
        sig { params(criteria: T.any(T::Hash[T.untyped, T.untyped], Criteria)).returns(Selectable) }
        def not(*criteria); end
        sig { params(criteria: T.any(T::Hash[T.untyped, T.untyped], Criteria, T::Array[T.any(T::Hash[T.untyped, T.untyped], Criteria)])).returns(Selectable) }
        def or(*criteria); end
        sig { params(criteria: T.any(T::Hash[T.untyped, T.untyped], Criteria, T::Array[T.any(T::Hash[T.untyped, T.untyped], Criteria)])).returns(Selectable) }
        def any_of(*criteria); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def with_size(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def with_type(criterion); end
        sig { params(terms: T.any(String, Symbol), opts: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Selectable) }
        def text_search(terms, opts = nil); end
        sig { params(criteria: T.any(String, T::Hash[T.untyped, T.untyped])).returns(Selectable) }
        def where(*criteria); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped]).returns(Selectable) }
        def expr_query(criterion); end
        sig { params(criterion: T::Hash[T.untyped, T.untyped], operator: T.untyped).returns(T.untyped) }
        def typed_override(criterion, operator); end
        sig { params(criterion: String).returns(Selectable) }
        def js_query(criterion); end
        sig { params(criterion: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Selectable) }
        def selection(criterion = nil); end
        sig { returns(T::Array[Symbol]) }
        def self.forwardables; end
        sig do
          params(
            name: Symbol,
            strategy: Symbol,
            operator: String,
            additional: T.nilable(String),
            block: T.untyped
          ).returns(T.untyped)
        end
        def self.key(name, strategy, operator, additional = nil, &block); end
        sig { returns(T::Boolean) }
        attr_accessor :negating
        sig { returns(T.any(T::Hash[T.untyped, T.untyped], T.untyped)) }
        attr_accessor :selector
      end
      module Extensions
        module Set
          module ClassMethods
            sig { params(object: T.any(T::Set[T.untyped], Object)).returns(T::Array[T.untyped]) }
            def evolve(object); end
          end
        end
        module Date
          sig { returns(Time) }
          def __evolve_date__; end
          sig { returns(Time) }
          def __evolve_time__; end
          module ClassMethods
            sig { params(object: Object).returns(Time) }
            def evolve(object); end
          end
        end
        module Hash
          sig { params(object: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
          def __add__(object); end
          sig { params(array: T::Array[T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
          def __add_from_array__(array); end
          sig { params(object: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
          def __intersect__(object); end
          sig { params(array: T::Array[T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
          def __intersect_from_array__(array); end
          sig { params(object: Object).returns(T::Hash[T.untyped, T.untyped]) }
          def __intersect_from_object__(object); end
          sig { params(object: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
          def __union__(object); end
          sig { params(object: Object).returns(T::Hash[T.untyped, T.untyped]) }
          def __union_from_object__(object); end
          sig { returns(T::Hash[T.untyped, T.untyped]) }
          def __deep_copy__; end
          sig { returns(T::Hash[T.untyped, T.untyped]) }
          def __sort_option__; end
          sig { returns(T::Hash[T.untyped, T.untyped]) }
          def __expand_complex__; end
          sig { params(block: T.untyped).returns(T::Hash[T.untyped, T.untyped]) }
          def update_values(&block); end
          sig { params(strategy: Symbol, object: Object).returns(T::Hash[T.untyped, T.untyped]) }
          def apply_strategy(strategy, object); end
        end
        module Time
          sig { returns(Time) }
          def __evolve_date__; end
          sig { returns(Time) }
          def __evolve_time__; end
          module ClassMethods
            sig { params(object: Object).returns(Time) }
            def evolve(object); end
          end
        end
        module Array
          sig { params(object: Object).returns(Object) }
          def __add__(object); end
          sig { returns(T::Array[T.untyped]) }
          def __array__; end
          sig { returns(T::Array[T.untyped]) }
          def __deep_copy__; end
          sig { returns(T::Array[Time]) }
          def __evolve_date__; end
          sig { returns(T::Array[T.untyped]) }
          def __expand_complex__; end
          sig { returns(T::Array[Time]) }
          def __evolve_time__; end
          sig { params(object: Object).returns(Object) }
          def __intersect__(object); end
          sig { returns(T::Hash[T.untyped, T.untyped]) }
          def __sort_option__; end
          sig { returns(T::Hash[T.untyped, T.untyped]) }
          def __sort_pair__; end
          sig { params(block: T.untyped).returns(T::Array[T.untyped]) }
          def update_values(&block); end
          sig { returns(T::Array[T.untyped]) }
          def multi; end
          module ClassMethods
            sig { params(object: Object).returns(Object) }
            def evolve(object); end
          end
        end
        module Range
          sig { returns(T::Array[T.untyped]) }
          def __array__; end
          sig { returns(T::Hash[T.untyped, T.untyped]) }
          def __evolve_date__; end
          sig { returns(T::Hash[T.untyped, T.untyped]) }
          def __evolve_time__; end
          module ClassMethods
            sig { params(object: T::Range[T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
            def evolve(object); end
          end
        end
        module Object
          sig { params(object: Object).returns(Object) }
          def __add__(object); end
          sig { params(array: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
          def __add_from_array__(array); end
          sig { params(object: Object).returns(T::Array[T.untyped]) }
          def __intersect__(object); end
          sig { params(array: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
          def __intersect_from_array__(array); end
          sig { params(object: Object).returns(T::Array[T.untyped]) }
          def __intersect_from_object__(object); end
          sig { params(object: Object).returns(T::Array[T.untyped]) }
          def __union__(object); end
          sig { params(object: Object).returns(T::Array[T.untyped]) }
          def __union_from_object__(object); end
          sig { returns(Object) }
          def __deep_copy__; end
          sig { returns(T::Array[T.untyped]) }
          def __array__; end
          sig { returns(Object) }
          def __expand_complex__; end
          sig { returns(T::Boolean) }
          def regexp?; end
          module ClassMethods
            sig { params(object: T.untyped).returns(Object) }
            def evolve(object); end
            sig { params(object: T.untyped).returns(Object) }
            def __evolve__(object); end
          end
        end
        module Regexp
          sig { returns(T::Boolean) }
          def regexp?; end
          module ClassMethods
            sig { params(object: T.any(Regexp, String)).returns(Regexp) }
            def evolve(object); end
          end
          module Raw_
            sig { returns(T::Boolean) }
            def regexp?; end
            module ClassMethods
              sig { params(object: T.any(BSON::Regexp::Raw, String)).returns(BSON::Regexp::Raw) }
              def evolve(object); end
            end
          end
        end
        module String
          sig { returns(Time) }
          def __evolve_date__; end
          sig { returns(Time) }
          def __evolve_time__; end
          sig { returns(String) }
          def __mongo_expression__; end
          sig { returns(T::Hash[T.untyped, T.untyped]) }
          def __sort_option__; end
          sig { params(value: Object, negating: T::Boolean).returns(T::Hash[T.untyped, T.untyped]) }
          def __expr_part__(value, negating = false); end
          sig { returns(Integer) }
          def to_direction; end
          module ClassMethods
            sig { params(key: T.any(String, Symbol), value: Object, negating: T::Boolean).returns(T::Hash[T.untyped, T.untyped]) }
            def __expr_part__(key, value, negating = false); end
            sig { params(object: Object).returns(String) }
            def evolve(object); end
          end
        end
        module Symbol
          sig { params(value: Object, negating: T::Boolean).returns(T::Hash[T.untyped, T.untyped]) }
          def __expr_part__(value, negating = false); end
          sig { returns(Integer) }
          def to_direction; end
          module ClassMethods
            sig do
              params(
                name: Symbol,
                strategy: Symbol,
                operator: String,
                additional: T.nilable(String),
                block: T.untyped
              ).returns(T.untyped)
            end
            def add_key(name, strategy, operator, additional = nil, &block); end
            sig { params(object: Object).returns(Symbol) }
            def evolve(object); end
          end
        end
        module Boolean
          module ClassMethods
            sig { params(object: Object).returns(T::Boolean) }
            def evolve(object); end
          end
        end
        module Numeric
          sig { returns(Time) }
          def __evolve_date__; end
          sig { returns(Time) }
          def __evolve_time__; end
          sig { returns(Integer) }
          def to_direction; end
          module ClassMethods
            sig { params(object: Object).returns(Object) }
            def __numeric__(object); end
            sig { params(object: Object).returns(Integer) }
            def evolve(object); end
          end
        end
        module DateTime
          sig { returns(Time) }
          def __evolve_time__; end
          module ClassMethods
            sig { params(object: Object).returns(Time) }
            def evolve(object); end
          end
        end
        module NilClass
          sig { params(object: Object).returns(Object) }
          def __add__(object); end
          sig { params(object: Object).returns(Object) }
          def __expanded__(object); end
          sig { returns(T.nilable(T.any())) }
          def __evolve_time__; end
          sig { params(object: Object).returns(Object) }
          def __intersect__(object); end
          sig { params(object: Object).returns(Object) }
          def __override__(object); end
          sig { params(object: Object).returns(Object) }
          def __union__(object); end
        end
        module BigDecimal
          module ClassMethods
            sig { params(object: BigDecimal).returns(String) }
            def evolve(object); end
          end
        end
        module TimeWithZone
          sig { returns(Time) }
          def __evolve_date__; end
          sig { returns(Time) }
          def __evolve_time__; end
          module ClassMethods
            sig { params(object: Object).returns(Time) }
            def evolve(object); end
          end
        end
      end
    end
    module Includable
      sig { params(relations: T.any(Symbol, T::Hash[T.untyped, T.untyped])).returns(Criteria) }
      def includes(*relations); end
      sig { returns(T::Array[Association]) }
      def inclusions; end
      sig { params(value: T::Array[Association]).returns(T::Array[Association]) }
      def inclusions=(value); end
      sig { params(_klass: T.any(Class, String, Symbol), association: Symbol).returns(T.untyped) }
      def add_inclusion(_klass, association); end
      sig { params(_parent_class: T.untyped, relations_list: T.untyped).returns(T.untyped) }
      def extract_includes_list(_parent_class, *relations_list); end
    end
    module Modifiable
      sig { params(attrs: T.untyped, block: T.untyped).returns(Document) }
      def build(attrs = {}, &block); end
      sig { params(attrs: T.untyped, block: T.untyped).returns(Document) }
      def create(attrs = {}, &block); end
      sig { params(attrs: T.untyped, block: T.untyped).returns(Document) }
      def create!(attrs = {}, &block); end
      sig { params(attrs: T.untyped).returns(Mongoid::Criteria) }
      def create_with(attrs = {}); end
      sig { params(attrs: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Document) }
      def find_or_create_by(attrs = {}, &block); end
      sig { params(attrs: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Document) }
      def find_or_create_by!(attrs = {}, &block); end
      sig { params(attrs: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Document) }
      def find_or_initialize_by(attrs = {}, &block); end
      sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped]), block: T.untyped).returns(Document) }
      def first_or_create(attrs = nil, &block); end
      sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped]), block: T.untyped).returns(Document) }
      def first_or_create!(attrs = nil, &block); end
      sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped]), block: T.untyped).returns(Document) }
      def first_or_initialize(attrs = nil, &block); end
      sig { params(method: Symbol, attrs: T.nilable(T::Hash[T.untyped, T.untyped]), block: T.untyped).returns(Document) }
      def create_document(method, attrs = nil, &block); end
      sig { params(method: Symbol, attrs: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Document) }
      def find_or(method, attrs = {}, &block); end
      sig { params(method: Symbol, attrs: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Document) }
      def first_or(method, attrs = {}, &block); end
      sig { params(hash: T.untyped, key: T.untyped).returns(T::Boolean) }
      def invalid_key?(hash, key); end
      sig { params(value: T.untyped).returns(T::Boolean) }
      def invalid_embedded_doc?(value); end
      sig { returns(T.untyped) }
      attr_reader :create_attrs
    end
    module Permission
      sig { params(criteria: Object).returns(T::Boolean) }
      def should_permit?(criteria); end
    end
    module Marshalable
      sig { returns(T::Array[Object]) }
      def marshal_dump; end
      sig { params(data: T::Array[T.untyped]).returns(T.untyped) }
      def marshal_load(data); end
      sig { params(name: T.untyped).returns(T.untyped) }
      def dump_hash(name); end
      sig { params(hash_class: T.untyped, raw: T.untyped).returns(T.untyped) }
      def load_hash(hash_class, raw); end
    end
  end
  module Document
    include Mongoid::Composable
    include Mongoid::Touchable::InstanceMethods
    extend ActiveSupport::Concern
    ILLEGAL_KEY = T.let(/(\A[$])|(\.)/.freeze, T.untyped)
    MODULES = T.let([
  Atomic,
  Attributes,
  Copyable,
  Changeable,
  Evolvable,
  Fields,
  Indexable,
  Inspectable,
  Interceptable,
  Matchable,
  Persistable,
  Association,
  Reloadable,
  Scopable,
  Serializable,
  Clients,
  Clients::Options,
  Shardable,
  Stateful,
  Cacheable,
  Threaded::Lifecycle,
  Traversable,
  Validatable,
  Equality,
  Association::Referenced::Syncable,
  Association::Macros,
  ActiveModel::Model,
  ActiveModel::Validations
], T.untyped)
    RESERVED_METHOD_NAMES = T.let([ :fields,
  :aliased_fields,
  :localized_fields,
  :index_specifications,
  :shard_key_fields,
  :nested_attributes,
  :readonly_attributes,
  :storage_options,
  :cascades,
  :cyclic,
  :cache_timestamp_format
], T.untyped)
    CALLBACKS = T.let([
  :after_build,
  :after_create,
  :after_destroy,
  :after_find,
  :after_initialize,
  :after_save,
  :after_touch,
  :after_update,
  :after_upsert,
  :after_validation,
  :around_create,
  :around_destroy,
  :around_save,
  :around_update,
  :around_upsert,
  :before_create,
  :before_destroy,
  :before_save,
  :before_update,
  :before_upsert,
  :before_validation
].freeze, T.untyped)
    MACRO_MAPPING = T.let({
    embeds_one: Association::Embedded::EmbedsOne,
    embeds_many: Association::Embedded::EmbedsMany,
    embedded_in: Association::Embedded::EmbeddedIn,
    has_one: Association::Referenced::HasOne,
    has_many: Association::Referenced::HasMany,
    has_and_belongs_to_many: Association::Referenced::HasAndBelongsToMany,
    belongs_to: Association::Referenced::BelongsTo,
}.freeze, T.untyped)
    STRATEGIES = T.let([
    :delete_all,
    :destroy,
    :nullify,
    :restrict_with_exception,
    :restrict_with_error
], T.untyped)
    LIST_OPERATIONS = T.let([ "$addToSet", "$push", "$pull", "$pullAll" ].freeze, T.untyped)
    StringifiedSymbol = T.let(Mongoid::StringifiedSymbol, T.untyped)
    TYPE_MAPPINGS = T.let({
  array: Array,
  big_decimal: BigDecimal,
  binary: BSON::Binary,
  boolean: Mongoid::Boolean,
  date: Date,
  date_time: DateTime,
  float: Float,
  hash: Hash,
  integer: Integer,
  object_id: BSON::ObjectId,
  range: Range,
  regexp: Regexp,
  set: Set,
  string: String,
  stringified_symbol: StringifiedSymbol,
  symbol: Symbol,
  time: Time
}.with_indifferent_access, T.untyped)
    IDS = T.let([ :_id, :id, '_id', 'id' ].freeze, T.untyped)
    CREATE_LOCK = T.let(Mutex.new, T.untyped)
    UPDATES = T.let([
  :atomic_array_pushes,
  :atomic_array_pulls,
  :atomic_array_add_to_sets,
  :atomic_pulls,
  :delayed_atomic_sets,
  :delayed_atomic_pulls,
  :delayed_atomic_unsets
], T.untyped)
    sig { returns(Document) }
    def freeze; end
    sig { returns(T::Boolean) }
    def frozen?; end
    sig { returns(Integer) }
    def hash; end
    sig { returns(T::Array[T.untyped]) }
    def identity; end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).void }
    def initialize(attrs = nil); end
    sig { returns(String) }
    def model_name; end
    sig { returns(String) }
    def to_key; end
    sig { returns(T::Array[Document]) }
    def to_a; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def as_document; end
    sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Hash[T.untyped, T.untyped]) }
    def as_json(options = nil); end
    sig { params(klass: Class).returns(Document) }
    def becomes(klass); end
    sig { returns(Logger) }
    def logger; end
    sig { returns(String) }
    def model_key; end
    sig { returns(T.nilable(T.any())) }
    def to_ary; end
    sig { returns(T.untyped) }
    def as_attributes; end
    sig { params(field: T.nilable(Symbol)).returns(T::Boolean) }
    def touch(field = nil); end
    sig { params(other: Document).returns(Integer) }
    def <=>(other); end
    sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
    def ==(other); end
    sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
    def ===(other); end
    sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
    def eql?(other); end
    sig { returns(Document) }
    def clone; end
    sig { returns(T.untyped) }
    def clone_document; end
    sig { params(klass: T.untyped, attrs: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def process_localized_attributes(klass, attrs); end
    sig { params(kind: Symbol).returns(T::Boolean) }
    def callback_executable?(kind); end
    sig { params(kind: Symbol).returns(T::Boolean) }
    def in_callback_state?(kind); end
    sig { params(kinds: Symbol).returns(Object) }
    def run_after_callbacks(*kinds); end
    sig { params(kinds: Symbol).returns(Object) }
    def run_before_callbacks(*kinds); end
    sig { params(kind: Symbol, args: T::Array[T.untyped], block: T.untyped).returns(Document) }
    def run_callbacks(kind, *args, &block); end
    sig { returns(T::Boolean) }
    def before_callback_halted?; end
    sig { params(kind: Symbol, children: T.untyped).returns(T::Array[Document]) }
    def cascadable_children(kind, children = Set.new); end
    sig { params(kind: Symbol, child: Document, association: T.untyped).returns(T::Boolean) }
    def cascadable_child?(kind, child, association); end
    sig { params(kind: Symbol, child: Document).returns(Symbol) }
    def child_callback_type(kind, child); end
    sig { params(filter: Symbol).returns(T.untyped) }
    def halted_callback_hook(filter); end
    sig { params(place: Symbol, kind: Symbol).returns(Object) }
    def run_targeted_callbacks(place, kind); end
    sig { returns(T.untyped) }
    def begin_validate; end
    sig { returns(T.untyped) }
    def exit_validate; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def performing_validations?(options = {}); end
    sig { params(attr: Symbol).returns(Object) }
    def read_attribute_for_validation(attr); end
    sig { params(context: T.nilable(Symbol)).returns(T::Boolean) }
    def valid?(context = nil); end
    sig { returns(T::Boolean) }
    def validated?; end
    sig { returns(T::Boolean) }
    def validating_with_query?; end
    sig { returns(T.untyped) }
    def _parent; end
    sig { params(p: T.untyped).returns(T.untyped) }
    def _parent=(p); end
    sig { returns(T::Array[Document]) }
    def _children; end
    sig { returns(T::Array[Document]) }
    def collect_children; end
    sig { returns(T::Array[Document]) }
    def flag_children_persisted; end
    sig { returns(T::Boolean) }
    def hereditary?; end
    sig { params(document: Document).returns(Document) }
    def parentize(document); end
    sig { params(child: Document).returns(T.untyped) }
    def remove_child(child); end
    sig { returns(T::Array[Document]) }
    def reset_persisted_children; end
    sig { returns(T.nilable(T.any())) }
    def _reset_memoized_children!; end
    sig { returns(Document) }
    def _root; end
    sig { returns(T::Boolean) }
    def _root?; end
    sig { returns(Object) }
    def _assigning; end
    sig { returns(T::Boolean) }
    def _assigning?; end
    sig { returns(Object) }
    def _binding; end
    sig { returns(T::Boolean) }
    def _binding?; end
    sig { returns(Object) }
    def _building; end
    sig { returns(T::Boolean) }
    def _building?; end
    sig { returns(T::Boolean) }
    def _creating?; end
    sig { returns(Object) }
    def _loading; end
    sig { returns(T::Boolean) }
    def _loading?; end
    sig { returns(String) }
    def cache_key; end
    sig { returns(T::Boolean) }
    def new_record?; end
    sig { returns(T::Boolean) }
    def persisted?; end
    sig { returns(T::Boolean) }
    def flagged_for_destroy?; end
    sig { returns(T::Boolean) }
    def destroyed?; end
    sig { returns(T::Boolean) }
    def pushable?; end
    sig { returns(T::Boolean) }
    def readonly?; end
    sig { returns(T::Boolean) }
    def settable?; end
    sig { returns(T::Boolean) }
    def updateable?; end
    sig { returns(T.untyped) }
    def reset_readonly; end
    sig { returns(T::Array[String]) }
    def shard_key_fields; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def shard_key_selector; end
    sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Hash[T.untyped, T.untyped]) }
    def serializable_hash(options = nil); end
    sig { params(options: T.untyped).returns(T::Array[String]) }
    def field_names(options); end
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
    sig { params(inclusions: T.any(T::Hash[T.untyped, T.untyped], Symbol, T::Array[Symbol])).returns(T::Array[Symbol]) }
    def relation_names(inclusions); end
    sig { params(inclusions: T.any(T::Hash[T.untyped, T.untyped], Symbol, T::Array[Symbol]), options: T::Hash[T.untyped, T.untyped], name: Symbol).returns(T::Hash[T.untyped, T.untyped]) }
    def relation_options(inclusions, options, name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_selector; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def embedded_atomic_selector; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def root_atomic_selector; end
    sig { returns(T::Boolean) }
    def apply_default_scoping; end
    sig { returns(Document) }
    def reload; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def _reload; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def reload_root_document; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def reload_embedded_document; end
    sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def extract_embedded_attributes(attributes); end
    sig { returns(T::Boolean) }
    def embedded?; end
    sig { returns(T::Boolean) }
    def embedded_many?; end
    sig { returns(T::Boolean) }
    def embedded_one?; end
    sig { returns(Symbol) }
    def association_name; end
    sig { returns(T::Boolean) }
    def referenced_many?; end
    sig { returns(T::Boolean) }
    def referenced_one?; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def reload_relations; end
    sig { params(name: T.any(String, Symbol)).returns(Association) }
    def reflect_on_association(name); end
    sig { params(macros: Symbol).returns(T::Array[Association]) }
    def reflect_on_all_association(*macros); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def associations; end
    sig { params(args: T::Array[T.untyped]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def parse_args(*args); end
    sig { returns(T.untyped) }
    def apply_delete_dependencies!; end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_delete_all!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_destroy!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_nullify!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_restrict_with_exception!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_restrict_with_error!(association); end
    sig do
      params(
        name: T.any(String, Symbol),
        object: T.any(T::Hash[T.untyped, T.untyped], BSON::ObjectId),
        association: Association,
        selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
      ).returns(Proxy)
    end
    def __build__(name, object, association, selected_fields = nil); end
    sig { params(object: T.any(Document, T::Array[Document]), association: Association, selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Proxy) }
    def create_relation(object, association, selected_fields = nil); end
    sig { params(name: Symbol).returns(T.untyped) }
    def reset_relation_criteria(name); end
    sig { params(name: T.any(String, Symbol), relation: Proxy).returns(Proxy) }
    def set_relation(name, relation); end
    sig do
      params(
        name: Symbol,
        association: Association,
        object: Object,
        reload: T::Boolean
      ).returns(Proxy)
    end
    def get_relation(name, association, object, reload = false); end
    sig { params(assoc_key: String).returns(T.nilable(T::Hash[T.untyped, T.untyped])) }
    def _mongoid_filter_selected_fields(assoc_key); end
    sig { params(object: T.untyped, association: T.untyped).returns(T::Boolean) }
    def needs_no_database_query?(object, association); end
    sig { returns(T::Boolean) }
    def without_autobuild?; end
    sig { returns(Object) }
    def without_autobuild; end
    sig { params(association: Association).returns(T::Boolean) }
    def _syncable?(association); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def _synced; end
    sig { params(foreign_key: String).returns(T::Boolean) }
    def _synced?(foreign_key); end
    sig { params(association: Association).returns(Object) }
    def remove_inverse_keys(association); end
    sig { params(association: Association).returns(Object) }
    def update_inverse_keys(association); end
    sig { params(counters: T.any(Symbol, T::Array[T.untyped])).returns(T.untyped) }
    def reset_counters(*counters); end
    sig { returns(T::Boolean) }
    def autosaved?; end
    sig { returns(T.untyped) }
    def __autosaving__; end
    sig { params(doc: T.untyped).returns(T::Boolean) }
    def changed_for_autosave?(doc); end
    sig { params(join_context: T.nilable(T::Boolean)).returns(T::Boolean) }
    def atomically(join_context: nil); end
    sig { returns(T.untyped) }
    def fail_due_to_validation!; end
    sig { params(method: Symbol).returns(T.untyped) }
    def fail_due_to_callback!(method); end
    sig { returns(T::Boolean) }
    def executing_atomically?; end
    sig { params(result: Object, options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def post_process_persist(result, options = {}); end
    sig { returns(Object) }
    def prepare_atomic_operation; end
    sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def process_atomic_operations(operations); end
    sig { returns(T.untyped) }
    def _mongoid_remove_atomic_context_changes; end
    sig { returns(T.untyped) }
    def _mongoid_reset_atomic_context_changes!; end
    sig { returns(T.untyped) }
    def _mongoid_push_atomic_context; end
    sig { returns(T.untyped) }
    def _mongoid_pop_atomic_context; end
    sig { returns(T::Array[T.untyped]) }
    def _mongoid_atomic_context_changed_fields; end
    sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def persist_or_delay_atomic_operation(operation); end
    sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def persist_atomic_operations(operations); end
    sig { params(fields: T.any(String, Symbol)).returns(Document) }
    def unset(*fields); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def upsert(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def prepare_upsert(options = {}); end
    sig { params(name: T.any(Symbol, String), value: Object).returns(T::Boolean) }
    def update_attribute(name, value); end
    sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def update(attributes = {}); end
    sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def update!(attributes = {}); end
    sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def init_atomic_updates; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def prepare_update(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def update_document(options = {}); end
    sig { params(setters: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def set(setters); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def save(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def save!(options = {}); end
    sig { params(renames: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def rename(renames); end
    sig { params(adds: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def add_to_set(adds); end
    sig { params(pushes: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def push(pushes); end
    sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def pull(pulls); end
    sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def pull_all(pulls); end
    sig { params(selector: T::Hash[T.untyped, T.untyped], operations: T::Hash[T.untyped, T.untyped], processed: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def positionally(selector, operations, processed = {}); end
    sig { params(keys: T.untyped, operations: T.untyped, processed: T.untyped).returns(T.untyped) }
    def process_operations(keys, operations, processed); end
    sig { params(keys: T.untyped, update: T.untyped, updates: T.untyped).returns(T.untyped) }
    def process_updates(keys, update, updates = {}); end
    sig { params(keys: T.untyped, position: T.untyped).returns(T.untyped) }
    def replace_index(keys, position); end
    sig { params(pops: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def pop(pops); end
    sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def bit(operations); end
    sig { params(increments: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def inc(increments); end
    sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Boolean) }
    def destroy(options = nil); end
    sig { params(options: T.untyped).returns(T.untyped) }
    def destroy!(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(TrueClass) }
    def delete(options = {}); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_deletes; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def delete_as_embedded(options = {}); end
    sig { returns(T::Boolean) }
    def delete_as_root; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def notifying_parent?(options = {}); end
    sig { returns(Object) }
    def prepare_delete; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def insert(options = {}); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_inserts; end
    sig { returns(Document) }
    def insert_as_embedded; end
    sig { returns(Document) }
    def insert_as_root; end
    sig { returns(T::Boolean) }
    def post_process_insert; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def prepare_insert(options = {}); end
    sig { params(selector: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def _matches?(selector); end
    sig { returns(T::Array[String]) }
    def apply_pre_processed_defaults; end
    sig { returns(T::Array[String]) }
    def apply_post_processed_defaults; end
    sig { params(name: String).returns(T.untyped) }
    def apply_default(name); end
    sig { returns(T.untyped) }
    def apply_defaults; end
    sig { returns(T::Array[String]) }
    def attribute_names; end
    sig { params(name: T.any(String, Symbol)).returns(String) }
    def database_field_name(name); end
    sig { params(field: T.any(Standard, ForeignKey), value: Object).returns(T::Boolean) }
    def lazy_settable?(field, value); end
    sig { returns(T::Boolean) }
    def using_object_ids?; end
    sig { returns(Object) }
    def __evolve_object_id__; end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def attribute_present?(name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def attributes_before_type_cast; end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def has_attribute?(name); end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def has_attribute_before_type_cast?(name); end
    sig { params(name: T.any(String, Symbol)).returns(Object) }
    def read_attribute(name); end
    sig { params(name: T.any(String, Symbol)).returns(Object) }
    def read_attribute_before_type_cast(name); end
    sig { params(name: T.any(String, Symbol)).returns(T.untyped) }
    def remove_attribute(name); end
    sig { params(name: T.any(String, Symbol), value: Object).returns(T.untyped) }
    def write_attribute(name, value); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
    def assign_attributes(attrs = nil); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
    def write_attributes(attrs = nil); end
    sig { params(name: String).returns(T::Boolean) }
    def attribute_missing?(name); end
    sig { returns(Object) }
    def typed_attributes; end
    sig { params(name: T.untyped, selection: T.untyped, field: T.untyped).returns(T::Boolean) }
    def selection_excluded?(name, selection, field); end
    sig { params(name: T.untyped, selection: T.untyped, field: T.untyped).returns(T::Boolean) }
    def selection_included?(name, selection, field); end
    sig { params(string: T.untyped).returns(T::Boolean) }
    def hash_dot_syntax?(string); end
    sig { params(key: T.any(String, Symbol), value: Object).returns(Object) }
    def typed_value_for(key, value); end
    sig { params(name: T.untyped).returns(T.untyped) }
    def read_raw_attribute(name); end
    sig { params(field_name: T.any(String, Symbol), value: Object).returns(T.untyped) }
    def validate_attribute_value(field_name, value); end
    sig { params(name: T.untyped, value: T.untyped).returns(T.untyped) }
    def lookup_attribute_presence(name, value); end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def attribute_writable?(name); end
    sig { params(name: T.untyped, value: T.untyped).returns(T.untyped) }
    def as_writable_attribute!(name, value = :nil); end
    sig { params(name: T.untyped).returns(T::Boolean) }
    def _loaded?(name); end
    sig { params(name: T.untyped).returns(T::Boolean) }
    def projected_field?(name); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
    def process_attributes(attrs = nil); end
    sig { params(key: Symbol, value: Object).returns(T::Boolean) }
    def pending_attribute?(key, value); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def pending_relations; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def pending_nested; end
    sig { params(name: Symbol, value: Object).returns(T.untyped) }
    def process_attribute(name, value); end
    sig { returns(T.untyped) }
    def process_nested; end
    sig { returns(T.untyped) }
    def process_pending; end
    sig { returns(T.untyped) }
    def process_relations; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Object) }
    def with_session(options = {}); end
    sig { returns(T.untyped) }
    def _session; end
    sig { params(options_or_context: T.any(T::Hash[T.untyped, T.untyped], Mongoid::PersistenceContext), block: T.untyped).returns(T.untyped) }
    def with(options_or_context, &block); end
    sig { params(parent: T.untyped).returns(T.untyped) }
    def collection(parent = nil); end
    sig { returns(T.untyped) }
    def collection_name; end
    sig { returns(T.untyped) }
    def mongo_client; end
    sig { returns(T.untyped) }
    def persistence_context; end
    sig { params(options_or_context: T.untyped).returns(T.untyped) }
    def set_persistence_context(options_or_context); end
    sig { params(original_cluster: T.untyped, context: T.untyped).returns(T.untyped) }
    def clear_persistence_context(original_cluster = nil, context = nil); end
    sig { returns(T::Array[String]) }
    def changed; end
    sig { returns(T::Boolean) }
    def changed?; end
    sig { returns(T::Boolean) }
    def children_changed?; end
    sig { returns(T::Hash[String, Object]) }
    def changed_attributes; end
    sig { returns(T::Hash[String, T::Array[T.any(Object, Object)]]) }
    def changes; end
    sig { returns(T.untyped) }
    def move_changes; end
    sig { returns(T.untyped) }
    def post_persist; end
    sig { returns(T::Hash[String, T::Array[T.any(Object, Object)]]) }
    def previous_changes; end
    sig { params(name: T.any(Symbol, String)).returns(T.untyped) }
    def remove_change(name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def setters; end
    sig { params(attr: String).returns(T::Array[Object]) }
    def attribute_change(attr); end
    sig { params(attr: String).returns(T::Boolean) }
    def attribute_changed?(attr); end
    sig { params(attr: String).returns(T::Boolean) }
    def attribute_changed_from_default?(attr); end
    sig { params(attr: String).returns(T.untyped) }
    def attribute_was(attr); end
    sig { params(attr: String).returns(Object) }
    def attribute_will_change!(attr); end
    sig { params(attr: String).returns(Object) }
    def reset_attribute!(attr); end
    sig { params(attr: T.untyped).returns(T.untyped) }
    def reset_attribute_to_default!(attr); end
    sig { params(document: Document).returns(T.untyped) }
    def add_atomic_pull(document); end
    sig { params(document: Document).returns(T::Array[Document]) }
    def add_atomic_unset(document); end
    sig { params(name: T.untyped).returns(String) }
    def atomic_attribute_name(name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_array_pushes; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_array_pulls; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_array_add_to_sets; end
    sig { params(_use_indexes: T.untyped).returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_updates(_use_indexes = false); end
    sig { returns(String) }
    def atomic_delete_modifier; end
    sig { returns(String) }
    def atomic_insert_modifier; end
    sig { returns(String) }
    def atomic_path; end
    sig { returns(String) }
    def atomic_position; end
    sig { returns(Object) }
    def atomic_paths; end
    sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def atomic_pulls; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_pushes; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_sets; end
    sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def atomic_unsets; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def delayed_atomic_sets; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def delayed_atomic_pulls; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def delayed_atomic_unsets; end
    sig { returns(String) }
    def flag_as_destroyed; end
    sig { returns(T::Array[Proc]) }
    def flagged_destroys; end
    sig { returns(T::Array[T.untyped]) }
    def process_flagged_destroys; end
    sig { params(mods: Modifiers, doc: Document).returns(T.untyped) }
    def generate_atomic_updates(mods, doc); end
    sig { params(field: T.nilable(Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def touch_atomic_updates(field = nil); end
    sig { returns(T.untyped) }
    attr_accessor :__selected_fields
    sig { returns(T.untyped) }
    attr_reader :new_record
    module ClassMethods
      sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
      def ===(other); end
      sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped]), selected_fields: T.nilable(Integer)).returns(Document) }
      def instantiate(attrs = nil, selected_fields = nil); end
      sig { returns(T::Array[Class]) }
      def _types; end
      sig { returns(T.untyped) }
      def _mongoid_clear_types; end
      sig { returns(Symbol) }
      def i18n_scope; end
      sig { returns(Logger) }
      def logger; end
    end
  end
  module Equality
    sig { params(other: Document).returns(Integer) }
    def <=>(other); end
    sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
    def ==(other); end
    sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
    def ===(other); end
    sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
    def eql?(other); end
  end
  module Findable
    extend Forwardable
    sig { returns(Integer) }
    def count; end
    sig { returns(Integer) }
    def estimated_count; end
    sig { returns(T::Boolean) }
    def empty?; end
    sig { returns(T::Boolean) }
    def exists?; end
    sig { params(args: T.any(Object, T::Array[Object])).returns(T.nilable(T.any(Document, T::Array[Document]))) }
    def find(*args); end
    sig { params(attrs: T::Hash[T.untyped, T.untyped]).returns(T.nilable(Document)) }
    def find_by(attrs = {}); end
    sig { params(attrs: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def find_by!(attrs = {}); end
    sig { returns(Document) }
    def first; end
    sig { returns(Document) }
    def last; end
  end
  module Loggable
    sig { returns(Logger) }
    def logger; end
    sig { params(logger: Logger).returns(Logger) }
    def logger=(logger); end
    sig { returns(Logger) }
    def default_logger; end
    sig { returns(Logger) }
    def rails_logger; end
  end
  module Scopable
    extend ActiveSupport::Concern
    sig { returns(T::Boolean) }
    def apply_default_scoping; end
    module ClassMethods
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def scopes; end
      sig { params(value: T.nilable(T.any(Proc, Criteria))).returns(Proc) }
      def default_scope(value = nil); end
      sig { returns(T::Boolean) }
      def default_scopable?; end
      sig { returns(Criteria) }
      def queryable; end
      sig { params(name: Symbol, value: Proc, block: T.untyped).returns(T.untyped) }
      def scope(name, value, &block); end
      sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Criteria) }
      def scoped(options = nil); end
      sig { returns(T.any(Criteria, Object)) }
      def unscoped; end
      sig { returns(Criteria) }
      def with_default_scope; end
      sig { params(criteria: Criteria).returns(Criteria) }
      def with_scope(criteria); end
      sig { returns(Object) }
      def without_default_scope; end
      sig { params(name: T.any(String, Symbol)).returns(T.untyped) }
      def check_scope_name(name); end
      sig { params(value: Object).returns(T.untyped) }
      def check_scope_validity(value); end
      sig { params(name: Symbol).returns(Method) }
      def define_scope_method(name); end
      sig { params(value: T.any(Criteria, Proc)).returns(T.untyped) }
      def process_default_scope(value); end
    end
  end
  module Stateful
    sig { returns(T::Boolean) }
    def new_record?; end
    sig { returns(T::Boolean) }
    def persisted?; end
    sig { returns(T::Boolean) }
    def flagged_for_destroy?; end
    sig { returns(T::Boolean) }
    def destroyed?; end
    sig { returns(T::Boolean) }
    def pushable?; end
    sig { returns(T::Boolean) }
    def readonly?; end
    sig { returns(T::Boolean) }
    def settable?; end
    sig { returns(T::Boolean) }
    def updateable?; end
    sig { returns(T.untyped) }
    def reset_readonly; end
    sig { params(destroyed: T.untyped).returns(T.untyped) }
    attr_writer :destroyed
    sig { params(flagged_for_destroy: T.untyped).returns(T.untyped) }
    attr_writer :flagged_for_destroy
    sig { params(new_record: T.untyped).returns(T.untyped) }
    attr_writer :new_record
  end
  module Threaded
    extend Mongoid::Threaded
    DATABASE_OVERRIDE_KEY = T.let("[mongoid]:db-override", T.untyped)
    CLIENTS_KEY = T.let("[mongoid]:clients", T.untyped)
    CLIENT_OVERRIDE_KEY = T.let("[mongoid]:client-override", T.untyped)
    CURRENT_SCOPE_KEY = T.let("[mongoid]:current-scope", T.untyped)
    AUTOSAVES_KEY = T.let("[mongoid]:autosaves", T.untyped)
    VALIDATIONS_KEY = T.let("[mongoid]:validations", T.untyped)
    STACK_KEYS = T.let(Hash.new do |hash, key|
  hash[key] = "[mongoid]:#{key}-stack"
end, T.untyped)
    BIND = T.let('bind'.freeze, T.untyped)
    ASSIGN = T.let('assign'.freeze, T.untyped)
    BUILD = T.let('build'.freeze, T.untyped)
    LOAD = T.let('load'.freeze, T.untyped)
    CREATE = T.let('create'.freeze, T.untyped)
    sig { params(name: String).returns(T::Boolean) }
    def begin_execution(name); end
    sig { returns(T.any(String, Symbol)) }
    def database_override; end
    sig { params(name: T.any(String, Symbol)).returns(T.any(String, Symbol)) }
    def database_override=(name); end
    sig { params(name: Symbol).returns(T::Boolean) }
    def executing?(name); end
    sig { params(name: Symbol).returns(T::Boolean) }
    def exit_execution(name); end
    sig { params(name: Symbol).returns(T::Array[T.untyped]) }
    def stack(name); end
    sig { params(document: Document).returns(T.untyped) }
    def begin_autosave(document); end
    sig { params(document: Document).returns(T.untyped) }
    def begin_validate(document); end
    sig { params(document: Document).returns(T.untyped) }
    def exit_autosave(document); end
    sig { params(document: Document).returns(T.untyped) }
    def exit_validate(document); end
    sig { params(klass: Class).returns(T.untyped) }
    def begin_without_default_scope(klass); end
    sig { params(klass: Class).returns(T.untyped) }
    def exit_without_default_scope(klass); end
    sig { returns(T.any(String, Symbol)) }
    def client_override; end
    sig { params(name: T.any(String, Symbol)).returns(T.any(String, Symbol)) }
    def client_override=(name); end
    sig { params(klass: T.nilable(Class)).returns(Criteria) }
    def current_scope(klass = nil); end
    sig { params(scope: Criteria).returns(Criteria) }
    def current_scope=(scope); end
    sig { params(scope: Criteria, klass: Class).returns(Criteria) }
    def set_current_scope(scope, klass); end
    sig { params(klass: Class).returns(T::Boolean) }
    def without_default_scope?(klass); end
    sig { params(document: Document).returns(T::Boolean) }
    def autosaved?(document); end
    sig { params(document: Document).returns(T::Boolean) }
    def validated?(document); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def autosaves; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def validations; end
    sig { params(klass: Class).returns(T::Array[T.untyped]) }
    def autosaves_for(klass); end
    sig { params(klass: Class).returns(T::Array[T.untyped]) }
    def validations_for(klass); end
    sig { params(session: ::Mongo::Session).returns(T.untyped) }
    def set_session(session); end
    sig { returns(T.nilable(::Mongo::Session)) }
    def get_session; end
    sig { returns(T.nilable(T.any())) }
    def clear_session; end
    sig { params(name: String).returns(T::Boolean) }
    def self.begin_execution(name); end
    sig { returns(T.any(String, Symbol)) }
    def self.database_override; end
    sig { params(name: T.any(String, Symbol)).returns(T.any(String, Symbol)) }
    def self.database_override=(name); end
    sig { params(name: Symbol).returns(T::Boolean) }
    def self.executing?(name); end
    sig { params(name: Symbol).returns(T::Boolean) }
    def self.exit_execution(name); end
    sig { params(name: Symbol).returns(T::Array[T.untyped]) }
    def self.stack(name); end
    sig { params(document: Document).returns(T.untyped) }
    def self.begin_autosave(document); end
    sig { params(document: Document).returns(T.untyped) }
    def self.begin_validate(document); end
    sig { params(document: Document).returns(T.untyped) }
    def self.exit_autosave(document); end
    sig { params(document: Document).returns(T.untyped) }
    def self.exit_validate(document); end
    sig { params(klass: Class).returns(T.untyped) }
    def self.begin_without_default_scope(klass); end
    sig { params(klass: Class).returns(T.untyped) }
    def self.exit_without_default_scope(klass); end
    sig { returns(T.any(String, Symbol)) }
    def self.client_override; end
    sig { params(name: T.any(String, Symbol)).returns(T.any(String, Symbol)) }
    def self.client_override=(name); end
    sig { params(klass: T.nilable(Class)).returns(Criteria) }
    def self.current_scope(klass = nil); end
    sig { params(scope: Criteria).returns(Criteria) }
    def self.current_scope=(scope); end
    sig { params(scope: Criteria, klass: Class).returns(Criteria) }
    def self.set_current_scope(scope, klass); end
    sig { params(klass: Class).returns(T::Boolean) }
    def self.without_default_scope?(klass); end
    sig { params(document: Document).returns(T::Boolean) }
    def self.autosaved?(document); end
    sig { params(document: Document).returns(T::Boolean) }
    def self.validated?(document); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def self.autosaves; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def self.validations; end
    sig { params(klass: Class).returns(T::Array[T.untyped]) }
    def self.autosaves_for(klass); end
    sig { params(klass: Class).returns(T::Array[T.untyped]) }
    def self.validations_for(klass); end
    sig { params(session: ::Mongo::Session).returns(T.untyped) }
    def self.set_session(session); end
    sig { returns(T.nilable(::Mongo::Session)) }
    def self.get_session; end
    sig { returns(T.nilable(T.any())) }
    def self.clear_session; end
    module Lifecycle
      extend ActiveSupport::Concern
      sig { returns(Object) }
      def _assigning; end
      sig { returns(T::Boolean) }
      def _assigning?; end
      sig { returns(Object) }
      def _binding; end
      sig { returns(T::Boolean) }
      def _binding?; end
      sig { returns(Object) }
      def _building; end
      sig { returns(T::Boolean) }
      def _building?; end
      sig { returns(T::Boolean) }
      def _creating?; end
      sig { returns(Object) }
      def _loading; end
      sig { returns(T::Boolean) }
      def _loading?; end
      module ClassMethods
        sig { returns(Object) }
        def _creating; end
      end
    end
  end
  module Cacheable
    extend ActiveSupport::Concern
    sig { returns(String) }
    def cache_key; end
  end
  module Evolvable
    sig { returns(Object) }
    def __evolve_object_id__; end
  end
  module Indexable
    extend ActiveSupport::Concern
    module ClassMethods
      sig { returns(T::Boolean) }
      def create_indexes; end
      sig { returns(T::Boolean) }
      def remove_indexes; end
      sig { returns(T::Boolean) }
      def add_indexes; end
      sig { params(spec: Symbol, options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Hash[T.untyped, T.untyped]) }
      def index(spec, options = nil); end
      sig { params(index_hash: T::Hash[T.untyped, T.untyped], index_name: T.nilable(String)).returns(Mongoid::Indexable::Specification) }
      def index_specification(index_hash, index_name = nil); end
      sig { returns(T::Array[String]) }
      def indexed_database_names; end
      sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def index_keys; end
    end
    module Validators
      module Options
        extend Mongoid::Indexable::Validators::Options
        VALID_OPTIONS = T.let([
  :background,
  :database,
  :default_language,
  :language_override,
  :drop_dups,
  :name,
  :sparse,
  :unique,
  :max,
  :min,
  :bits,
  :bucket_size,
  :expire_after_seconds,
  :weights,
  :storage_engine,
  :key,
  :sphere_version,
  :text_version,
  :version,
  :partial_filter_expression,
  :collation
], T.untyped)
        VALID_TYPES = T.let([
  1,
  -1,
  "2d",
  "2dsphere",
  "geoHaystack",
  "text",
  "hashed"
], T.untyped)
        sig { params(klass: Class, spec: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate(klass, spec, options); end
        sig { params(klass: Class, spec: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate_options(klass, spec, options); end
        sig { params(klass: Class, spec: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def validate_spec(klass, spec, options); end
        sig { params(klass: Class, spec: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate(klass, spec, options); end
        sig { params(klass: Class, spec: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate_options(klass, spec, options); end
        sig { params(klass: Class, spec: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def self.validate_spec(klass, spec, options); end
      end
    end
  end
  module Matchable
    extend ActiveSupport::Concern
    sig { params(selector: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def _matches?(selector); end
  end
  module Shardable
    extend ActiveSupport::Concern
    sig { returns(T::Array[String]) }
    def shard_key_fields; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def shard_key_selector; end
    module ClassMethods
      sig { params(args: T.untyped).returns(T.untyped) }
      def shard_key(*args); end
    end
  end
  module Touchable
    extend Mongoid::Touchable
    sig { params(association: Association).returns(Class) }
    def define_touchable!(association); end
    sig { params(name: Symbol, association: Association).returns(Symbol) }
    def define_relation_touch_method(name, association); end
    sig { params(association: Association).returns(Class) }
    def self.define_touchable!(association); end
    sig { params(name: Symbol, association: Association).returns(Symbol) }
    def self.define_relation_touch_method(name, association); end
    module InstanceMethods
      sig { params(field: T.nilable(Symbol)).returns(T::Boolean) }
      def touch(field = nil); end
    end
  end
  module Attributes
    include Mongoid::Attributes::Nested
    include Mongoid::Attributes::Processing
    include Mongoid::Attributes::Readonly
    extend ActiveSupport::Concern
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def attribute_present?(name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def attributes_before_type_cast; end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def has_attribute?(name); end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def has_attribute_before_type_cast?(name); end
    sig { params(name: T.any(String, Symbol)).returns(Object) }
    def read_attribute(name); end
    sig { params(name: T.any(String, Symbol)).returns(Object) }
    def read_attribute_before_type_cast(name); end
    sig { params(name: T.any(String, Symbol)).returns(T.untyped) }
    def remove_attribute(name); end
    sig { params(name: T.any(String, Symbol), value: Object).returns(T.untyped) }
    def write_attribute(name, value); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
    def assign_attributes(attrs = nil); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
    def write_attributes(attrs = nil); end
    sig { params(name: String).returns(T::Boolean) }
    def attribute_missing?(name); end
    sig { returns(Object) }
    def typed_attributes; end
    sig { params(name: T.untyped, selection: T.untyped, field: T.untyped).returns(T::Boolean) }
    def selection_excluded?(name, selection, field); end
    sig { params(name: T.untyped, selection: T.untyped, field: T.untyped).returns(T::Boolean) }
    def selection_included?(name, selection, field); end
    sig { params(string: T.untyped).returns(T::Boolean) }
    def hash_dot_syntax?(string); end
    sig { params(key: T.any(String, Symbol), value: Object).returns(Object) }
    def typed_value_for(key, value); end
    sig { params(name: T.untyped).returns(T.untyped) }
    def read_raw_attribute(name); end
    sig { params(field_name: T.any(String, Symbol), value: Object).returns(T.untyped) }
    def validate_attribute_value(field_name, value); end
    sig { params(name: T.untyped, value: T.untyped).returns(T.untyped) }
    def lookup_attribute_presence(name, value); end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def attribute_writable?(name); end
    sig { params(name: T.untyped, value: T.untyped).returns(T.untyped) }
    def as_writable_attribute!(name, value = :nil); end
    sig { params(name: T.untyped).returns(T::Boolean) }
    def _loaded?(name); end
    sig { params(name: T.untyped).returns(T::Boolean) }
    def projected_field?(name); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
    def process_attributes(attrs = nil); end
    sig { params(key: Symbol, value: Object).returns(T::Boolean) }
    def pending_attribute?(key, value); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def pending_relations; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def pending_nested; end
    sig { params(name: Symbol, value: Object).returns(T.untyped) }
    def process_attribute(name, value); end
    sig { returns(T.untyped) }
    def process_nested; end
    sig { returns(T.untyped) }
    def process_pending; end
    sig { returns(T.untyped) }
    def process_relations; end
    sig { returns(T.untyped) }
    attr_reader :attributes
    module ClassMethods
      sig { params(name: Symbol, original: Symbol).returns(T.untyped) }
      def alias_attribute(name, original); end
    end
    module Nested
      extend ActiveSupport::Concern
      module ClassMethods
        REJECT_ALL_BLANK_PROC = T.let(->(attributes){
  attributes.all? { |key, value| key == '_destroy' || value.blank? }
}, T.untyped)
        sig { params(args: T.any(Symbol, T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
        def accepts_nested_attributes_for(*args); end
        sig { params(association: Association).returns(T.untyped) }
        def autosave_nested_attributes(association); end
      end
    end
    module Dynamic
      extend ActiveSupport::Concern
      sig { params(name: T::Array[T.untyped], include_private: T::Boolean).returns(T::Boolean) }
      def respond_to?(name, include_private = false); end
      sig { params(name: String).returns(T.untyped) }
      def define_dynamic_reader(name); end
      sig { params(name: String).returns(T.untyped) }
      def define_dynamic_before_type_cast_reader(name); end
      sig { params(name: String).returns(T.untyped) }
      def define_dynamic_writer(name); end
      sig { params(name: Symbol, value: Object).returns(T.untyped) }
      def process_attribute(name, value); end
      sig { returns(String) }
      def inspect_dynamic_fields; end
      sig { params(name: T.any(String, Symbol), args: T::Array[T.untyped]).returns(Object) }
      def method_missing(name, *args); end
    end
    module Readonly
      extend ActiveSupport::Concern
      sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
      def attribute_writable?(name); end
      sig { params(name: T.untyped, value: T.untyped).returns(T.untyped) }
      def as_writable_attribute!(name, value = :nil); end
      sig { params(name: T.untyped).returns(T::Boolean) }
      def _loaded?(name); end
      sig { params(name: T.untyped).returns(T::Boolean) }
      def projected_field?(name); end
      module ClassMethods
        sig { params(names: Symbol).returns(T.untyped) }
        def attr_readonly(*names); end
      end
    end
    module Processing
      sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
      def process_attributes(attrs = nil); end
      sig { params(key: Symbol, value: Object).returns(T::Boolean) }
      def pending_attribute?(key, value); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def pending_relations; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def pending_nested; end
      sig { params(name: Symbol, value: Object).returns(T.untyped) }
      def process_attribute(name, value); end
      sig { returns(T.untyped) }
      def process_nested; end
      sig { returns(T.untyped) }
      def process_pending; end
      sig { returns(T.untyped) }
      def process_relations; end
    end
  end
  module Changeable
    extend ActiveSupport::Concern
    sig { returns(T::Array[String]) }
    def changed; end
    sig { returns(T::Boolean) }
    def changed?; end
    sig { returns(T::Boolean) }
    def children_changed?; end
    sig { returns(T::Hash[String, Object]) }
    def changed_attributes; end
    sig { returns(T::Hash[String, T::Array[T.any(Object, Object)]]) }
    def changes; end
    sig { returns(T.untyped) }
    def move_changes; end
    sig { returns(T.untyped) }
    def post_persist; end
    sig { returns(T::Hash[String, T::Array[T.any(Object, Object)]]) }
    def previous_changes; end
    sig { params(name: T.any(Symbol, String)).returns(T.untyped) }
    def remove_change(name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def setters; end
    sig { params(attr: String).returns(T::Array[Object]) }
    def attribute_change(attr); end
    sig { params(attr: String).returns(T::Boolean) }
    def attribute_changed?(attr); end
    sig { params(attr: String).returns(T::Boolean) }
    def attribute_changed_from_default?(attr); end
    sig { params(attr: String).returns(T.untyped) }
    def attribute_was(attr); end
    sig { params(attr: String).returns(Object) }
    def attribute_will_change!(attr); end
    sig { params(attr: String).returns(Object) }
    def reset_attribute!(attr); end
    sig { params(attr: T.untyped).returns(T.untyped) }
    def reset_attribute_to_default!(attr); end
    module ClassMethods
      sig { params(name: String, meth: String).returns(Module) }
      def create_dirty_methods(name, meth); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_dirty_change_accessor(name, meth); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_dirty_change_check(name, meth); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_dirty_default_change_check(name, meth); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_dirty_previous_value_accessor(name, meth); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_dirty_change_flag(name, meth); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_dirty_reset(name, meth); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_dirty_reset_to_default(name, meth); end
      sig { params(name: String, meth: String).returns(T::Boolean) }
      def create_dirty_previously_changed?(name, meth); end
      sig { params(name: String, meth: String).returns(T.untyped) }
      def create_dirty_previous_change(name, meth); end
    end
  end
  module Composable
    include ActiveModel::Model
    include ActiveModel::ForbiddenAttributesProtection
    include ActiveModel::Serializers::JSON
    include Mongoid::Atomic
    include Mongoid::Changeable
    include Mongoid::Clients
    include Mongoid::Attributes
    include Mongoid::Evolvable
    include Mongoid::Fields
    include Mongoid::Indexable
    include Inspectable
    include Mongoid::Matchable
    include Mongoid::Persistable
    include Mongoid::Association
    include Mongoid::Reloadable
    include Mongoid::Scopable
    include Mongoid::Selectable
    include Mongoid::Serializable
    include Mongoid::Shardable
    include Mongoid::Stateful
    include Mongoid::Cacheable
    include Mongoid::Threaded::Lifecycle
    include Mongoid::Traversable
    include Mongoid::Validatable
    include Mongoid::Interceptable
    include Mongoid::Copyable
    include Mongoid::Equality
    extend ActiveSupport::Concern
    MODULES = T.let([
  Atomic,
  Attributes,
  Copyable,
  Changeable,
  Evolvable,
  Fields,
  Indexable,
  Inspectable,
  Interceptable,
  Matchable,
  Persistable,
  Association,
  Reloadable,
  Scopable,
  Serializable,
  Clients,
  Clients::Options,
  Shardable,
  Stateful,
  Cacheable,
  Threaded::Lifecycle,
  Traversable,
  Validatable,
  Equality,
  Association::Referenced::Syncable,
  Association::Macros,
  ActiveModel::Model,
  ActiveModel::Validations
], T.untyped)
    RESERVED_METHOD_NAMES = T.let([ :fields,
  :aliased_fields,
  :localized_fields,
  :index_specifications,
  :shard_key_fields,
  :nested_attributes,
  :readonly_attributes,
  :storage_options,
  :cascades,
  :cyclic,
  :cache_timestamp_format
], T.untyped)
    CALLBACKS = T.let([
  :after_build,
  :after_create,
  :after_destroy,
  :after_find,
  :after_initialize,
  :after_save,
  :after_touch,
  :after_update,
  :after_upsert,
  :after_validation,
  :around_create,
  :around_destroy,
  :around_save,
  :around_update,
  :around_upsert,
  :before_create,
  :before_destroy,
  :before_save,
  :before_update,
  :before_upsert,
  :before_validation
].freeze, T.untyped)
    MACRO_MAPPING = T.let({
    embeds_one: Association::Embedded::EmbedsOne,
    embeds_many: Association::Embedded::EmbedsMany,
    embedded_in: Association::Embedded::EmbeddedIn,
    has_one: Association::Referenced::HasOne,
    has_many: Association::Referenced::HasMany,
    has_and_belongs_to_many: Association::Referenced::HasAndBelongsToMany,
    belongs_to: Association::Referenced::BelongsTo,
}.freeze, T.untyped)
    STRATEGIES = T.let([
    :delete_all,
    :destroy,
    :nullify,
    :restrict_with_exception,
    :restrict_with_error
], T.untyped)
    LIST_OPERATIONS = T.let([ "$addToSet", "$push", "$pull", "$pullAll" ].freeze, T.untyped)
    StringifiedSymbol = T.let(Mongoid::StringifiedSymbol, T.untyped)
    TYPE_MAPPINGS = T.let({
  array: Array,
  big_decimal: BigDecimal,
  binary: BSON::Binary,
  boolean: Mongoid::Boolean,
  date: Date,
  date_time: DateTime,
  float: Float,
  hash: Hash,
  integer: Integer,
  object_id: BSON::ObjectId,
  range: Range,
  regexp: Regexp,
  set: Set,
  string: String,
  stringified_symbol: StringifiedSymbol,
  symbol: Symbol,
  time: Time
}.with_indifferent_access, T.untyped)
    IDS = T.let([ :_id, :id, '_id', 'id' ].freeze, T.untyped)
    CREATE_LOCK = T.let(Mutex.new, T.untyped)
    UPDATES = T.let([
  :atomic_array_pushes,
  :atomic_array_pulls,
  :atomic_array_add_to_sets,
  :atomic_pulls,
  :delayed_atomic_sets,
  :delayed_atomic_pulls,
  :delayed_atomic_unsets
], T.untyped)
    sig { returns(T::Array[Symbol]) }
    def self.prohibited_methods; end
    sig { params(other: Document).returns(Integer) }
    def <=>(other); end
    sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
    def ==(other); end
    sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
    def ===(other); end
    sig { params(other: T.any(Document, Object)).returns(T::Boolean) }
    def eql?(other); end
    sig { returns(Document) }
    def clone; end
    sig { returns(T.untyped) }
    def clone_document; end
    sig { params(klass: T.untyped, attrs: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def process_localized_attributes(klass, attrs); end
    sig { params(kind: Symbol).returns(T::Boolean) }
    def callback_executable?(kind); end
    sig { params(kind: Symbol).returns(T::Boolean) }
    def in_callback_state?(kind); end
    sig { params(kinds: Symbol).returns(Object) }
    def run_after_callbacks(*kinds); end
    sig { params(kinds: Symbol).returns(Object) }
    def run_before_callbacks(*kinds); end
    sig { params(kind: Symbol, args: T::Array[T.untyped], block: T.untyped).returns(Document) }
    def run_callbacks(kind, *args, &block); end
    sig { returns(T::Boolean) }
    def before_callback_halted?; end
    sig { params(kind: Symbol, children: T.untyped).returns(T::Array[Document]) }
    def cascadable_children(kind, children = Set.new); end
    sig { params(kind: Symbol, child: Document, association: T.untyped).returns(T::Boolean) }
    def cascadable_child?(kind, child, association); end
    sig { params(kind: Symbol, child: Document).returns(Symbol) }
    def child_callback_type(kind, child); end
    sig { params(filter: Symbol).returns(T.untyped) }
    def halted_callback_hook(filter); end
    sig { params(place: Symbol, kind: Symbol).returns(Object) }
    def run_targeted_callbacks(place, kind); end
    sig { returns(T.untyped) }
    def begin_validate; end
    sig { returns(T.untyped) }
    def exit_validate; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def performing_validations?(options = {}); end
    sig { params(attr: Symbol).returns(Object) }
    def read_attribute_for_validation(attr); end
    sig { params(context: T.nilable(Symbol)).returns(T::Boolean) }
    def valid?(context = nil); end
    sig { returns(T::Boolean) }
    def validated?; end
    sig { returns(T::Boolean) }
    def validating_with_query?; end
    sig { returns(T.untyped) }
    def _parent; end
    sig { params(p: T.untyped).returns(T.untyped) }
    def _parent=(p); end
    sig { returns(T::Array[Document]) }
    def _children; end
    sig { returns(T::Array[Document]) }
    def collect_children; end
    sig { returns(T::Array[Document]) }
    def flag_children_persisted; end
    sig { returns(T::Boolean) }
    def hereditary?; end
    sig { params(document: Document).returns(Document) }
    def parentize(document); end
    sig { params(child: Document).returns(T.untyped) }
    def remove_child(child); end
    sig { returns(T::Array[Document]) }
    def reset_persisted_children; end
    sig { returns(T.nilable(T.any())) }
    def _reset_memoized_children!; end
    sig { returns(Document) }
    def _root; end
    sig { returns(T::Boolean) }
    def _root?; end
    sig { returns(Object) }
    def _assigning; end
    sig { returns(T::Boolean) }
    def _assigning?; end
    sig { returns(Object) }
    def _binding; end
    sig { returns(T::Boolean) }
    def _binding?; end
    sig { returns(Object) }
    def _building; end
    sig { returns(T::Boolean) }
    def _building?; end
    sig { returns(T::Boolean) }
    def _creating?; end
    sig { returns(Object) }
    def _loading; end
    sig { returns(T::Boolean) }
    def _loading?; end
    sig { returns(String) }
    def cache_key; end
    sig { returns(T::Boolean) }
    def new_record?; end
    sig { returns(T::Boolean) }
    def persisted?; end
    sig { returns(T::Boolean) }
    def flagged_for_destroy?; end
    sig { returns(T::Boolean) }
    def destroyed?; end
    sig { returns(T::Boolean) }
    def pushable?; end
    sig { returns(T::Boolean) }
    def readonly?; end
    sig { returns(T::Boolean) }
    def settable?; end
    sig { returns(T::Boolean) }
    def updateable?; end
    sig { returns(T.untyped) }
    def reset_readonly; end
    sig { returns(T::Array[String]) }
    def shard_key_fields; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def shard_key_selector; end
    sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Hash[T.untyped, T.untyped]) }
    def serializable_hash(options = nil); end
    sig { params(options: T.untyped).returns(T::Array[String]) }
    def field_names(options); end
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
    sig { params(inclusions: T.any(T::Hash[T.untyped, T.untyped], Symbol, T::Array[Symbol])).returns(T::Array[Symbol]) }
    def relation_names(inclusions); end
    sig { params(inclusions: T.any(T::Hash[T.untyped, T.untyped], Symbol, T::Array[Symbol]), options: T::Hash[T.untyped, T.untyped], name: Symbol).returns(T::Hash[T.untyped, T.untyped]) }
    def relation_options(inclusions, options, name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_selector; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def embedded_atomic_selector; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def root_atomic_selector; end
    sig { returns(T::Boolean) }
    def apply_default_scoping; end
    sig { returns(Document) }
    def reload; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def _reload; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def reload_root_document; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def reload_embedded_document; end
    sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def extract_embedded_attributes(attributes); end
    sig { returns(T::Boolean) }
    def embedded?; end
    sig { returns(T::Boolean) }
    def embedded_many?; end
    sig { returns(T::Boolean) }
    def embedded_one?; end
    sig { returns(Symbol) }
    def association_name; end
    sig { returns(T::Boolean) }
    def referenced_many?; end
    sig { returns(T::Boolean) }
    def referenced_one?; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def reload_relations; end
    sig { params(name: T.any(String, Symbol)).returns(Association) }
    def reflect_on_association(name); end
    sig { params(macros: Symbol).returns(T::Array[Association]) }
    def reflect_on_all_association(*macros); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def associations; end
    sig { params(args: T::Array[T.untyped]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def parse_args(*args); end
    sig { returns(T.untyped) }
    def apply_delete_dependencies!; end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_delete_all!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_destroy!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_nullify!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_restrict_with_exception!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_restrict_with_error!(association); end
    sig do
      params(
        name: T.any(String, Symbol),
        object: T.any(T::Hash[T.untyped, T.untyped], BSON::ObjectId),
        association: Association,
        selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
      ).returns(Proxy)
    end
    def __build__(name, object, association, selected_fields = nil); end
    sig { params(object: T.any(Document, T::Array[Document]), association: Association, selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Proxy) }
    def create_relation(object, association, selected_fields = nil); end
    sig { params(name: Symbol).returns(T.untyped) }
    def reset_relation_criteria(name); end
    sig { params(name: T.any(String, Symbol), relation: Proxy).returns(Proxy) }
    def set_relation(name, relation); end
    sig do
      params(
        name: Symbol,
        association: Association,
        object: Object,
        reload: T::Boolean
      ).returns(Proxy)
    end
    def get_relation(name, association, object, reload = false); end
    sig { params(assoc_key: String).returns(T.nilable(T::Hash[T.untyped, T.untyped])) }
    def _mongoid_filter_selected_fields(assoc_key); end
    sig { params(object: T.untyped, association: T.untyped).returns(T::Boolean) }
    def needs_no_database_query?(object, association); end
    sig { returns(T::Boolean) }
    def without_autobuild?; end
    sig { returns(Object) }
    def without_autobuild; end
    sig { params(association: Association).returns(T::Boolean) }
    def _syncable?(association); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def _synced; end
    sig { params(foreign_key: String).returns(T::Boolean) }
    def _synced?(foreign_key); end
    sig { params(association: Association).returns(Object) }
    def remove_inverse_keys(association); end
    sig { params(association: Association).returns(Object) }
    def update_inverse_keys(association); end
    sig { params(counters: T.any(Symbol, T::Array[T.untyped])).returns(T.untyped) }
    def reset_counters(*counters); end
    sig { returns(T::Boolean) }
    def autosaved?; end
    sig { returns(T.untyped) }
    def __autosaving__; end
    sig { params(doc: T.untyped).returns(T::Boolean) }
    def changed_for_autosave?(doc); end
    sig { params(join_context: T.nilable(T::Boolean)).returns(T::Boolean) }
    def atomically(join_context: nil); end
    sig { returns(T.untyped) }
    def fail_due_to_validation!; end
    sig { params(method: Symbol).returns(T.untyped) }
    def fail_due_to_callback!(method); end
    sig { returns(T::Boolean) }
    def executing_atomically?; end
    sig { params(result: Object, options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def post_process_persist(result, options = {}); end
    sig { returns(Object) }
    def prepare_atomic_operation; end
    sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def process_atomic_operations(operations); end
    sig { returns(T.untyped) }
    def _mongoid_remove_atomic_context_changes; end
    sig { returns(T.untyped) }
    def _mongoid_reset_atomic_context_changes!; end
    sig { returns(T.untyped) }
    def _mongoid_push_atomic_context; end
    sig { returns(T.untyped) }
    def _mongoid_pop_atomic_context; end
    sig { returns(T::Array[T.untyped]) }
    def _mongoid_atomic_context_changed_fields; end
    sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def persist_or_delay_atomic_operation(operation); end
    sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def persist_atomic_operations(operations); end
    sig { params(fields: T.any(String, Symbol)).returns(Document) }
    def unset(*fields); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def upsert(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def prepare_upsert(options = {}); end
    sig { params(name: T.any(Symbol, String), value: Object).returns(T::Boolean) }
    def update_attribute(name, value); end
    sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def update(attributes = {}); end
    sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def update!(attributes = {}); end
    sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def init_atomic_updates; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def prepare_update(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def update_document(options = {}); end
    sig { params(setters: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def set(setters); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def save(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def save!(options = {}); end
    sig { params(renames: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def rename(renames); end
    sig { params(adds: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def add_to_set(adds); end
    sig { params(pushes: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def push(pushes); end
    sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def pull(pulls); end
    sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def pull_all(pulls); end
    sig { params(selector: T::Hash[T.untyped, T.untyped], operations: T::Hash[T.untyped, T.untyped], processed: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def positionally(selector, operations, processed = {}); end
    sig { params(keys: T.untyped, operations: T.untyped, processed: T.untyped).returns(T.untyped) }
    def process_operations(keys, operations, processed); end
    sig { params(keys: T.untyped, update: T.untyped, updates: T.untyped).returns(T.untyped) }
    def process_updates(keys, update, updates = {}); end
    sig { params(keys: T.untyped, position: T.untyped).returns(T.untyped) }
    def replace_index(keys, position); end
    sig { params(pops: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def pop(pops); end
    sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def bit(operations); end
    sig { params(increments: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def inc(increments); end
    sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Boolean) }
    def destroy(options = nil); end
    sig { params(options: T.untyped).returns(T.untyped) }
    def destroy!(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(TrueClass) }
    def delete(options = {}); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_deletes; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def delete_as_embedded(options = {}); end
    sig { returns(T::Boolean) }
    def delete_as_root; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def notifying_parent?(options = {}); end
    sig { returns(Object) }
    def prepare_delete; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def insert(options = {}); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_inserts; end
    sig { returns(Document) }
    def insert_as_embedded; end
    sig { returns(Document) }
    def insert_as_root; end
    sig { returns(T::Boolean) }
    def post_process_insert; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def prepare_insert(options = {}); end
    sig { params(selector: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def _matches?(selector); end
    sig { returns(T::Array[String]) }
    def apply_pre_processed_defaults; end
    sig { returns(T::Array[String]) }
    def apply_post_processed_defaults; end
    sig { params(name: String).returns(T.untyped) }
    def apply_default(name); end
    sig { returns(T.untyped) }
    def apply_defaults; end
    sig { returns(T::Array[String]) }
    def attribute_names; end
    sig { params(name: T.any(String, Symbol)).returns(String) }
    def database_field_name(name); end
    sig { params(field: T.any(Standard, ForeignKey), value: Object).returns(T::Boolean) }
    def lazy_settable?(field, value); end
    sig { returns(T::Boolean) }
    def using_object_ids?; end
    sig { returns(Object) }
    def __evolve_object_id__; end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def attribute_present?(name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def attributes_before_type_cast; end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def has_attribute?(name); end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def has_attribute_before_type_cast?(name); end
    sig { params(name: T.any(String, Symbol)).returns(Object) }
    def read_attribute(name); end
    sig { params(name: T.any(String, Symbol)).returns(Object) }
    def read_attribute_before_type_cast(name); end
    sig { params(name: T.any(String, Symbol)).returns(T.untyped) }
    def remove_attribute(name); end
    sig { params(name: T.any(String, Symbol), value: Object).returns(T.untyped) }
    def write_attribute(name, value); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
    def assign_attributes(attrs = nil); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
    def write_attributes(attrs = nil); end
    sig { params(name: String).returns(T::Boolean) }
    def attribute_missing?(name); end
    sig { returns(Object) }
    def typed_attributes; end
    sig { params(name: T.untyped, selection: T.untyped, field: T.untyped).returns(T::Boolean) }
    def selection_excluded?(name, selection, field); end
    sig { params(name: T.untyped, selection: T.untyped, field: T.untyped).returns(T::Boolean) }
    def selection_included?(name, selection, field); end
    sig { params(string: T.untyped).returns(T::Boolean) }
    def hash_dot_syntax?(string); end
    sig { params(key: T.any(String, Symbol), value: Object).returns(Object) }
    def typed_value_for(key, value); end
    sig { params(name: T.untyped).returns(T.untyped) }
    def read_raw_attribute(name); end
    sig { params(field_name: T.any(String, Symbol), value: Object).returns(T.untyped) }
    def validate_attribute_value(field_name, value); end
    sig { params(name: T.untyped, value: T.untyped).returns(T.untyped) }
    def lookup_attribute_presence(name, value); end
    sig { params(name: T.any(String, Symbol)).returns(T::Boolean) }
    def attribute_writable?(name); end
    sig { params(name: T.untyped, value: T.untyped).returns(T.untyped) }
    def as_writable_attribute!(name, value = :nil); end
    sig { params(name: T.untyped).returns(T::Boolean) }
    def _loaded?(name); end
    sig { params(name: T.untyped).returns(T::Boolean) }
    def projected_field?(name); end
    sig { params(attrs: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.untyped) }
    def process_attributes(attrs = nil); end
    sig { params(key: Symbol, value: Object).returns(T::Boolean) }
    def pending_attribute?(key, value); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def pending_relations; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def pending_nested; end
    sig { params(name: Symbol, value: Object).returns(T.untyped) }
    def process_attribute(name, value); end
    sig { returns(T.untyped) }
    def process_nested; end
    sig { returns(T.untyped) }
    def process_pending; end
    sig { returns(T.untyped) }
    def process_relations; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Object) }
    def with_session(options = {}); end
    sig { returns(T.untyped) }
    def _session; end
    sig { params(options_or_context: T.any(T::Hash[T.untyped, T.untyped], Mongoid::PersistenceContext), block: T.untyped).returns(T.untyped) }
    def with(options_or_context, &block); end
    sig { params(parent: T.untyped).returns(T.untyped) }
    def collection(parent = nil); end
    sig { returns(T.untyped) }
    def collection_name; end
    sig { returns(T.untyped) }
    def mongo_client; end
    sig { returns(T.untyped) }
    def persistence_context; end
    sig { params(options_or_context: T.untyped).returns(T.untyped) }
    def set_persistence_context(options_or_context); end
    sig { params(original_cluster: T.untyped, context: T.untyped).returns(T.untyped) }
    def clear_persistence_context(original_cluster = nil, context = nil); end
    sig { returns(T::Array[String]) }
    def changed; end
    sig { returns(T::Boolean) }
    def changed?; end
    sig { returns(T::Boolean) }
    def children_changed?; end
    sig { returns(T::Hash[String, Object]) }
    def changed_attributes; end
    sig { returns(T::Hash[String, T::Array[T.any(Object, Object)]]) }
    def changes; end
    sig { returns(T.untyped) }
    def move_changes; end
    sig { returns(T.untyped) }
    def post_persist; end
    sig { returns(T::Hash[String, T::Array[T.any(Object, Object)]]) }
    def previous_changes; end
    sig { params(name: T.any(Symbol, String)).returns(T.untyped) }
    def remove_change(name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def setters; end
    sig { params(attr: String).returns(T::Array[Object]) }
    def attribute_change(attr); end
    sig { params(attr: String).returns(T::Boolean) }
    def attribute_changed?(attr); end
    sig { params(attr: String).returns(T::Boolean) }
    def attribute_changed_from_default?(attr); end
    sig { params(attr: String).returns(T.untyped) }
    def attribute_was(attr); end
    sig { params(attr: String).returns(Object) }
    def attribute_will_change!(attr); end
    sig { params(attr: String).returns(Object) }
    def reset_attribute!(attr); end
    sig { params(attr: T.untyped).returns(T.untyped) }
    def reset_attribute_to_default!(attr); end
    sig { params(document: Document).returns(T.untyped) }
    def add_atomic_pull(document); end
    sig { params(document: Document).returns(T::Array[Document]) }
    def add_atomic_unset(document); end
    sig { params(name: T.untyped).returns(String) }
    def atomic_attribute_name(name); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_array_pushes; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_array_pulls; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_array_add_to_sets; end
    sig { params(_use_indexes: T.untyped).returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_updates(_use_indexes = false); end
    sig { returns(String) }
    def atomic_delete_modifier; end
    sig { returns(String) }
    def atomic_insert_modifier; end
    sig { returns(String) }
    def atomic_path; end
    sig { returns(String) }
    def atomic_position; end
    sig { returns(Object) }
    def atomic_paths; end
    sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def atomic_pulls; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_pushes; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_sets; end
    sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def atomic_unsets; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def delayed_atomic_sets; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def delayed_atomic_pulls; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def delayed_atomic_unsets; end
    sig { returns(String) }
    def flag_as_destroyed; end
    sig { returns(T::Array[Proc]) }
    def flagged_destroys; end
    sig { returns(T::Array[T.untyped]) }
    def process_flagged_destroys; end
    sig { params(mods: Modifiers, doc: Document).returns(T.untyped) }
    def generate_atomic_updates(mods, doc); end
    sig { params(field: T.nilable(Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
    def touch_atomic_updates(field = nil); end
  end
  module Contextual
    extend Forwardable
    sig { returns(T.any(Memory, Mongo)) }
    def context; end
    sig { returns(T.any(Mongo, Memory)) }
    def create_context; end
    class None
      include Enumerable
      include Mongoid::Contextual::Queryable
      sig { params(other: T::Array[T.untyped]).returns(T::Boolean) }
      def ==(other); end
      sig { params(field: T.any(String, Symbol)).returns(T::Array[T.untyped]) }
      def distinct(field); end
      sig { returns(T::Enumerator[T.untyped]) }
      def each; end
      sig { returns(T::Boolean) }
      def exists?; end
      sig { params(args: T.any(String, Symbol, T::Array[T.untyped])).returns(T::Array[T.untyped]) }
      def pluck(*args); end
      sig { params(criteria: Criteria).void }
      def initialize(criteria); end
      sig { returns(T.nilable(T.any())) }
      def last; end
      sig { returns(Integer) }
      def length; end
      sig { returns(T::Boolean) }
      def blank?; end
      sig { returns(T.untyped) }
      attr_reader :criteria
      sig { returns(T.untyped) }
      attr_reader :klass
    end
    class Mongo
      include Enumerable
      include Mongoid::Contextual::Aggregable::Mongo
      include Mongoid::Atomic
      include Mongoid::Association::EagerLoadable
      include Mongoid::Contextual::Queryable
      extend Forwardable
      OPTIONS = T.let([ :hint,
  :limit,
  :skip,
  :sort,
  :batch_size,
  :max_scan,
  :max_time_ms,
  :snapshot,
  :comment,
  :read,
  :cursor_type,
  :collation
].freeze, T.untyped)
      UPDATES = T.let([
  :atomic_array_pushes,
  :atomic_array_pulls,
  :atomic_array_add_to_sets,
  :atomic_pulls,
  :delayed_atomic_sets,
  :delayed_atomic_pulls,
  :delayed_atomic_unsets
], T.untyped)
      sig { returns(T::Boolean) }
      def cached?; end
      sig { params(options: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(Integer) }
      def count(options = {}, &block); end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Integer) }
      def estimated_count(options = {}); end
      sig { returns(T.nilable(T.any())) }
      def delete; end
      sig { returns(T.nilable(T.any())) }
      def destroy; end
      sig { params(field: T.any(String, Symbol)).returns(T::Array[Object]) }
      def distinct(field); end
      sig { params(block: T.untyped).returns(T::Enumerator[T.untyped]) }
      def each(&block); end
      sig { returns(T::Boolean) }
      def exists?; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def explain; end
      sig { params(update: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def find_one_and_update(update, options = {}); end
      sig { params(replacement: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def find_one_and_replace(replacement, options = {}); end
      sig { returns(Document) }
      def find_one_and_delete; end
      sig { params(opts: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def first(opts = {}); end
      sig { returns(T.untyped) }
      def find_first; end
      sig { params(coordinates: T::Array[Float]).returns(GeoNear) }
      def geo_near(coordinates); end
      sig { params(field: T.nilable(Symbol), block: T.untyped).returns(T::Array[T.untyped]) }
      def map(field = nil, &block); end
      sig { params(criteria: Criteria).void }
      def initialize(criteria); end
      sig { params(opts: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def last(opts = {}); end
      sig { returns(Integer) }
      def length; end
      sig { params(value: Integer).returns(Mongo) }
      def limit(value); end
      sig { params(map: String, reduce: String).returns(MapReduce) }
      def map_reduce(map, reduce); end
      sig { params(fields: T.any(String, Symbol, T::Array[T.untyped])).returns(T::Array[T.any(Object, T::Array[T.untyped])]) }
      def pluck(*fields); end
      sig { params(value: Integer).returns(Mongo) }
      def skip(value); end
      sig { params(values: T.nilable(T::Hash[T.untyped, T.untyped]), block: T.untyped).returns(Mongo) }
      def sort(values = nil, &block); end
      sig { params(attributes: T.nilable(T::Hash[T.untyped, T.untyped]), opts: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T::Boolean)) }
      def update(attributes = nil, opts = {}); end
      sig { params(attributes: T.nilable(T::Hash[T.untyped, T.untyped]), opts: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T::Boolean)) }
      def update_all(attributes = nil, opts = {}); end
      sig { params(key: T.any(String, Symbol), block: T.untyped).returns(T.untyped) }
      def try_cache(key, &block); end
      sig { params(attributes: T::Hash[T.untyped, T.untyped], method: Symbol, opts: T.untyped).returns(T::Boolean) }
      def update_documents(attributes, method = :update_one, opts = {}); end
      sig { returns(T.untyped) }
      def apply_fields; end
      sig { returns(T.untyped) }
      def apply_options; end
      sig { params(name: T.untyped).returns(T.untyped) }
      def apply_option(name); end
      sig { params(opts: T.untyped).returns(T.untyped) }
      def with_inverse_sorting(opts = {}); end
      sig { returns(T::Boolean) }
      def cacheable?; end
      sig { returns(T::Boolean) }
      def cache_loaded?; end
      sig { returns(T::Array[Document]) }
      def documents; end
      sig { returns(T.any(T::Array[Document], ::Mongo::Collection::View)) }
      def documents_for_iteration; end
      sig { params(document: Document, block: T.untyped).returns(T.untyped) }
      def yield_document(document, &block); end
      sig { returns(T.untyped) }
      def _session; end
      sig { returns(T::Boolean) }
      def acknowledged_write?; end
      sig { returns(T::Boolean) }
      def blank?; end
      sig { returns(T::Boolean) }
      def eager_loadable?; end
      sig { params(docs: T.untyped).returns(T.untyped) }
      def eager_load(docs); end
      sig { params(relations: T.untyped, docs: T.untyped).returns(T.untyped) }
      def preload(relations, docs); end
      sig { params(document: Document).returns(T.untyped) }
      def add_atomic_pull(document); end
      sig { params(document: Document).returns(T::Array[Document]) }
      def add_atomic_unset(document); end
      sig { params(name: T.untyped).returns(String) }
      def atomic_attribute_name(name); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_array_pushes; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_array_pulls; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_array_add_to_sets; end
      sig { params(_use_indexes: T.untyped).returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_updates(_use_indexes = false); end
      sig { returns(String) }
      def atomic_delete_modifier; end
      sig { returns(String) }
      def atomic_insert_modifier; end
      sig { returns(String) }
      def atomic_path; end
      sig { returns(String) }
      def atomic_position; end
      sig { returns(Object) }
      def atomic_paths; end
      sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def atomic_pulls; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_pushes; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_sets; end
      sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def atomic_unsets; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def delayed_atomic_sets; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def delayed_atomic_pulls; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def delayed_atomic_unsets; end
      sig { returns(String) }
      def flag_as_destroyed; end
      sig { returns(T::Array[Proc]) }
      def flagged_destroys; end
      sig { returns(T::Array[T.untyped]) }
      def process_flagged_destroys; end
      sig { params(mods: Modifiers, doc: Document).returns(T.untyped) }
      def generate_atomic_updates(mods, doc); end
      sig { params(field: T.nilable(Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
      def touch_atomic_updates(field = nil); end
      sig { params(field: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
      def aggregates(field); end
      sig { params(field: Symbol).returns(Float) }
      def avg(field); end
      sig { params(field: T.nilable(Symbol)).returns(T.any(Float, Document)) }
      def max(field = nil); end
      sig { params(field: T.nilable(Symbol)).returns(T.any(Float, Document)) }
      def min(field = nil); end
      sig { params(field: T.nilable(Symbol)).returns(Float) }
      def sum(field = nil); end
      sig { params(field: T.any(String, Symbol)).returns(T::Array[T.untyped]) }
      def pipeline(field); end
      sig { returns(T.untyped) }
      attr_reader :view
    end
    module Atomic
      sig { params(adds: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def add_to_set(adds); end
      sig { params(adds: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def add_each_to_set(adds); end
      sig { params(bits: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def bit(bits); end
      sig { params(incs: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def inc(incs); end
      sig { params(pops: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def pop(pops); end
      sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def pull(pulls); end
      sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def pull_all(pulls); end
      sig { params(pushes: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def push(pushes); end
      sig { params(pushes: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def push_all(pushes); end
      sig { params(renames: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def rename(renames); end
      sig { params(sets: T::Hash[T.untyped, T.untyped]).returns(T.nilable(T.any())) }
      def set(sets); end
      sig { params(args: T.any(String, Symbol, T::Array[T.untyped])).returns(T.nilable(T.any())) }
      def unset(*args); end
      sig { params(ops: T.untyped).returns(T.untyped) }
      def collect_operations(ops); end
      sig { params(ops: T.untyped).returns(T.untyped) }
      def collect_each_operations(ops); end
    end
    class Memory
      include Enumerable
      include Mongoid::Contextual::Aggregable::Memory
      include Mongoid::Association::EagerLoadable
      include Mongoid::Contextual::Queryable
      include Mongoid::Positional
      sig { params(other: T::Array[T.untyped]).returns(T::Boolean) }
      def ==(other); end
      sig { returns(T.nilable(T.any())) }
      def delete; end
      sig { returns(T.nilable(T.any())) }
      def destroy; end
      sig { params(field: T.any(String, Symbol)).returns(T::Array[Object]) }
      def distinct(field); end
      sig { returns(T::Enumerator[T.untyped]) }
      def each; end
      sig { returns(T::Boolean) }
      def exists?; end
      sig { params(args: T.untyped).returns(Document) }
      def first(*args); end
      sig { params(criteria: Criteria).void }
      def initialize(criteria); end
      sig { params(incs: T::Hash[T.untyped, T.untyped]).returns(T::Enumerator[T.untyped]) }
      def inc(incs); end
      sig { returns(Document) }
      def last; end
      sig { returns(Integer) }
      def length; end
      sig { params(value: Integer).returns(Mongo) }
      def limit(value); end
      sig { params(fields: T.untyped).returns(T.untyped) }
      def pluck(*fields); end
      sig { params(value: Integer).returns(Mongo) }
      def skip(value); end
      sig { params(values: T::Hash[T.untyped, T.untyped]).returns(Mongo) }
      def sort(values); end
      sig { params(attributes: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.nilable(T::Boolean)) }
      def update(attributes = nil); end
      sig { params(attributes: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T.nilable(T::Boolean)) }
      def update_all(attributes = nil); end
      sig { returns(T::Array[Document]) }
      def documents_for_iteration; end
      sig { params(attributes: T::Hash[T.untyped, T.untyped], docs: T::Array[Document]).returns(T.untyped) }
      def update_documents(attributes, docs); end
      sig { returns(Integer) }
      def limiting; end
      sig { params(value: Integer).returns(Integer) }
      def limiting=(value); end
      sig { returns(Integer) }
      def skipping; end
      sig { params(value: Integer).returns(Integer) }
      def skipping=(value); end
      sig { returns(Memory) }
      def apply_options; end
      sig { returns(T.untyped) }
      def apply_sorting; end
      sig { params(a: Object, b: Object).returns(Integer) }
      def compare(a, b); end
      sig { params(values: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
      def in_place_sort(values); end
      sig { params(doc: Document).returns(T.untyped) }
      def prepare_remove(doc); end
      sig { returns(T.untyped) }
      def _session; end
      sig { params(selector: T::Hash[T.untyped, T.untyped], operations: T::Hash[T.untyped, T.untyped], processed: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
      def positionally(selector, operations, processed = {}); end
      sig { params(keys: T.untyped, operations: T.untyped, processed: T.untyped).returns(T.untyped) }
      def process_operations(keys, operations, processed); end
      sig { params(keys: T.untyped, update: T.untyped, updates: T.untyped).returns(T.untyped) }
      def process_updates(keys, update, updates = {}); end
      sig { params(keys: T.untyped, position: T.untyped).returns(T.untyped) }
      def replace_index(keys, position); end
      sig { returns(T::Boolean) }
      def blank?; end
      sig { returns(T::Boolean) }
      def eager_loadable?; end
      sig { params(docs: T.untyped).returns(T.untyped) }
      def eager_load(docs); end
      sig { params(relations: T.untyped, docs: T.untyped).returns(T.untyped) }
      def preload(relations, docs); end
      sig { params(field: Symbol).returns(Float) }
      def avg(field); end
      sig { params(field: T.nilable(Symbol)).returns(T.any(Float, Document)) }
      def max(field = nil); end
      sig { params(field: T.nilable(Symbol)).returns(T.any(Float, Document)) }
      def min(field = nil); end
      sig { params(field: T.nilable(Symbol)).returns(Float) }
      def sum(field = nil); end
      sig { params(field: Symbol, method: Symbol).returns(Integer) }
      def aggregate_by(field, method); end
      sig { returns(T::Array[Document]) }
      attr_reader :documents
      sig { returns(Document) }
      attr_reader :root
      sig { returns(T.untyped) }
      attr_reader :path
      sig { returns(T.untyped) }
      attr_reader :selector
    end
    module Command
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def command; end
      sig { returns(::Mongo::Client) }
      def client; end
      sig { returns(Document) }
      attr_reader :collection
      sig { returns(T.untyped) }
      attr_reader :criteria
    end
    class GeoNear
      include Enumerable
      include Mongoid::Contextual::Command
      extend Forwardable
      sig { returns(T.nilable(Float)) }
      def average_distance; end
      sig { returns(T::Enumerator[T.untyped]) }
      def each; end
      sig { params(value: T.any(Integer, Float)).returns(GeoNear) }
      def distance_multiplier(value); end
      sig { params(collection: ::Mongo::Collection, criteria: Criteria, near: String).void }
      def initialize(collection, criteria, near); end
      sig { returns(String) }
      def inspect; end
      sig { params(value: T.nilable(T.any(Integer, Float))).returns(T.any(GeoNear, Float)) }
      def max_distance(value = nil); end
      sig { params(value: T.any(Integer, Float)).returns(GeoNear) }
      def min_distance(value); end
      sig { returns(GeoNear) }
      def spherical; end
      sig { params(value: T::Boolean).returns(GeoNear) }
      def unique(value = true); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def execute; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def stats; end
      sig { returns(Float) }
      def time; end
      sig { returns(T::Boolean) }
      def empty_and_chainable?; end
      sig { returns(T.nilable(T.any())) }
      def apply_criteria_options; end
      sig { returns(T.any(T::Array[T.untyped], ::Mongo::Cursor)) }
      def documents; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def results; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def command; end
      sig { returns(::Mongo::Client) }
      def client; end
    end
    module Queryable
      sig { returns(T::Boolean) }
      def blank?; end
      sig { returns(::Mongo::Collection) }
      attr_reader :collection
      sig { returns(Criteria) }
      attr_reader :criteria
      sig { returns(T.untyped) }
      attr_reader :klass
    end
    class MapReduce
      include Enumerable
      include Mongoid::Contextual::Command
      extend Forwardable
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def counts; end
      sig { returns(T::Enumerator[T.untyped]) }
      def each; end
      sig { returns(Integer) }
      def emitted; end
      sig { params(function: String).returns(MapReduce) }
      def finalize(function); end
      sig do
        params(
          collection: T.untyped,
          criteria: Criteria,
          map: String,
          reduce: String
        ).void
      end
      def initialize(collection, criteria, map, reduce); end
      sig { returns(Integer) }
      def input; end
      sig { returns(MapReduce) }
      def js_mode; end
      sig { params(location: T::Hash[T.untyped, T.untyped]).returns(MapReduce) }
      def out(location); end
      sig { returns(Integer) }
      def output; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def raw; end
      sig { returns(Integer) }
      def reduced; end
      sig { params(object: T::Hash[T.untyped, T.untyped]).returns(MapReduce) }
      def scope(object); end
      sig { returns(Float) }
      def time; end
      sig { returns(String) }
      def inspect; end
      sig { returns(T.untyped) }
      def command; end
      sig { returns(T.untyped) }
      def validate_out!; end
      sig { returns(T.untyped) }
      def _session; end
      sig { returns(::Mongo::Client) }
      def client; end
    end
    module Aggregable
      module Mongo
        sig { params(field: T.any(String, Symbol)).returns(T::Hash[T.untyped, T.untyped]) }
        def aggregates(field); end
        sig { params(field: Symbol).returns(Float) }
        def avg(field); end
        sig { params(field: T.nilable(Symbol)).returns(T.any(Float, Document)) }
        def max(field = nil); end
        sig { params(field: T.nilable(Symbol)).returns(T.any(Float, Document)) }
        def min(field = nil); end
        sig { params(field: T.nilable(Symbol)).returns(Float) }
        def sum(field = nil); end
        sig { params(field: T.any(String, Symbol)).returns(T::Array[T.untyped]) }
        def pipeline(field); end
      end
      module Memory
        sig { params(field: Symbol).returns(Float) }
        def avg(field); end
        sig { params(field: T.nilable(Symbol)).returns(T.any(Float, Document)) }
        def max(field = nil); end
        sig { params(field: T.nilable(Symbol)).returns(T.any(Float, Document)) }
        def min(field = nil); end
        sig { params(field: T.nilable(Symbol)).returns(Float) }
        def sum(field = nil); end
        sig { params(field: Symbol, method: Symbol).returns(Integer) }
        def aggregate_by(field, method); end
      end
    end
  end
  module Positional
    sig { params(selector: T::Hash[T.untyped, T.untyped], operations: T::Hash[T.untyped, T.untyped], processed: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def positionally(selector, operations, processed = {}); end
    sig { params(keys: T.untyped, operations: T.untyped, processed: T.untyped).returns(T.untyped) }
    def process_operations(keys, operations, processed); end
    sig { params(keys: T.untyped, update: T.untyped, updates: T.untyped).returns(T.untyped) }
    def process_updates(keys, update, updates = {}); end
    sig { params(keys: T.untyped, position: T.untyped).returns(T.untyped) }
    def replace_index(keys, position); end
  end
  module Reloadable
    sig { returns(Document) }
    def reload; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def _reload; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def reload_root_document; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def reload_embedded_document; end
    sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def extract_embedded_attributes(attributes); end
  end
  module Selectable
    extend ActiveSupport::Concern
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_selector; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def embedded_atomic_selector; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def root_atomic_selector; end
  end
  module Timestamps
    include Mongoid::Timestamps::Created
    include Mongoid::Timestamps::Updated
    extend ActiveSupport::Concern
    sig { returns(T.untyped) }
    def set_updated_at; end
    sig { returns(T::Boolean) }
    def able_to_set_updated_at?; end
    sig { returns(T.untyped) }
    def set_created_at; end
    module Short
      include Mongoid::Timestamps::Created::Short
      include Mongoid::Timestamps::Updated::Short
      extend ActiveSupport::Concern
    end
    module Created
      extend ActiveSupport::Concern
      sig { returns(T.untyped) }
      def set_created_at; end
      module Short
        extend ActiveSupport::Concern
      end
    end
    module Updated
      extend ActiveSupport::Concern
      sig { returns(T.untyped) }
      def set_updated_at; end
      sig { returns(T::Boolean) }
      def able_to_set_updated_at?; end
      module Short
        extend ActiveSupport::Concern
      end
    end
    module Timeless
      extend ActiveSupport::Concern
      extend Forwardable
      sig { returns(T::Boolean) }
      def clear_timeless_option; end
      sig { returns(Document) }
      def timeless; end
      sig { returns(T::Boolean) }
      def timeless?; end
      sig { returns(T.untyped) }
      def self.timeless_table; end
      module ClassMethods
        sig { returns(Class) }
        def timeless; end
        sig { returns(T.untyped) }
        def clear_timeless_option; end
        sig { returns(T.untyped) }
        def clear_timeless_option_on_update; end
        sig { params(counter: T.untyped).returns(T.untyped) }
        def set_timeless_counter(counter); end
        sig { returns(T::Boolean) }
        def timeless?; end
      end
    end
  end
  module Association
    include Mongoid::Association::Embedded::Cyclic
    include Mongoid::Association::Referenced::AutoSave
    include Mongoid::Association::Referenced::CounterCache
    include Mongoid::Association::Referenced::Syncable
    include Mongoid::Association::Accessors
    include Mongoid::Association::Depending
    include Mongoid::Association::Builders
    include Mongoid::Association::Macros
    include Mongoid::Association::Reflections
    extend ActiveSupport::Concern
    MACRO_MAPPING = T.let({
    embeds_one: Association::Embedded::EmbedsOne,
    embeds_many: Association::Embedded::EmbedsMany,
    embedded_in: Association::Embedded::EmbeddedIn,
    has_one: Association::Referenced::HasOne,
    has_many: Association::Referenced::HasMany,
    has_and_belongs_to_many: Association::Referenced::HasAndBelongsToMany,
    belongs_to: Association::Referenced::BelongsTo,
}.freeze, T.untyped)
    STRATEGIES = T.let([
    :delete_all,
    :destroy,
    :nullify,
    :restrict_with_exception,
    :restrict_with_error
], T.untyped)
    sig { returns(T::Boolean) }
    def embedded?; end
    sig { returns(T::Boolean) }
    def embedded_many?; end
    sig { returns(T::Boolean) }
    def embedded_one?; end
    sig { returns(Symbol) }
    def association_name; end
    sig { returns(T::Boolean) }
    def referenced_many?; end
    sig { returns(T::Boolean) }
    def referenced_one?; end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def reload_relations; end
    sig { params(name: T.any(String, Symbol)).returns(Association) }
    def reflect_on_association(name); end
    sig { params(macros: Symbol).returns(T::Array[Association]) }
    def reflect_on_all_association(*macros); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def associations; end
    sig { params(args: T::Array[T.untyped]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def parse_args(*args); end
    sig { returns(T.untyped) }
    def apply_delete_dependencies!; end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_delete_all!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_destroy!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_nullify!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_restrict_with_exception!(association); end
    sig { params(association: T.untyped).returns(T.untyped) }
    def _dependent_restrict_with_error!(association); end
    sig do
      params(
        name: T.any(String, Symbol),
        object: T.any(T::Hash[T.untyped, T.untyped], BSON::ObjectId),
        association: Association,
        selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
      ).returns(Proxy)
    end
    def __build__(name, object, association, selected_fields = nil); end
    sig { params(object: T.any(Document, T::Array[Document]), association: Association, selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Proxy) }
    def create_relation(object, association, selected_fields = nil); end
    sig { params(name: Symbol).returns(T.untyped) }
    def reset_relation_criteria(name); end
    sig { params(name: T.any(String, Symbol), relation: Proxy).returns(Proxy) }
    def set_relation(name, relation); end
    sig do
      params(
        name: Symbol,
        association: Association,
        object: Object,
        reload: T::Boolean
      ).returns(Proxy)
    end
    def get_relation(name, association, object, reload = false); end
    sig { params(assoc_key: String).returns(T.nilable(T::Hash[T.untyped, T.untyped])) }
    def _mongoid_filter_selected_fields(assoc_key); end
    sig { params(object: T.untyped, association: T.untyped).returns(T::Boolean) }
    def needs_no_database_query?(object, association); end
    sig { returns(T::Boolean) }
    def without_autobuild?; end
    sig { returns(Object) }
    def without_autobuild; end
    sig { params(association: Association).returns(T::Boolean) }
    def _syncable?(association); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def _synced; end
    sig { params(foreign_key: String).returns(T::Boolean) }
    def _synced?(foreign_key); end
    sig { params(association: Association).returns(Object) }
    def remove_inverse_keys(association); end
    sig { params(association: Association).returns(Object) }
    def update_inverse_keys(association); end
    sig { params(counters: T.any(Symbol, T::Array[T.untyped])).returns(T.untyped) }
    def reset_counters(*counters); end
    sig { returns(T::Boolean) }
    def autosaved?; end
    sig { returns(T.untyped) }
    def __autosaving__; end
    sig { params(doc: T.untyped).returns(T::Boolean) }
    def changed_for_autosave?(doc); end
    sig { returns(T.untyped) }
    attr_accessor :_association
    class One < Mongoid::Association::Proxy
      sig { returns(T::Boolean) }
      def clear; end
      sig { returns(T::Array[Document]) }
      def in_memory; end
      sig { params(name: Symbol, include_private: T.untyped).returns(T::Boolean) }
      def respond_to?(name, include_private = false); end
      sig { returns(Object) }
      def __evolve_object_id__; end
    end
    class Many < Mongoid::Association::Proxy
      include Enumerable
      extend Forwardable
      sig { returns(T::Boolean) }
      def blank?; end
      sig { params(attributes: T.nilable(T::Hash[T.untyped, T.untyped]), type: T.nilable(Class), block: T.untyped).returns(Document) }
      def create(attributes = nil, type = nil, &block); end
      sig { params(attributes: T.nilable(T::Hash[T.untyped, T.untyped]), type: T.nilable(Class), block: T.untyped).returns(Document) }
      def create!(attributes = nil, type = nil, &block); end
      sig { params(attrs: T.untyped, type: T.untyped, block: T.untyped).returns(Document) }
      def find_or_create_by(attrs = {}, type = nil, &block); end
      sig { params(attrs: T::Hash[T.untyped, T.untyped], type: T.nilable(Class), block: T.untyped).returns(Document) }
      def find_or_create_by!(attrs = {}, type = nil, &block); end
      sig { params(attrs: T::Hash[T.untyped, T.untyped], type: T.nilable(Class), block: T.untyped).returns(Document) }
      def find_or_initialize_by(attrs = {}, type = nil, &block); end
      sig { returns(T::Boolean) }
      def nil?; end
      sig { params(name: Symbol, include_private: T::Boolean).returns(T::Boolean) }
      def respond_to?(name, include_private = false); end
      sig { returns(Criteria) }
      def scoped; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
      def serializable_hash(options = {}); end
      sig { returns(Criteria) }
      def unscoped; end
      sig { returns(T.untyped) }
      def _session; end
      sig do
        params(
          method: T.untyped,
          attrs: T.untyped,
          type: T.untyped,
          block: T.untyped
        ).returns(Document)
      end
      def find_or(method, attrs = {}, type = nil, &block); end
    end
    class Proxy
      include Mongoid::Threaded::Lifecycle
      include Mongoid::Association::Marshalable
      extend Forwardable
      sig { params(base: Document, target: T.any(Document, T::Array[Document]), association: Association).returns(T.untyped) }
      def init(base, target, association); end
      sig { params(extension: T.untyped).returns(T.untyped) }
      def extend_proxies(*extension); end
      sig { returns(Class) }
      def klass; end
      sig { returns(T.untyped) }
      def reset_unloaded; end
      sig { returns(Object) }
      def substitutable; end
      sig { returns(::Mongo::Collection) }
      def collection; end
      sig { params(document: Document).returns(T.untyped) }
      def characterize_one(document); end
      sig { params(name: T.any(String, Symbol), args: T::Array[T.untyped], block: T.untyped).returns(T.untyped) }
      def method_missing(name, *args, &block); end
      sig { returns(T.untyped) }
      def raise_mixed; end
      sig { params(doc: Document).returns(T.untyped) }
      def raise_unsaved(doc); end
      sig { params(callback: Symbol, doc: T.untyped).returns(T.untyped) }
      def execute_callback(callback, doc); end
      sig { params(criteria: Criteria, association: Association).returns(Criteria) }
      def self.apply_ordering(criteria, association); end
      sig { returns(T::Array[Object]) }
      def marshal_dump; end
      sig { params(data: T::Array[Object]).returns(T::Array[Object]) }
      def marshal_load(data); end
      sig { returns(Object) }
      def _assigning; end
      sig { returns(T::Boolean) }
      def _assigning?; end
      sig { returns(Object) }
      def _binding; end
      sig { returns(T::Boolean) }
      def _binding?; end
      sig { returns(Object) }
      def _building; end
      sig { returns(T::Boolean) }
      def _building?; end
      sig { returns(T::Boolean) }
      def _creating?; end
      sig { returns(Object) }
      def _loading; end
      sig { returns(T::Boolean) }
      def _loading?; end
      sig { returns(T.untyped) }
      attr_accessor :_base
      sig { returns(T.untyped) }
      attr_accessor :_association
      sig { returns(T.untyped) }
      attr_accessor :_target
    end
    module Macros
      extend ActiveSupport::Concern
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def associations; end
      module ClassMethods
        sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(T.untyped) }
        def embedded_in(name, options = {}, &block); end
        sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(T.untyped) }
        def embeds_many(name, options = {}, &block); end
        sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(T.untyped) }
        def embeds_one(name, options = {}, &block); end
        sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(T.untyped) }
        def belongs_to(name, options = {}, &block); end
        sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(T.untyped) }
        def has_many(name, options = {}, &block); end
        sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(T.untyped) }
        def has_and_belongs_to_many(name, options = {}, &block); end
        sig { params(name: Symbol, options: T::Hash[T.untyped, T.untyped], block: T.untyped).returns(T.untyped) }
        def has_one(name, options = {}, &block); end
        sig do
          params(
            macro_name: T.untyped,
            name: T.untyped,
            options: T.untyped,
            block: T.untyped
          ).returns(T.untyped)
        end
        def define_association!(macro_name, name, options = {}, &block); end
      end
    end
    module Nested
      DESTROY_FLAGS = T.let([1, "1", true, "true"].freeze, T.untyped)
      class One
        include Mongoid::Association::Nested::Buildable
        sig { params(parent: Document).returns(Document) }
        def build(parent); end
        sig { params(association: Association, attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).void }
        def initialize(association, attributes, options); end
        sig { returns(T::Boolean) }
        def acceptable_id?; end
        sig { returns(T::Boolean) }
        def delete?; end
        sig { returns(T::Boolean) }
        def destroyable?; end
        sig { returns(T::Boolean) }
        def replace?; end
        sig { returns(T::Boolean) }
        def update?; end
        sig { returns(T::Boolean) }
        def allow_destroy?; end
        sig { params(document: Document, attrs: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def reject?(document, attrs); end
        sig { returns(T::Boolean) }
        def update_only?; end
        sig { params(klass: Class, id: String).returns(T.any(BSON::ObjectId, String, Object)) }
        def convert_id(klass, id); end
        sig { returns(T.untyped) }
        attr_accessor :destroy
      end
      class Many
        include Mongoid::Association::Nested::Buildable
        sig { params(parent: Document, options: T::Hash[T.untyped, T.untyped]).returns(T::Array[T.untyped]) }
        def build(parent, options = {}); end
        sig { params(association: Association, attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).void }
        def initialize(association, attributes, options = {}); end
        sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def destroyable?(attributes); end
        sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def over_limit?(attributes); end
        sig { params(parent: Document, attrs: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def process_attributes(parent, attrs); end
        sig { params(parent: Document, relation: Proxy, doc: Document).returns(T.untyped) }
        def destroy(parent, relation, doc); end
        sig { params(relation: Proxy, doc: Document).returns(T.untyped) }
        def destroy_document(relation, doc); end
        sig { params(doc: Document, attrs: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def update_document(doc, attrs); end
        sig { params(parent: Document, id: T.any(String, BSON::ObjectId), attrs: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
        def update_nested_relation(parent, id, attrs); end
        sig { returns(T::Boolean) }
        def allow_destroy?; end
        sig { params(document: Document, attrs: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def reject?(document, attrs); end
        sig { returns(T::Boolean) }
        def update_only?; end
        sig { params(klass: Class, id: String).returns(T.any(BSON::ObjectId, String, Object)) }
        def convert_id(klass, id); end
      end
      module Buildable
        sig { returns(T::Boolean) }
        def allow_destroy?; end
        sig { params(document: Document, attrs: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
        def reject?(document, attrs); end
        sig { returns(T::Boolean) }
        def update_only?; end
        sig { params(klass: Class, id: String).returns(T.any(BSON::ObjectId, String, Object)) }
        def convert_id(klass, id); end
        sig { returns(T.untyped) }
        attr_accessor :attributes
        sig { returns(T.untyped) }
        attr_accessor :existing
        sig { returns(T.untyped) }
        attr_accessor :association
        sig { returns(T.untyped) }
        attr_accessor :options
      end
    end
    module Options
      sig { returns(T.any(String, Symbol)) }
      def as; end
      sig { returns(String) }
      def dependent; end
      sig { returns(Criteria::Queryable::Key) }
      def order; end
      sig { returns(T::Boolean) }
      def indexed?; end
      sig { returns(T::Boolean) }
      def autobuilding?; end
      sig { returns(T::Boolean) }
      def cyclic?; end
      sig { returns(String) }
      def inverse_of; end
      sig { returns(T.any(Symbol, String)) }
      def primary_key; end
      sig { returns(T::Boolean) }
      def autosave; end
      sig { returns(T::Boolean) }
      def counter_cached?; end
      sig { returns(T::Boolean) }
      def polymorphic?; end
      sig { returns(T::Boolean) }
      def cascading_callbacks?; end
      sig { returns(T.nilable(T.any())) }
      def store_as; end
      sig { returns(T::Boolean) }
      def forced_nil_inverse?; end
      sig { returns(T.nilable(T.any())) }
      def type; end
      sig { returns(T.nilable(T.any())) }
      def touch_field; end
      sig { returns(T::Boolean) }
      def touchable?; end
    end
    module Bindable
      include Mongoid::Threaded::Lifecycle
      sig { params(base: Document, target: T.any(Document, T::Array[Document]), association: Association).void }
      def initialize(base, target, association); end
      sig { returns(Object) }
      def binding; end
      sig { params(doc: Document).returns(T.untyped) }
      def check_inverse!(doc); end
      sig { params(keyed: Document, id: Object).returns(T.untyped) }
      def bind_foreign_key(keyed, id); end
      sig { params(typed: Document, name: String).returns(T.untyped) }
      def bind_polymorphic_type(typed, name); end
      sig { params(typed: Document, name: String).returns(T.untyped) }
      def bind_polymorphic_inverse_type(typed, name); end
      sig { params(doc: Document, inverse: Document).returns(T.untyped) }
      def bind_inverse(doc, inverse); end
      sig { params(doc: Document).returns(T.untyped) }
      def bind_from_relational_parent(doc); end
      sig { params(_base: T.untyped).returns(T.untyped) }
      def record_id(_base); end
      sig { returns(T::Boolean) }
      def set_base_association; end
      sig { params(doc: Document).returns(T.untyped) }
      def unbind_from_relational_parent(doc); end
      sig { returns(Object) }
      def _assigning; end
      sig { returns(T::Boolean) }
      def _assigning?; end
      sig { returns(Object) }
      def _binding; end
      sig { returns(T::Boolean) }
      def _binding?; end
      sig { returns(Object) }
      def _building; end
      sig { returns(T::Boolean) }
      def _building?; end
      sig { returns(T::Boolean) }
      def _creating?; end
      sig { returns(Object) }
      def _loading; end
      sig { returns(T::Boolean) }
      def _loading?; end
      sig { returns(T.untyped) }
      attr_reader :_base
      sig { returns(T.untyped) }
      attr_reader :_target
      sig { returns(T.untyped) }
      attr_reader :_association
    end
    module Builders
      extend ActiveSupport::Concern
      sig { params(args: T::Array[T.untyped]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def parse_args(*args); end
      sig { params(association: Association).returns(Class) }
      def self.define_builder!(association); end
      sig { params(association: Association).returns(Class) }
      def self.define_creator!(association); end
    end
    module Accessors
      extend ActiveSupport::Concern
      sig do
        params(
          name: T.any(String, Symbol),
          object: T.any(T::Hash[T.untyped, T.untyped], BSON::ObjectId),
          association: Association,
          selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
        ).returns(Proxy)
      end
      def __build__(name, object, association, selected_fields = nil); end
      sig { params(object: T.any(Document, T::Array[Document]), association: Association, selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Proxy) }
      def create_relation(object, association, selected_fields = nil); end
      sig { params(name: Symbol).returns(T.untyped) }
      def reset_relation_criteria(name); end
      sig { params(name: T.any(String, Symbol), relation: Proxy).returns(Proxy) }
      def set_relation(name, relation); end
      sig do
        params(
          name: Symbol,
          association: Association,
          object: Object,
          reload: T::Boolean
        ).returns(Proxy)
      end
      def get_relation(name, association, object, reload = false); end
      sig { params(assoc_key: String).returns(T.nilable(T::Hash[T.untyped, T.untyped])) }
      def _mongoid_filter_selected_fields(assoc_key); end
      sig { params(object: T.untyped, association: T.untyped).returns(T::Boolean) }
      def needs_no_database_query?(object, association); end
      sig { returns(T::Boolean) }
      def without_autobuild?; end
      sig { returns(Object) }
      def without_autobuild; end
      sig { params(args: T::Array[T.untyped]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def parse_args(*args); end
      sig { params(association: Association).returns(Class) }
      def self.define_existence_check!(association); end
      sig { params(association: Association).returns(Class) }
      def self.define_getter!(association); end
      sig { params(association: Association).returns(Class) }
      def self.define_ids_getter!(association); end
      sig { params(association: Association).returns(Class) }
      def self.define_setter!(association); end
      sig { params(association: T.untyped).returns(T.untyped) }
      def self.define_ids_setter!(association); end
      sig { params(association: Association).returns(Class) }
      def self.define_builder!(association); end
      sig { params(association: Association).returns(Class) }
      def self.define_creator!(association); end
    end
    module Depending
      extend ActiveSupport::Concern
      STRATEGIES = T.let([
    :delete_all,
    :destroy,
    :nullify,
    :restrict_with_exception,
    :restrict_with_error
], T.untyped)
      sig { params(association: Association).returns(Class) }
      def self.define_dependency!(association); end
      sig { params(association: T.untyped).returns(T.untyped) }
      def self.validate!(association); end
      sig { returns(T.untyped) }
      def apply_delete_dependencies!; end
      sig { params(association: T.untyped).returns(T.untyped) }
      def _dependent_delete_all!(association); end
      sig { params(association: T.untyped).returns(T.untyped) }
      def _dependent_destroy!(association); end
      sig { params(association: T.untyped).returns(T.untyped) }
      def _dependent_nullify!(association); end
      sig { params(association: T.untyped).returns(T.untyped) }
      def _dependent_restrict_with_exception!(association); end
      sig { params(association: T.untyped).returns(T.untyped) }
      def _dependent_restrict_with_error!(association); end
    end
    module Relatable
      include Mongoid::Association::Constrainable
      include Mongoid::Association::Options
      SHARED_OPTIONS = T.let([
  :class_name,
  :inverse_of,
  :validate,
  :extend
].freeze, T.untyped)
      PRIMARY_KEY_DEFAULT = T.let('_id'.freeze, T.untyped)
      sig do
        params(
          _class: Class,
          name: Symbol,
          opts: T::Hash[T.untyped, T.untyped],
          block: T.untyped
        ).void
      end
      def initialize(_class, name, opts = {}, &block); end
      sig { params(other: T.untyped).returns(Object) }
      def ==(other); end
      sig { params(callback_type: Symbol).returns(T::Array[T.any(Proc, Symbol)]) }
      def get_callbacks(callback_type); end
      sig { returns(String) }
      def type_setter; end
      sig { params(doc: Document).returns(T::Boolean) }
      def bindable?(doc); end
      sig { params(other: T.nilable(Object)).returns(T::Array[Symbol]) }
      def inverses(other = nil); end
      sig { params(other: T.nilable(Object)).returns(Association) }
      def inverse_association(other = nil); end
      sig { returns(T.nilable(T.any())) }
      def inverse_type; end
      sig { returns(String) }
      def relation_class_name; end
      sig { returns(String) }
      def relation_class; end
      sig { returns(String) }
      def inverse_class_name; end
      sig { returns(String) }
      def inverse_class; end
      sig { returns(T.any(Symbol, String)) }
      def key; end
      sig { returns(String) }
      def setter; end
      sig { params(other: T.untyped).returns(String) }
      def inverse_setter(other = nil); end
      sig { returns(String) }
      def foreign_key_setter; end
      sig { params(document: T.untyped).returns(Mongoid::Atomic::Paths::Root) }
      def path(document); end
      sig { returns(String) }
      def inverse_type_setter; end
      sig { returns(String) }
      def foreign_key_check; end
      sig { params(owner: Document, target: T.any(Document, T::Array[Document])).returns(Proxy) }
      def create_relation(owner, target); end
      sig { returns(T::Boolean) }
      def destructive?; end
      sig { returns(String) }
      def counter_cache_column_name; end
      sig { returns(Module) }
      def extension; end
      sig { params(other: T.untyped).returns(Symbol) }
      def inverse(other = nil); end
      sig { returns(T::Boolean) }
      def validate?; end
      sig { returns(T.untyped) }
      def inverse_association_classes; end
      sig { returns(T.untyped) }
      def setup_index!; end
      sig { returns(T.untyped) }
      def define_touchable!; end
      sig { returns(T.untyped) }
      def define_autosaver!; end
      sig { returns(T.untyped) }
      def define_builder!; end
      sig { returns(T.untyped) }
      def define_creator!; end
      sig { returns(T.untyped) }
      def define_getter!; end
      sig { returns(T.untyped) }
      def define_setter!; end
      sig { returns(T.untyped) }
      def define_existence_check!; end
      sig { returns(T.untyped) }
      def define_ids_getter!; end
      sig { returns(T.untyped) }
      def define_ids_setter!; end
      sig { returns(T.untyped) }
      def define_counter_cache_callbacks!; end
      sig { returns(T.untyped) }
      def define_dependency!; end
      sig { returns(T.untyped) }
      def validate!; end
      sig { returns(T.untyped) }
      def polymorph!; end
      sig { params(block: T.untyped).returns(T.untyped) }
      def create_extension!(&block); end
      sig { returns(T.untyped) }
      def default_inverse; end
      sig { params(mod: T.untyped).returns(T.untyped) }
      def namespace_hierarchy(mod); end
      sig { params(mod: T.untyped, name: T.untyped).returns(T.untyped) }
      def resolve_name(mod, name); end
      sig { returns(T.any(String, Symbol)) }
      def as; end
      sig { returns(String) }
      def dependent; end
      sig { returns(Criteria::Queryable::Key) }
      def order; end
      sig { returns(T::Boolean) }
      def indexed?; end
      sig { returns(T::Boolean) }
      def autobuilding?; end
      sig { returns(T::Boolean) }
      def cyclic?; end
      sig { returns(String) }
      def inverse_of; end
      sig { returns(T.any(Symbol, String)) }
      def primary_key; end
      sig { returns(T::Boolean) }
      def autosave; end
      sig { returns(T::Boolean) }
      def counter_cached?; end
      sig { returns(T::Boolean) }
      def polymorphic?; end
      sig { returns(T::Boolean) }
      def cascading_callbacks?; end
      sig { returns(T.nilable(T.any())) }
      def store_as; end
      sig { returns(T::Boolean) }
      def forced_nil_inverse?; end
      sig { returns(T.nilable(T.any())) }
      def type; end
      sig { returns(T.nilable(T.any())) }
      def touch_field; end
      sig { returns(T::Boolean) }
      def touchable?; end
      sig { params(object: Object).returns(Object) }
      def convert_to_foreign_key(object); end
      sig { params(object: T.untyped).returns(T.untyped) }
      def convert_polymorphic(object); end
      sig { returns(Symbol) }
      attr_reader :name
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      attr_reader :options
    end
    module Marshalable
      sig { returns(T::Array[Object]) }
      def marshal_dump; end
      sig { params(data: T::Array[Object]).returns(T::Array[Object]) }
      def marshal_load(data); end
    end
    module Reflections
      extend ActiveSupport::Concern
      sig { params(name: T.any(String, Symbol)).returns(Association) }
      def reflect_on_association(name); end
      sig { params(macros: Symbol).returns(T::Array[Association]) }
      def reflect_on_all_association(*macros); end
      module ClassMethods
        sig { params(name: T.any(String, Symbol)).returns(Association) }
        def reflect_on_association(name); end
        sig { params(macros: Symbol).returns(T::Array[Association]) }
        def reflect_on_all_associations(*macros); end
      end
    end
    module Constrainable
      sig { params(object: Object).returns(Object) }
      def convert_to_foreign_key(object); end
      sig { params(object: T.untyped).returns(T.untyped) }
      def convert_polymorphic(object); end
    end
    module EagerLoadable
      sig { returns(T::Boolean) }
      def eager_loadable?; end
      sig { params(docs: T.untyped).returns(T.untyped) }
      def eager_load(docs); end
      sig { params(relations: T.untyped, docs: T.untyped).returns(T.untyped) }
      def preload(relations, docs); end
    end
    module Embedded
      module Cyclic
        extend ActiveSupport::Concern
        module ClassMethods
          sig { params(options: T.untyped).returns(T.untyped) }
          def recursively_embeds_many(options = {}); end
          sig { params(options: T.untyped).returns(T.untyped) }
          def recursively_embeds_one(options = {}); end
          sig { returns(String) }
          def cyclic_parent_name; end
          sig { params(many: T::Boolean).returns(String) }
          def cyclic_child_name(many = true); end
        end
      end
      module Batchable
        include Mongoid::Positional
        sig { params(docs: T::Array[Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
        def batch_insert(docs); end
        sig { params(docs: T::Array[Document]).returns(T::Array[T.untyped]) }
        def batch_clear(docs); end
        sig { params(docs: T::Array[Document], method: Symbol).returns(T.untyped) }
        def batch_remove(docs, method = :delete); end
        sig { params(docs: T::Array[Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
        def batch_replace(docs); end
        sig { params(sets: T::Array[T::Hash[T.untyped, T.untyped]]).returns(T.untyped) }
        def add_atomic_sets(sets); end
        sig { params(docs: T::Array[Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
        def execute_batch_set(docs); end
        sig { params(docs: T::Array[Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
        def execute_batch_push(docs); end
        sig { returns(T::Boolean) }
        def insertable?; end
        sig { returns(T::Boolean) }
        def inserts_valid; end
        sig { params(value: T::Boolean).returns(T::Boolean) }
        def inserts_valid=(value); end
        sig { params(docs: T::Array[T.any(T::Hash[T.untyped, T.untyped], Document)]).returns(T::Array[Document]) }
        def normalize_docs(docs); end
        sig { returns(String) }
        def path; end
        sig { params(value: String).returns(String) }
        def path=(value); end
        sig { returns(T::Hash[T.untyped, T.untyped]) }
        def selector; end
        sig { params(docs: T::Array[Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
        def pre_process_batch_insert(docs); end
        sig { params(docs: T::Array[Document], method: Symbol).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
        def pre_process_batch_remove(docs, method); end
        sig { params(docs: T::Array[Document]).returns(T::Enumerable[T.untyped]) }
        def post_process_batch_insert(docs); end
        sig { params(docs: T::Array[Document], method: Symbol).returns(T::Array[Document]) }
        def post_process_batch_remove(docs, method); end
        sig { params(selector: T::Hash[T.untyped, T.untyped], operations: T::Hash[T.untyped, T.untyped], processed: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
        def positionally(selector, operations, processed = {}); end
        sig { params(keys: T.untyped, operations: T.untyped, processed: T.untyped).returns(T.untyped) }
        def process_operations(keys, operations, processed); end
        sig { params(keys: T.untyped, update: T.untyped, updates: T.untyped).returns(T.untyped) }
        def process_updates(keys, update, updates = {}); end
        sig { params(keys: T.untyped, position: T.untyped).returns(T.untyped) }
        def replace_index(keys, position); end
      end
      class EmbedsOne
        include Mongoid::Association::Relatable
        include Mongoid::Association::Embedded::EmbedsOne::Buildable
        ASSOCIATION_OPTIONS = T.let([
    :autobuild,
    :as,
    :cascade_callbacks,
    :cyclic,
    :store_as
], T.untyped)
        VALID_OPTIONS = T.let((ASSOCIATION_OPTIONS + SHARED_OPTIONS).freeze, T.untyped)
        SHARED_OPTIONS = T.let([
  :class_name,
  :inverse_of,
  :validate,
  :extend
].freeze, T.untyped)
        PRIMARY_KEY_DEFAULT = T.let('_id'.freeze, T.untyped)
        sig { returns(T.self_type) }
        def setup!; end
        sig { returns(String) }
        def store_as; end
        sig { returns(String) }
        def key; end
        sig { returns(T::Boolean) }
        def embedded?; end
        sig { returns(T::Boolean) }
        def validation_default; end
        sig { returns(T::Boolean) }
        def stores_foreign_key?; end
        sig { returns(T.nilable(T.any())) }
        def primary_key; end
        sig { returns(Association::Embedded::EmbedsMany::Proxy) }
        def relation; end
        sig { returns(T::Boolean) }
        def polymorphic?; end
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Association::Nested::One) }
        def nested_builder(attributes, options); end
        sig { returns(T.untyped) }
        def setup_instance_methods!; end
        sig { returns(T.untyped) }
        def relation_complements; end
        sig { params(other: T.untyped).returns(T.untyped) }
        def polymorphic_inverses(other = nil); end
        sig { params(other: T.untyped).returns(T.untyped) }
        def determine_inverses(other); end
        sig do
          params(
            base: Document,
            object: Document,
            _type: T.nilable(String),
            selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
          ).returns(Document)
        end
        def build(base, object, _type = nil, selected_fields = nil); end
        sig { returns(Object) }
        def _assigning; end
        sig { returns(T::Boolean) }
        def _assigning?; end
        sig { returns(Object) }
        def _binding; end
        sig { returns(T::Boolean) }
        def _binding?; end
        sig { returns(Object) }
        def _building; end
        sig { returns(T::Boolean) }
        def _building?; end
        sig { returns(T::Boolean) }
        def _creating?; end
        sig { returns(Object) }
        def _loading; end
        sig { returns(T::Boolean) }
        def _loading?; end
        sig do
          params(
            _class: Class,
            name: Symbol,
            opts: T::Hash[T.untyped, T.untyped],
            block: T.untyped
          ).void
        end
        def initialize(_class, name, opts = {}, &block); end
        sig { params(other: T.untyped).returns(Object) }
        def ==(other); end
        sig { params(callback_type: Symbol).returns(T::Array[T.any(Proc, Symbol)]) }
        def get_callbacks(callback_type); end
        sig { returns(String) }
        def type_setter; end
        sig { params(doc: Document).returns(T::Boolean) }
        def bindable?(doc); end
        sig { params(other: T.nilable(Object)).returns(T::Array[Symbol]) }
        def inverses(other = nil); end
        sig { params(other: T.nilable(Object)).returns(Association) }
        def inverse_association(other = nil); end
        sig { returns(T.nilable(T.any())) }
        def inverse_type; end
        sig { returns(String) }
        def relation_class_name; end
        sig { returns(String) }
        def relation_class; end
        sig { returns(String) }
        def inverse_class_name; end
        sig { returns(String) }
        def inverse_class; end
        sig { returns(String) }
        def setter; end
        sig { params(other: T.untyped).returns(String) }
        def inverse_setter(other = nil); end
        sig { returns(String) }
        def foreign_key_setter; end
        sig { params(document: T.untyped).returns(Mongoid::Atomic::Paths::Root) }
        def path(document); end
        sig { returns(String) }
        def inverse_type_setter; end
        sig { returns(String) }
        def foreign_key_check; end
        sig { params(owner: Document, target: T.any(Document, T::Array[Document])).returns(Proxy) }
        def create_relation(owner, target); end
        sig { returns(T::Boolean) }
        def destructive?; end
        sig { returns(String) }
        def counter_cache_column_name; end
        sig { returns(Module) }
        def extension; end
        sig { params(other: T.untyped).returns(Symbol) }
        def inverse(other = nil); end
        sig { returns(T::Boolean) }
        def validate?; end
        sig { returns(T.untyped) }
        def inverse_association_classes; end
        sig { returns(T.untyped) }
        def setup_index!; end
        sig { returns(T.untyped) }
        def define_touchable!; end
        sig { returns(T.untyped) }
        def define_autosaver!; end
        sig { returns(T.untyped) }
        def define_builder!; end
        sig { returns(T.untyped) }
        def define_creator!; end
        sig { returns(T.untyped) }
        def define_getter!; end
        sig { returns(T.untyped) }
        def define_setter!; end
        sig { returns(T.untyped) }
        def define_existence_check!; end
        sig { returns(T.untyped) }
        def define_ids_getter!; end
        sig { returns(T.untyped) }
        def define_ids_setter!; end
        sig { returns(T.untyped) }
        def define_counter_cache_callbacks!; end
        sig { returns(T.untyped) }
        def define_dependency!; end
        sig { returns(T.untyped) }
        def validate!; end
        sig { returns(T.untyped) }
        def polymorph!; end
        sig { params(block: T.untyped).returns(T.untyped) }
        def create_extension!(&block); end
        sig { returns(T.untyped) }
        def default_inverse; end
        sig { params(mod: T.untyped).returns(T.untyped) }
        def namespace_hierarchy(mod); end
        sig { params(mod: T.untyped, name: T.untyped).returns(T.untyped) }
        def resolve_name(mod, name); end
        sig { returns(T.any(String, Symbol)) }
        def as; end
        sig { returns(String) }
        def dependent; end
        sig { returns(Criteria::Queryable::Key) }
        def order; end
        sig { returns(T::Boolean) }
        def indexed?; end
        sig { returns(T::Boolean) }
        def autobuilding?; end
        sig { returns(T::Boolean) }
        def cyclic?; end
        sig { returns(String) }
        def inverse_of; end
        sig { returns(T::Boolean) }
        def autosave; end
        sig { returns(T::Boolean) }
        def counter_cached?; end
        sig { returns(T::Boolean) }
        def cascading_callbacks?; end
        sig { returns(T::Boolean) }
        def forced_nil_inverse?; end
        sig { returns(T.nilable(T.any())) }
        def touch_field; end
        sig { returns(T::Boolean) }
        def touchable?; end
        sig { params(object: Object).returns(Object) }
        def convert_to_foreign_key(object); end
        sig { params(object: T.untyped).returns(T.untyped) }
        def convert_polymorphic(object); end
        class Proxy < Mongoid::Association::One
          VALID_OPTIONS = T.let([
    :autobuild,
    :as,
    :cascade_callbacks,
    :cyclic,
    :store_as
].freeze, T.untyped)
          sig { params(base: Document, target: Document, association: Association).void }
          def initialize(base, target, association); end
          sig { params(replacement: Document).returns(T.nilable(Document)) }
          def substitute(replacement); end
          sig { returns(Binding) }
          def binding; end
          sig { returns(T::Boolean) }
          def persistable?; end
          sig { returns(T::Boolean) }
          def self.embedded?; end
          sig { params(document: Document).returns(Mongoid::Atomic::Paths::Embedded::One) }
          def self.path(document); end
        end
        class Binding
          include Mongoid::Association::Bindable
          sig { returns(T.untyped) }
          def bind_one; end
          sig { returns(T.untyped) }
          def unbind_one; end
          sig { params(base: Document, target: T.any(Document, T::Array[Document]), association: Association).void }
          def initialize(base, target, association); end
          sig { returns(Object) }
          def binding; end
          sig { params(doc: Document).returns(T.untyped) }
          def check_inverse!(doc); end
          sig { params(keyed: Document, id: Object).returns(T.untyped) }
          def bind_foreign_key(keyed, id); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_type(typed, name); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_inverse_type(typed, name); end
          sig { params(doc: Document, inverse: Document).returns(T.untyped) }
          def bind_inverse(doc, inverse); end
          sig { params(doc: Document).returns(T.untyped) }
          def bind_from_relational_parent(doc); end
          sig { params(_base: T.untyped).returns(T.untyped) }
          def record_id(_base); end
          sig { returns(T::Boolean) }
          def set_base_association; end
          sig { params(doc: Document).returns(T.untyped) }
          def unbind_from_relational_parent(doc); end
          sig { returns(Object) }
          def _assigning; end
          sig { returns(T::Boolean) }
          def _assigning?; end
          sig { returns(Object) }
          def _binding; end
          sig { returns(T::Boolean) }
          def _binding?; end
          sig { returns(Object) }
          def _building; end
          sig { returns(T::Boolean) }
          def _building?; end
          sig { returns(T::Boolean) }
          def _creating?; end
          sig { returns(Object) }
          def _loading; end
          sig { returns(T::Boolean) }
          def _loading?; end
        end
        module Buildable
          include Mongoid::Threaded::Lifecycle
          sig do
            params(
              base: Document,
              object: Document,
              _type: T.nilable(String),
              selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
            ).returns(Document)
          end
          def build(base, object, _type = nil, selected_fields = nil); end
          sig { returns(Object) }
          def _assigning; end
          sig { returns(T::Boolean) }
          def _assigning?; end
          sig { returns(Object) }
          def _binding; end
          sig { returns(T::Boolean) }
          def _binding?; end
          sig { returns(Object) }
          def _building; end
          sig { returns(T::Boolean) }
          def _building?; end
          sig { returns(T::Boolean) }
          def _creating?; end
          sig { returns(Object) }
          def _loading; end
          sig { returns(T::Boolean) }
          def _loading?; end
        end
      end
      class EmbeddedIn
        include Mongoid::Association::Relatable
        include Mongoid::Association::Embedded::EmbeddedIn::Buildable
        ASSOCIATION_OPTIONS = T.let([
    :autobuild,
    :cyclic,
    :polymorphic,
    :touch
].freeze, T.untyped)
        VALID_OPTIONS = T.let((ASSOCIATION_OPTIONS + SHARED_OPTIONS).freeze, T.untyped)
        SHARED_OPTIONS = T.let([
  :class_name,
  :inverse_of,
  :validate,
  :extend
].freeze, T.untyped)
        PRIMARY_KEY_DEFAULT = T.let('_id'.freeze, T.untyped)
        sig { returns(T.self_type) }
        def setup!; end
        sig { returns(T::Boolean) }
        def embedded?; end
        sig { returns(T.nilable(T.any())) }
        def primary_key; end
        sig { returns(T::Boolean) }
        def stores_foreign_key?; end
        sig { returns(T::Boolean) }
        def validation_default; end
        sig { returns(String) }
        def key; end
        sig { returns(Association::Embedded::EmbeddedIn::Proxy) }
        def relation; end
        sig { returns(T::Boolean) }
        def polymorphic?; end
        sig { params(attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Association::Nested::One) }
        def nested_builder(attributes, options); end
        sig { returns(T.untyped) }
        def setup_instance_methods!; end
        sig { returns(T.untyped) }
        def relation_complements; end
        sig { params(other: T.untyped).returns(T.untyped) }
        def polymorphic_inverses(other = nil); end
        sig { params(other: T.untyped).returns(T.untyped) }
        def determine_inverses(other); end
        sig do
          params(
            base: Object,
            object: Object,
            type: T.nilable(String),
            selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
          ).returns(Document)
        end
        def build(base, object, type = nil, selected_fields = nil); end
        sig { returns(Object) }
        def _assigning; end
        sig { returns(T::Boolean) }
        def _assigning?; end
        sig { returns(Object) }
        def _binding; end
        sig { returns(T::Boolean) }
        def _binding?; end
        sig { returns(Object) }
        def _building; end
        sig { returns(T::Boolean) }
        def _building?; end
        sig { returns(T::Boolean) }
        def _creating?; end
        sig { returns(Object) }
        def _loading; end
        sig { returns(T::Boolean) }
        def _loading?; end
        sig do
          params(
            _class: Class,
            name: Symbol,
            opts: T::Hash[T.untyped, T.untyped],
            block: T.untyped
          ).void
        end
        def initialize(_class, name, opts = {}, &block); end
        sig { params(other: T.untyped).returns(Object) }
        def ==(other); end
        sig { params(callback_type: Symbol).returns(T::Array[T.any(Proc, Symbol)]) }
        def get_callbacks(callback_type); end
        sig { returns(String) }
        def type_setter; end
        sig { params(doc: Document).returns(T::Boolean) }
        def bindable?(doc); end
        sig { params(other: T.nilable(Object)).returns(T::Array[Symbol]) }
        def inverses(other = nil); end
        sig { params(other: T.nilable(Object)).returns(Association) }
        def inverse_association(other = nil); end
        sig { returns(T.nilable(T.any())) }
        def inverse_type; end
        sig { returns(String) }
        def relation_class_name; end
        sig { returns(String) }
        def relation_class; end
        sig { returns(String) }
        def inverse_class_name; end
        sig { returns(String) }
        def inverse_class; end
        sig { returns(String) }
        def setter; end
        sig { params(other: T.untyped).returns(String) }
        def inverse_setter(other = nil); end
        sig { returns(String) }
        def foreign_key_setter; end
        sig { params(document: T.untyped).returns(Mongoid::Atomic::Paths::Root) }
        def path(document); end
        sig { returns(String) }
        def inverse_type_setter; end
        sig { returns(String) }
        def foreign_key_check; end
        sig { params(owner: Document, target: T.any(Document, T::Array[Document])).returns(Proxy) }
        def create_relation(owner, target); end
        sig { returns(T::Boolean) }
        def destructive?; end
        sig { returns(String) }
        def counter_cache_column_name; end
        sig { returns(Module) }
        def extension; end
        sig { params(other: T.untyped).returns(Symbol) }
        def inverse(other = nil); end
        sig { returns(T::Boolean) }
        def validate?; end
        sig { returns(T.untyped) }
        def inverse_association_classes; end
        sig { returns(T.untyped) }
        def setup_index!; end
        sig { returns(T.untyped) }
        def define_touchable!; end
        sig { returns(T.untyped) }
        def define_autosaver!; end
        sig { returns(T.untyped) }
        def define_builder!; end
        sig { returns(T.untyped) }
        def define_creator!; end
        sig { returns(T.untyped) }
        def define_getter!; end
        sig { returns(T.untyped) }
        def define_setter!; end
        sig { returns(T.untyped) }
        def define_existence_check!; end
        sig { returns(T.untyped) }
        def define_ids_getter!; end
        sig { returns(T.untyped) }
        def define_ids_setter!; end
        sig { returns(T.untyped) }
        def define_counter_cache_callbacks!; end
        sig { returns(T.untyped) }
        def define_dependency!; end
        sig { returns(T.untyped) }
        def validate!; end
        sig { returns(T.untyped) }
        def polymorph!; end
        sig { params(block: T.untyped).returns(T.untyped) }
        def create_extension!(&block); end
        sig { returns(T.untyped) }
        def default_inverse; end
        sig { params(mod: T.untyped).returns(T.untyped) }
        def namespace_hierarchy(mod); end
        sig { params(mod: T.untyped, name: T.untyped).returns(T.untyped) }
        def resolve_name(mod, name); end
        sig { returns(T.any(String, Symbol)) }
        def as; end
        sig { returns(String) }
        def dependent; end
        sig { returns(Criteria::Queryable::Key) }
        def order; end
        sig { returns(T::Boolean) }
        def indexed?; end
        sig { returns(T::Boolean) }
        def autobuilding?; end
        sig { returns(T::Boolean) }
        def cyclic?; end
        sig { returns(String) }
        def inverse_of; end
        sig { returns(T::Boolean) }
        def autosave; end
        sig { returns(T::Boolean) }
        def counter_cached?; end
        sig { returns(T::Boolean) }
        def cascading_callbacks?; end
        sig { returns(T.nilable(T.any())) }
        def store_as; end
        sig { returns(T::Boolean) }
        def forced_nil_inverse?; end
        sig { returns(T.nilable(T.any())) }
        def type; end
        sig { returns(T.nilable(T.any())) }
        def touch_field; end
        sig { returns(T::Boolean) }
        def touchable?; end
        sig { params(object: Object).returns(Object) }
        def convert_to_foreign_key(object); end
        sig { params(object: T.untyped).returns(T.untyped) }
        def convert_polymorphic(object); end
        class Proxy < Mongoid::Association::One
          sig { params(base: Document, target: Document, association: Association).void }
          def initialize(base, target, association); end
          sig { params(replacement: Document).returns(T.nilable(Document)) }
          def substitute(replacement); end
          sig { returns(Binding) }
          def binding; end
          sig { params(document: Document).returns(T.untyped) }
          def characterize_one(document); end
          sig { returns(T::Boolean) }
          def persistable?; end
          sig { returns(T::Boolean) }
          def self.embedded?; end
          sig { params(document: Document).returns(Mongoid::Atomic::Paths::Root) }
          def self.path(document); end
        end
        class Binding
          include Mongoid::Association::Bindable
          sig { returns(T.untyped) }
          def bind_one; end
          sig { returns(T.untyped) }
          def unbind_one; end
          sig { params(base: Document, target: T.any(Document, T::Array[Document]), association: Association).void }
          def initialize(base, target, association); end
          sig { returns(Object) }
          def binding; end
          sig { params(doc: Document).returns(T.untyped) }
          def check_inverse!(doc); end
          sig { params(keyed: Document, id: Object).returns(T.untyped) }
          def bind_foreign_key(keyed, id); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_type(typed, name); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_inverse_type(typed, name); end
          sig { params(doc: Document, inverse: Document).returns(T.untyped) }
          def bind_inverse(doc, inverse); end
          sig { params(doc: Document).returns(T.untyped) }
          def bind_from_relational_parent(doc); end
          sig { params(_base: T.untyped).returns(T.untyped) }
          def record_id(_base); end
          sig { returns(T::Boolean) }
          def set_base_association; end
          sig { params(doc: Document).returns(T.untyped) }
          def unbind_from_relational_parent(doc); end
          sig { returns(Object) }
          def _assigning; end
          sig { returns(T::Boolean) }
          def _assigning?; end
          sig { returns(Object) }
          def _binding; end
          sig { returns(T::Boolean) }
          def _binding?; end
          sig { returns(Object) }
          def _building; end
          sig { returns(T::Boolean) }
          def _building?; end
          sig { returns(T::Boolean) }
          def _creating?; end
          sig { returns(Object) }
          def _loading; end
          sig { returns(T::Boolean) }
          def _loading?; end
        end
        module Buildable
          include Mongoid::Threaded::Lifecycle
          sig do
            params(
              base: Object,
              object: Object,
              type: T.nilable(String),
              selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
            ).returns(Document)
          end
          def build(base, object, type = nil, selected_fields = nil); end
          sig { returns(Object) }
          def _assigning; end
          sig { returns(T::Boolean) }
          def _assigning?; end
          sig { returns(Object) }
          def _binding; end
          sig { returns(T::Boolean) }
          def _binding?; end
          sig { returns(Object) }
          def _building; end
          sig { returns(T::Boolean) }
          def _building?; end
          sig { returns(T::Boolean) }
          def _creating?; end
          sig { returns(Object) }
          def _loading; end
          sig { returns(T::Boolean) }
          def _loading?; end
        end
      end
      class EmbedsMany
        include Mongoid::Association::Relatable
        include Mongoid::Association::Embedded::EmbedsMany::Buildable
        ASSOCIATION_OPTIONS = T.let([
    :as,
    :cascade_callbacks,
    :cyclic,
    :order,
    :store_as,
    :before_add,
    :after_add,
    :before_remove,
    :after_remove
], T.untyped)
        VALID_OPTIONS = T.let((ASSOCIATION_OPTIONS + SHARED_OPTIONS).freeze, T.untyped)
        SHARED_OPTIONS = T.let([
  :class_name,
  :inverse_of,
  :validate,
  :extend
].freeze, T.untyped)
        PRIMARY_KEY_DEFAULT = T.let('_id'.freeze, T.untyped)
        sig { returns(T.self_type) }
        def setup!; end
        sig { returns(String) }
        def store_as; end
        sig { returns(String) }
        def key; end
        sig { returns(T::Boolean) }
        def embedded?; end
        sig { returns(T::Boolean) }
        def validation_default; end
        sig { returns(T::Boolean) }
        def stores_foreign_key?; end
        sig { returns(T.nilable(T.any())) }
        def primary_key; end
        sig { returns(Association::Embedded::EmbedsMany::Proxy) }
        def relation; end
        sig { returns(T::Boolean) }
        def polymorphic?; end
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Association::Nested::Many) }
        def nested_builder(attributes, options); end
        sig { params(document: Document).returns(Mongoid::Atomic::Paths::Embedded::Many) }
        def path(document); end
        sig { params(base: Document, target: Document).returns(T.untyped) }
        def criteria(base, target); end
        sig { params(criteria: T.untyped).returns(T.untyped) }
        def apply_ordering(criteria); end
        sig { returns(T.untyped) }
        def setup_instance_methods!; end
        sig { returns(T.untyped) }
        def relation_complements; end
        sig { params(other: T.untyped).returns(T.untyped) }
        def polymorphic_inverses(other = nil); end
        sig { params(other: T.untyped).returns(T.untyped) }
        def determine_inverses(other); end
        sig do
          params(
            base: Object,
            object: Object,
            type: T.nilable(String),
            selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
          ).returns(T::Array[Document])
        end
        def build(base, object, type = nil, selected_fields = nil); end
        sig { returns(Object) }
        def _assigning; end
        sig { returns(T::Boolean) }
        def _assigning?; end
        sig { returns(Object) }
        def _binding; end
        sig { returns(T::Boolean) }
        def _binding?; end
        sig { returns(Object) }
        def _building; end
        sig { returns(T::Boolean) }
        def _building?; end
        sig { returns(T::Boolean) }
        def _creating?; end
        sig { returns(Object) }
        def _loading; end
        sig { returns(T::Boolean) }
        def _loading?; end
        sig do
          params(
            _class: Class,
            name: Symbol,
            opts: T::Hash[T.untyped, T.untyped],
            block: T.untyped
          ).void
        end
        def initialize(_class, name, opts = {}, &block); end
        sig { params(other: T.untyped).returns(Object) }
        def ==(other); end
        sig { params(callback_type: Symbol).returns(T::Array[T.any(Proc, Symbol)]) }
        def get_callbacks(callback_type); end
        sig { returns(String) }
        def type_setter; end
        sig { params(doc: Document).returns(T::Boolean) }
        def bindable?(doc); end
        sig { params(other: T.nilable(Object)).returns(T::Array[Symbol]) }
        def inverses(other = nil); end
        sig { params(other: T.nilable(Object)).returns(Association) }
        def inverse_association(other = nil); end
        sig { returns(T.nilable(T.any())) }
        def inverse_type; end
        sig { returns(String) }
        def relation_class_name; end
        sig { returns(String) }
        def relation_class; end
        sig { returns(String) }
        def inverse_class_name; end
        sig { returns(String) }
        def inverse_class; end
        sig { returns(String) }
        def setter; end
        sig { params(other: T.untyped).returns(String) }
        def inverse_setter(other = nil); end
        sig { returns(String) }
        def foreign_key_setter; end
        sig { returns(String) }
        def inverse_type_setter; end
        sig { returns(String) }
        def foreign_key_check; end
        sig { params(owner: Document, target: T.any(Document, T::Array[Document])).returns(Proxy) }
        def create_relation(owner, target); end
        sig { returns(T::Boolean) }
        def destructive?; end
        sig { returns(String) }
        def counter_cache_column_name; end
        sig { returns(Module) }
        def extension; end
        sig { params(other: T.untyped).returns(Symbol) }
        def inverse(other = nil); end
        sig { returns(T::Boolean) }
        def validate?; end
        sig { returns(T.untyped) }
        def inverse_association_classes; end
        sig { returns(T.untyped) }
        def setup_index!; end
        sig { returns(T.untyped) }
        def define_touchable!; end
        sig { returns(T.untyped) }
        def define_autosaver!; end
        sig { returns(T.untyped) }
        def define_builder!; end
        sig { returns(T.untyped) }
        def define_creator!; end
        sig { returns(T.untyped) }
        def define_getter!; end
        sig { returns(T.untyped) }
        def define_setter!; end
        sig { returns(T.untyped) }
        def define_existence_check!; end
        sig { returns(T.untyped) }
        def define_ids_getter!; end
        sig { returns(T.untyped) }
        def define_ids_setter!; end
        sig { returns(T.untyped) }
        def define_counter_cache_callbacks!; end
        sig { returns(T.untyped) }
        def define_dependency!; end
        sig { returns(T.untyped) }
        def validate!; end
        sig { returns(T.untyped) }
        def polymorph!; end
        sig { params(block: T.untyped).returns(T.untyped) }
        def create_extension!(&block); end
        sig { returns(T.untyped) }
        def default_inverse; end
        sig { params(mod: T.untyped).returns(T.untyped) }
        def namespace_hierarchy(mod); end
        sig { params(mod: T.untyped, name: T.untyped).returns(T.untyped) }
        def resolve_name(mod, name); end
        sig { returns(T.any(String, Symbol)) }
        def as; end
        sig { returns(String) }
        def dependent; end
        sig { returns(Criteria::Queryable::Key) }
        def order; end
        sig { returns(T::Boolean) }
        def indexed?; end
        sig { returns(T::Boolean) }
        def autobuilding?; end
        sig { returns(T::Boolean) }
        def cyclic?; end
        sig { returns(String) }
        def inverse_of; end
        sig { returns(T::Boolean) }
        def autosave; end
        sig { returns(T::Boolean) }
        def counter_cached?; end
        sig { returns(T::Boolean) }
        def cascading_callbacks?; end
        sig { returns(T::Boolean) }
        def forced_nil_inverse?; end
        sig { returns(T.nilable(T.any())) }
        def touch_field; end
        sig { returns(T::Boolean) }
        def touchable?; end
        sig { params(object: Object).returns(Object) }
        def convert_to_foreign_key(object); end
        sig { params(object: T.untyped).returns(T.untyped) }
        def convert_polymorphic(object); end
        class Proxy < Mongoid::Association::Many
          include Mongoid::Association::Embedded::Batchable
          sig { params(args: T.any(Document, T::Array[Document])).returns(T.untyped) }
          def <<(*args); end
          sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
          def as_document; end
          sig { params(docs: T::Array[Document]).returns(T::Array[Document]) }
          def concat(docs); end
          sig { params(attributes: T::Hash[T.untyped, T.untyped], type: T.nilable(Class)).returns(Document) }
          def build(attributes = {}, type = nil); end
          sig { returns(T.self_type) }
          def clear; end
          sig { returns(Integer) }
          def count; end
          sig { params(document: Document).returns(T.nilable(Document)) }
          def delete(document); end
          sig { params(conditions: T::Hash[T.untyped, T.untyped]).returns(Integer) }
          def delete_all(conditions = {}); end
          sig { returns(T.any(Many, T::Enumerator[T.untyped])) }
          def delete_if; end
          sig { params(conditions: T::Hash[T.untyped, T.untyped]).returns(Integer) }
          def destroy_all(conditions = {}); end
          sig { returns(T::Boolean) }
          def exists?; end
          sig { params(args: Object).returns(T.any(T::Array[Document], Document)) }
          def find(*args); end
          sig { params(base: Document, target: T::Array[Document], association: Association).void }
          def initialize(base, target, association); end
          sig { returns(T::Array[Document]) }
          def in_memory; end
          sig { params(count: T.nilable(Integer)).returns(T.any(Document, T::Array[Document])) }
          def pop(count = nil); end
          sig { params(count: T.nilable(Integer)).returns(T.any(Document, T::Array[Document])) }
          def shift(count = nil); end
          sig { params(docs: T::Array[Document]).returns(Many) }
          def substitute(docs); end
          sig { returns(Criteria) }
          def unscoped; end
          sig { params(document: T.untyped).returns(T::Boolean) }
          def object_already_related?(document); end
          sig { params(document: Document).returns(T.untyped) }
          def append(document); end
          sig { returns(Binding) }
          def binding; end
          sig { returns(Criteria) }
          def criteria; end
          sig { params(document: Document).returns(T.untyped) }
          def delete_one(document); end
          sig { params(document: Document).returns(T.untyped) }
          def integrate(document); end
          sig { params(name: T.any(Symbol, String), args: T::Array[T.untyped], block: T.untyped).returns(T.any(Criteria, Object)) }
          def method_missing(name, *args, &block); end
          sig { returns(T::Boolean) }
          def persistable?; end
          sig { returns(T.untyped) }
          def reindex; end
          sig { params(docs: T::Array[Document]).returns(T::Array[Document]) }
          def scope(docs); end
          sig { params(conditions: T::Hash[T.untyped, T.untyped], method: T::Boolean).returns(Integer) }
          def remove_all(conditions = {}, method = :delete); end
          sig { returns(T::Array[Document]) }
          def _unscoped; end
          sig { params(docs: T::Array[Document]).returns(T::Array[Document]) }
          def _unscoped=(docs); end
          sig { returns(T.untyped) }
          def as_attributes; end
          sig { returns(T::Boolean) }
          def self.embedded?; end
          sig { returns(T.nilable(T.any())) }
          def self.foreign_key_suffix; end
          sig { params(docs: T::Array[Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
          def batch_insert(docs); end
          sig { params(docs: T::Array[Document]).returns(T::Array[T.untyped]) }
          def batch_clear(docs); end
          sig { params(docs: T::Array[Document], method: Symbol).returns(T.untyped) }
          def batch_remove(docs, method = :delete); end
          sig { params(docs: T::Array[Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
          def batch_replace(docs); end
          sig { params(sets: T::Array[T::Hash[T.untyped, T.untyped]]).returns(T.untyped) }
          def add_atomic_sets(sets); end
          sig { params(docs: T::Array[Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
          def execute_batch_set(docs); end
          sig { params(docs: T::Array[Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
          def execute_batch_push(docs); end
          sig { returns(T::Boolean) }
          def insertable?; end
          sig { returns(T::Boolean) }
          def inserts_valid; end
          sig { params(value: T::Boolean).returns(T::Boolean) }
          def inserts_valid=(value); end
          sig { params(docs: T::Array[T.any(T::Hash[T.untyped, T.untyped], Document)]).returns(T::Array[Document]) }
          def normalize_docs(docs); end
          sig { returns(String) }
          def path; end
          sig { params(value: String).returns(String) }
          def path=(value); end
          sig { returns(T::Hash[T.untyped, T.untyped]) }
          def selector; end
          sig { params(docs: T::Array[Document]).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
          def pre_process_batch_insert(docs); end
          sig { params(docs: T::Array[Document], method: Symbol).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
          def pre_process_batch_remove(docs, method); end
          sig { params(docs: T::Array[Document]).returns(T::Enumerable[T.untyped]) }
          def post_process_batch_insert(docs); end
          sig { params(docs: T::Array[Document], method: Symbol).returns(T::Array[Document]) }
          def post_process_batch_remove(docs, method); end
          sig { params(selector: T::Hash[T.untyped, T.untyped], operations: T::Hash[T.untyped, T.untyped], processed: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
          def positionally(selector, operations, processed = {}); end
          sig { params(keys: T.untyped, operations: T.untyped, processed: T.untyped).returns(T.untyped) }
          def process_operations(keys, operations, processed); end
          sig { params(keys: T.untyped, update: T.untyped, updates: T.untyped).returns(T.untyped) }
          def process_updates(keys, update, updates = {}); end
          sig { params(keys: T.untyped, position: T.untyped).returns(T.untyped) }
          def replace_index(keys, position); end
        end
        class Binding
          include Mongoid::Association::Bindable
          sig { params(doc: Document).returns(T.untyped) }
          def bind_one(doc); end
          sig { params(doc: Document).returns(T.untyped) }
          def unbind_one(doc); end
          sig { params(base: Document, target: T.any(Document, T::Array[Document]), association: Association).void }
          def initialize(base, target, association); end
          sig { returns(Object) }
          def binding; end
          sig { params(doc: Document).returns(T.untyped) }
          def check_inverse!(doc); end
          sig { params(keyed: Document, id: Object).returns(T.untyped) }
          def bind_foreign_key(keyed, id); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_type(typed, name); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_inverse_type(typed, name); end
          sig { params(doc: Document, inverse: Document).returns(T.untyped) }
          def bind_inverse(doc, inverse); end
          sig { params(doc: Document).returns(T.untyped) }
          def bind_from_relational_parent(doc); end
          sig { params(_base: T.untyped).returns(T.untyped) }
          def record_id(_base); end
          sig { returns(T::Boolean) }
          def set_base_association; end
          sig { params(doc: Document).returns(T.untyped) }
          def unbind_from_relational_parent(doc); end
          sig { returns(Object) }
          def _assigning; end
          sig { returns(T::Boolean) }
          def _assigning?; end
          sig { returns(Object) }
          def _binding; end
          sig { returns(T::Boolean) }
          def _binding?; end
          sig { returns(Object) }
          def _building; end
          sig { returns(T::Boolean) }
          def _building?; end
          sig { returns(T::Boolean) }
          def _creating?; end
          sig { returns(Object) }
          def _loading; end
          sig { returns(T::Boolean) }
          def _loading?; end
        end
        module Buildable
          include Mongoid::Threaded::Lifecycle
          sig do
            params(
              base: Object,
              object: Object,
              type: T.nilable(String),
              selected_fields: T.nilable(T::Hash[T.untyped, T.untyped])
            ).returns(T::Array[Document])
          end
          def build(base, object, type = nil, selected_fields = nil); end
          sig { returns(Object) }
          def _assigning; end
          sig { returns(T::Boolean) }
          def _assigning?; end
          sig { returns(Object) }
          def _binding; end
          sig { returns(T::Boolean) }
          def _binding?; end
          sig { returns(Object) }
          def _building; end
          sig { returns(T::Boolean) }
          def _building?; end
          sig { returns(T::Boolean) }
          def _creating?; end
          sig { returns(Object) }
          def _loading; end
          sig { returns(T::Boolean) }
          def _loading?; end
        end
      end
    end
    module Referenced
      module Eager
        class Base
          sig { params(associations: T::Array[Association], docs: T::Array[Document]).void }
          def initialize(associations, docs); end
          sig { returns(T::Array[T.untyped]) }
          def run; end
          sig { returns(T.untyped) }
          def preload; end
          sig { params(block: T.untyped).returns(T.untyped) }
          def each_loaded_document(&block); end
          sig { params(cls: T.untyped, keys: T.untyped).returns(T.untyped) }
          def each_loaded_document_of_class(cls, keys); end
          sig { params(id: BSON::ObjectId, element: T.any(Document, T::Array[T.untyped])).returns(T.untyped) }
          def set_on_parent(id, element); end
          sig { returns(T::Hash[T.untyped, T.untyped]) }
          def grouped_docs; end
          sig { returns(T::Array[T.untyped]) }
          def keys_from_docs; end
          sig { returns(Symbol) }
          def group_by_key; end
          sig { params(doc: Document, element: T.any(Document, T::Array[T.untyped])).returns(T.untyped) }
          def set_relation(doc, element); end
          sig { returns(Association) }
          def shift_association; end
        end
      end
      class HasOne
        include Mongoid::Association::Relatable
        include Mongoid::Association::Referenced::HasOne::Buildable
        ASSOCIATION_OPTIONS = T.let([
    :as,
    :autobuild,
    :autosave,
    :dependent,
    :foreign_key,
    :primary_key
].freeze, T.untyped)
        VALID_OPTIONS = T.let((ASSOCIATION_OPTIONS + SHARED_OPTIONS).freeze, T.untyped)
        FOREIGN_KEY_SUFFIX = T.let('_id'.freeze, T.untyped)
        SHARED_OPTIONS = T.let([
  :class_name,
  :inverse_of,
  :validate,
  :extend
].freeze, T.untyped)
        PRIMARY_KEY_DEFAULT = T.let('_id'.freeze, T.untyped)
        sig { returns(T::Array[Association]) }
        def relation_complements; end
        sig { returns(T.self_type) }
        def setup!; end
        sig { returns(String) }
        def foreign_key; end
        sig { returns(T::Boolean) }
        def embedded?; end
        sig { returns(T::Boolean) }
        def validation_default; end
        sig { returns(Mongoid::Association::Referenced::HasOne::Proxy) }
        def relation; end
        sig { params(attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Association::Nested::Many) }
        def nested_builder(attributes, options); end
        sig { returns(T::Boolean) }
        def polymorphic?; end
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(doc: Document).returns(T::Boolean) }
        def bindable?(doc); end
        sig { returns(T::Boolean) }
        def stores_foreign_key?; end
        sig { params(document: Document).returns(Mongoid::Atomic::Paths::Root) }
        def path(document); end
        sig { returns(T.self_type) }
        def setup_instance_methods!; end
        sig { returns(T.untyped) }
        def default_foreign_key_field; end
        sig { params(other: T.untyped).returns(T.untyped) }
        def polymorphic_inverses(other); end
        sig { params(other: T.untyped).returns(T.untyped) }
        def determine_inverses(other); end
        sig { returns(T.untyped) }
        def default_primary_key; end
        sig do
          params(
            base: Object,
            object: Object,
            type: T.nilable(String),
            selected_fields: T.nilable(T.any())
          ).returns(Document)
        end
        def build(base, object, type = nil, selected_fields = nil); end
        sig { params(object: T.untyped).returns(T.untyped) }
        def clear_associated(object); end
        sig { params(object: T.untyped, base: T.untyped).returns(T.untyped) }
        def query_criteria(object, base); end
        sig { params(object: T.untyped, base: T.untyped).returns(T.untyped) }
        def execute_query(object, base); end
        sig { params(criteria: T.untyped, base: T.untyped).returns(T.untyped) }
        def with_polymorphic_criterion(criteria, base); end
        sig { params(object: T.untyped).returns(T::Boolean) }
        def query?(object); end
        sig do
          params(
            _class: Class,
            name: Symbol,
            opts: T::Hash[T.untyped, T.untyped],
            block: T.untyped
          ).void
        end
        def initialize(_class, name, opts = {}, &block); end
        sig { params(other: T.untyped).returns(Object) }
        def ==(other); end
        sig { params(callback_type: Symbol).returns(T::Array[T.any(Proc, Symbol)]) }
        def get_callbacks(callback_type); end
        sig { returns(String) }
        def type_setter; end
        sig { params(other: T.nilable(Object)).returns(T::Array[Symbol]) }
        def inverses(other = nil); end
        sig { params(other: T.nilable(Object)).returns(Association) }
        def inverse_association(other = nil); end
        sig { returns(T.nilable(T.any())) }
        def inverse_type; end
        sig { returns(String) }
        def relation_class_name; end
        sig { returns(String) }
        def relation_class; end
        sig { returns(String) }
        def inverse_class_name; end
        sig { returns(String) }
        def inverse_class; end
        sig { returns(T.any(Symbol, String)) }
        def key; end
        sig { returns(String) }
        def setter; end
        sig { params(other: T.untyped).returns(String) }
        def inverse_setter(other = nil); end
        sig { returns(String) }
        def foreign_key_setter; end
        sig { returns(String) }
        def inverse_type_setter; end
        sig { returns(String) }
        def foreign_key_check; end
        sig { params(owner: Document, target: T.any(Document, T::Array[Document])).returns(Proxy) }
        def create_relation(owner, target); end
        sig { returns(T::Boolean) }
        def destructive?; end
        sig { returns(String) }
        def counter_cache_column_name; end
        sig { returns(Module) }
        def extension; end
        sig { params(other: T.untyped).returns(Symbol) }
        def inverse(other = nil); end
        sig { returns(T::Boolean) }
        def validate?; end
        sig { returns(T.untyped) }
        def inverse_association_classes; end
        sig { returns(T.untyped) }
        def setup_index!; end
        sig { returns(T.untyped) }
        def define_touchable!; end
        sig { returns(T.untyped) }
        def define_autosaver!; end
        sig { returns(T.untyped) }
        def define_builder!; end
        sig { returns(T.untyped) }
        def define_creator!; end
        sig { returns(T.untyped) }
        def define_getter!; end
        sig { returns(T.untyped) }
        def define_setter!; end
        sig { returns(T.untyped) }
        def define_existence_check!; end
        sig { returns(T.untyped) }
        def define_ids_getter!; end
        sig { returns(T.untyped) }
        def define_ids_setter!; end
        sig { returns(T.untyped) }
        def define_counter_cache_callbacks!; end
        sig { returns(T.untyped) }
        def define_dependency!; end
        sig { returns(T.untyped) }
        def validate!; end
        sig { returns(T.untyped) }
        def polymorph!; end
        sig { params(block: T.untyped).returns(T.untyped) }
        def create_extension!(&block); end
        sig { returns(T.untyped) }
        def default_inverse; end
        sig { params(mod: T.untyped).returns(T.untyped) }
        def namespace_hierarchy(mod); end
        sig { params(mod: T.untyped, name: T.untyped).returns(T.untyped) }
        def resolve_name(mod, name); end
        sig { returns(T.any(String, Symbol)) }
        def as; end
        sig { returns(String) }
        def dependent; end
        sig { returns(Criteria::Queryable::Key) }
        def order; end
        sig { returns(T::Boolean) }
        def indexed?; end
        sig { returns(T::Boolean) }
        def autobuilding?; end
        sig { returns(T::Boolean) }
        def cyclic?; end
        sig { returns(String) }
        def inverse_of; end
        sig { returns(T.any(Symbol, String)) }
        def primary_key; end
        sig { returns(T::Boolean) }
        def autosave; end
        sig { returns(T::Boolean) }
        def counter_cached?; end
        sig { returns(T::Boolean) }
        def cascading_callbacks?; end
        sig { returns(T.nilable(T.any())) }
        def store_as; end
        sig { returns(T::Boolean) }
        def forced_nil_inverse?; end
        sig { returns(T.nilable(T.any())) }
        def touch_field; end
        sig { returns(T::Boolean) }
        def touchable?; end
        sig { params(object: Object).returns(Object) }
        def convert_to_foreign_key(object); end
        sig { params(object: T.untyped).returns(T.untyped) }
        def convert_polymorphic(object); end
        class Eager < Mongoid::Association::Referenced::Eager::Base
          sig { returns(T.untyped) }
          def preload; end
          sig { returns(T.untyped) }
          def group_by_key; end
          sig { returns(T.untyped) }
          def key; end
        end
        class Proxy < Mongoid::Association::One
          sig { params(base: Document, target: Document, association: Association).void }
          def initialize(base, target, association); end
          sig { returns(T.untyped) }
          def nullify; end
          sig { params(replacement: T::Array[Document]).returns(One) }
          def substitute(replacement); end
          sig { returns(Binding) }
          def binding; end
          sig { returns(T::Boolean) }
          def persistable?; end
          sig { params(association: T.untyped, docs: T.untyped).returns(T.untyped) }
          def self.eager_loader(association, docs); end
          sig { returns(T::Boolean) }
          def self.embedded?; end
        end
        class Binding
          include Mongoid::Association::Bindable
          sig { returns(T.untyped) }
          def bind_one; end
          sig { returns(T.untyped) }
          def unbind_one; end
          sig { params(base: Document, target: T.any(Document, T::Array[Document]), association: Association).void }
          def initialize(base, target, association); end
          sig { returns(Object) }
          def binding; end
          sig { params(doc: Document).returns(T.untyped) }
          def check_inverse!(doc); end
          sig { params(keyed: Document, id: Object).returns(T.untyped) }
          def bind_foreign_key(keyed, id); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_type(typed, name); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_inverse_type(typed, name); end
          sig { params(doc: Document, inverse: Document).returns(T.untyped) }
          def bind_inverse(doc, inverse); end
          sig { params(doc: Document).returns(T.untyped) }
          def bind_from_relational_parent(doc); end
          sig { params(_base: T.untyped).returns(T.untyped) }
          def record_id(_base); end
          sig { returns(T::Boolean) }
          def set_base_association; end
          sig { params(doc: Document).returns(T.untyped) }
          def unbind_from_relational_parent(doc); end
          sig { returns(Object) }
          def _assigning; end
          sig { returns(T::Boolean) }
          def _assigning?; end
          sig { returns(Object) }
          def _binding; end
          sig { returns(T::Boolean) }
          def _binding?; end
          sig { returns(Object) }
          def _building; end
          sig { returns(T::Boolean) }
          def _building?; end
          sig { returns(T::Boolean) }
          def _creating?; end
          sig { returns(Object) }
          def _loading; end
          sig { returns(T::Boolean) }
          def _loading?; end
        end
        module Buildable
          sig do
            params(
              base: Object,
              object: Object,
              type: T.nilable(String),
              selected_fields: T.nilable(T.any())
            ).returns(Document)
          end
          def build(base, object, type = nil, selected_fields = nil); end
          sig { params(object: T.untyped).returns(T.untyped) }
          def clear_associated(object); end
          sig { params(object: T.untyped, base: T.untyped).returns(T.untyped) }
          def query_criteria(object, base); end
          sig { params(object: T.untyped, base: T.untyped).returns(T.untyped) }
          def execute_query(object, base); end
          sig { params(criteria: T.untyped, base: T.untyped).returns(T.untyped) }
          def with_polymorphic_criterion(criteria, base); end
          sig { params(object: T.untyped).returns(T::Boolean) }
          def query?(object); end
        end
      end
      class HasMany
        include Mongoid::Association::Relatable
        include Mongoid::Association::Referenced::HasMany::Buildable
        ASSOCIATION_OPTIONS = T.let([
    :after_add,
    :after_remove,
    :as,
    :autosave,
    :before_add,
    :before_remove,
    :dependent,
    :foreign_key,
    :order,
    :primary_key
].freeze, T.untyped)
        VALID_OPTIONS = T.let((ASSOCIATION_OPTIONS + SHARED_OPTIONS).freeze, T.untyped)
        FOREIGN_KEY_SUFFIX = T.let('_id'.freeze, T.untyped)
        SHARED_OPTIONS = T.let([
  :class_name,
  :inverse_of,
  :validate,
  :extend
].freeze, T.untyped)
        PRIMARY_KEY_DEFAULT = T.let('_id'.freeze, T.untyped)
        sig { returns(T::Array[Association]) }
        def relation_complements; end
        sig { returns(T.self_type) }
        def setup!; end
        sig { returns(T.self_type) }
        def setup_instance_methods!; end
        sig { returns(String) }
        def foreign_key; end
        sig { returns(T::Boolean) }
        def embedded?; end
        sig { returns(T::Boolean) }
        def validation_default; end
        sig { returns(T::Boolean) }
        def stores_foreign_key?; end
        sig { returns(Mongoid::Association::Referenced::HasMany::Proxy) }
        def relation; end
        sig { params(base: T.untyped).returns(Mongoid::Criteria) }
        def criteria(base); end
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(criteria: Mongoid::Criteria, object_class: Class).returns(Mongoid::Criteria) }
        def add_polymorphic_criterion(criteria, object_class); end
        sig { returns(T::Boolean) }
        def polymorphic?; end
        sig { params(doc: Document).returns(T::Boolean) }
        def bindable?(doc); end
        sig { params(attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Association::Nested::Many) }
        def nested_builder(attributes, options); end
        sig { params(document: Document).returns(Mongoid::Atomic::Paths::Root) }
        def path(document); end
        sig { returns(T.untyped) }
        def default_foreign_key_field; end
        sig { params(other: T.untyped).returns(T.untyped) }
        def polymorphic_inverses(other); end
        sig { params(other: T.untyped).returns(T.untyped) }
        def determine_inverses(other); end
        sig { returns(T.untyped) }
        def default_primary_key; end
        sig { params(object: T.untyped, base: T.untyped).returns(T.untyped) }
        def query_criteria(object, base); end
        sig { params(criteria: T.untyped, base: T.untyped).returns(T.untyped) }
        def with_polymorphic_criterion(criteria, base); end
        sig { params(criteria: T.untyped).returns(T.untyped) }
        def with_ordering(criteria); end
        sig { params(criteria: T.untyped).returns(T.untyped) }
        def with_inverse_field_criterion(criteria); end
        sig do
          params(
            base: Object,
            object: Object,
            type: T.nilable(String),
            selected_fields: T.nilable(T.any())
          ).returns(Document)
        end
        def build(base, object, type = nil, selected_fields = nil); end
        sig { params(object: T.untyped).returns(T::Boolean) }
        def query?(object); end
        sig do
          params(
            _class: Class,
            name: Symbol,
            opts: T::Hash[T.untyped, T.untyped],
            block: T.untyped
          ).void
        end
        def initialize(_class, name, opts = {}, &block); end
        sig { params(other: T.untyped).returns(Object) }
        def ==(other); end
        sig { params(callback_type: Symbol).returns(T::Array[T.any(Proc, Symbol)]) }
        def get_callbacks(callback_type); end
        sig { returns(String) }
        def type_setter; end
        sig { params(other: T.nilable(Object)).returns(T::Array[Symbol]) }
        def inverses(other = nil); end
        sig { params(other: T.nilable(Object)).returns(Association) }
        def inverse_association(other = nil); end
        sig { returns(T.nilable(T.any())) }
        def inverse_type; end
        sig { returns(String) }
        def relation_class_name; end
        sig { returns(String) }
        def relation_class; end
        sig { returns(String) }
        def inverse_class_name; end
        sig { returns(String) }
        def inverse_class; end
        sig { returns(T.any(Symbol, String)) }
        def key; end
        sig { returns(String) }
        def setter; end
        sig { params(other: T.untyped).returns(String) }
        def inverse_setter(other = nil); end
        sig { returns(String) }
        def foreign_key_setter; end
        sig { returns(String) }
        def inverse_type_setter; end
        sig { returns(String) }
        def foreign_key_check; end
        sig { params(owner: Document, target: T.any(Document, T::Array[Document])).returns(Proxy) }
        def create_relation(owner, target); end
        sig { returns(T::Boolean) }
        def destructive?; end
        sig { returns(String) }
        def counter_cache_column_name; end
        sig { returns(Module) }
        def extension; end
        sig { params(other: T.untyped).returns(Symbol) }
        def inverse(other = nil); end
        sig { returns(T::Boolean) }
        def validate?; end
        sig { returns(T.untyped) }
        def inverse_association_classes; end
        sig { returns(T.untyped) }
        def setup_index!; end
        sig { returns(T.untyped) }
        def define_touchable!; end
        sig { returns(T.untyped) }
        def define_autosaver!; end
        sig { returns(T.untyped) }
        def define_builder!; end
        sig { returns(T.untyped) }
        def define_creator!; end
        sig { returns(T.untyped) }
        def define_getter!; end
        sig { returns(T.untyped) }
        def define_setter!; end
        sig { returns(T.untyped) }
        def define_existence_check!; end
        sig { returns(T.untyped) }
        def define_ids_getter!; end
        sig { returns(T.untyped) }
        def define_ids_setter!; end
        sig { returns(T.untyped) }
        def define_counter_cache_callbacks!; end
        sig { returns(T.untyped) }
        def define_dependency!; end
        sig { returns(T.untyped) }
        def validate!; end
        sig { returns(T.untyped) }
        def polymorph!; end
        sig { params(block: T.untyped).returns(T.untyped) }
        def create_extension!(&block); end
        sig { returns(T.untyped) }
        def default_inverse; end
        sig { params(mod: T.untyped).returns(T.untyped) }
        def namespace_hierarchy(mod); end
        sig { params(mod: T.untyped, name: T.untyped).returns(T.untyped) }
        def resolve_name(mod, name); end
        sig { returns(T.any(String, Symbol)) }
        def as; end
        sig { returns(String) }
        def dependent; end
        sig { returns(Criteria::Queryable::Key) }
        def order; end
        sig { returns(T::Boolean) }
        def indexed?; end
        sig { returns(T::Boolean) }
        def autobuilding?; end
        sig { returns(T::Boolean) }
        def cyclic?; end
        sig { returns(String) }
        def inverse_of; end
        sig { returns(T.any(Symbol, String)) }
        def primary_key; end
        sig { returns(T::Boolean) }
        def autosave; end
        sig { returns(T::Boolean) }
        def counter_cached?; end
        sig { returns(T::Boolean) }
        def cascading_callbacks?; end
        sig { returns(T.nilable(T.any())) }
        def store_as; end
        sig { returns(T::Boolean) }
        def forced_nil_inverse?; end
        sig { returns(T.nilable(T.any())) }
        def touch_field; end
        sig { returns(T::Boolean) }
        def touchable?; end
        sig { params(object: Object).returns(Object) }
        def convert_to_foreign_key(object); end
        sig { params(object: T.untyped).returns(T.untyped) }
        def convert_polymorphic(object); end
        class Eager < Mongoid::Association::Referenced::Eager::Base
          sig { returns(T.untyped) }
          def preload; end
          sig { params(doc: T.untyped, element: T.untyped).returns(T.untyped) }
          def set_relation(doc, element); end
          sig { returns(T.untyped) }
          def group_by_key; end
          sig { returns(T.untyped) }
          def key; end
        end
        class Proxy < Mongoid::Association::Many
          extend Forwardable
          sig { params(args: T.any(Document, T::Array[Document])).returns(T::Array[Document]) }
          def <<(*args); end
          sig { params(documents: T::Array[Document]).returns(T::Array[Document]) }
          def concat(documents); end
          sig { params(attributes: T::Hash[T.untyped, T.untyped], type: T.nilable(Class)).returns(Document) }
          def build(attributes = {}, type = nil); end
          sig { params(document: Document).returns(Document) }
          def delete(document); end
          sig { params(conditions: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Integer) }
          def delete_all(conditions = nil); end
          sig { params(conditions: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Integer) }
          def destroy_all(conditions = nil); end
          sig { returns(T::Array[Document]) }
          def each; end
          sig { returns(T::Boolean) }
          def exists?; end
          sig { params(args: T.any(BSON::ObjectId, T::Array[BSON::ObjectId])).returns(T.any(Document, Criteria)) }
          def find(*args); end
          sig { params(base: Document, target: T::Array[Document], association: Association).void }
          def initialize(base, target, association); end
          sig { returns(T.untyped) }
          def nullify; end
          sig { returns(Many) }
          def purge; end
          sig { params(replacement: T::Array[Document]).returns(Many) }
          def substitute(replacement); end
          sig { returns(Criteria) }
          def unscoped; end
          sig { params(document: Document).returns(T.untyped) }
          def append(document); end
          sig { params(document: Document, already_related: T::Boolean).returns(T.untyped) }
          def with_add_callbacks(document, already_related); end
          sig { params(document: Document).returns(T::Boolean) }
          def already_related?(document); end
          sig { returns(Binding) }
          def binding; end
          sig { returns(::Mongo::Collection) }
          def collection; end
          sig { returns(Criteria) }
          def criteria; end
          sig { params(document: Document).returns(T::Boolean) }
          def cascade!(document); end
          sig { params(name: T.any(Symbol, String), args: T::Array[T.untyped], block: T.untyped).returns(T.any(Criteria, Object)) }
          def method_missing(name, *args, &block); end
          sig { params(docs: T::Array[Document], inserts: T::Array[T::Hash[T.untyped, T.untyped]]).returns(T.untyped) }
          def persist_delayed(docs, inserts); end
          sig { returns(T::Boolean) }
          def persistable?; end
          sig { params(conditions: T.nilable(T::Hash[T.untyped, T.untyped]), method: Symbol).returns(Integer) }
          def remove_all(conditions = nil, method = :delete_all); end
          sig { params(ids: T::Array[Object]).returns(T.untyped) }
          def remove_not_in(ids); end
          sig { params(doc: Document, docs: T.untyped, inserts: T::Array[Document]).returns(T.untyped) }
          def save_or_delay(doc, docs, inserts); end
          sig { params(association: T.untyped, docs: T.untyped).returns(T.untyped) }
          def self.eager_loader(association, docs); end
          sig { returns(T::Boolean) }
          def self.embedded?; end
        end
        class Binding
          include Mongoid::Association::Bindable
          sig { params(doc: T.untyped).returns(T.untyped) }
          def bind_one(doc); end
          sig { params(doc: T.untyped).returns(T.untyped) }
          def unbind_one(doc); end
          sig { params(base: Document, target: T.any(Document, T::Array[Document]), association: Association).void }
          def initialize(base, target, association); end
          sig { returns(Object) }
          def binding; end
          sig { params(doc: Document).returns(T.untyped) }
          def check_inverse!(doc); end
          sig { params(keyed: Document, id: Object).returns(T.untyped) }
          def bind_foreign_key(keyed, id); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_type(typed, name); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_inverse_type(typed, name); end
          sig { params(doc: Document, inverse: Document).returns(T.untyped) }
          def bind_inverse(doc, inverse); end
          sig { params(doc: Document).returns(T.untyped) }
          def bind_from_relational_parent(doc); end
          sig { params(_base: T.untyped).returns(T.untyped) }
          def record_id(_base); end
          sig { returns(T::Boolean) }
          def set_base_association; end
          sig { params(doc: Document).returns(T.untyped) }
          def unbind_from_relational_parent(doc); end
          sig { returns(Object) }
          def _assigning; end
          sig { returns(T::Boolean) }
          def _assigning?; end
          sig { returns(Object) }
          def _binding; end
          sig { returns(T::Boolean) }
          def _binding?; end
          sig { returns(Object) }
          def _building; end
          sig { returns(T::Boolean) }
          def _building?; end
          sig { returns(T::Boolean) }
          def _creating?; end
          sig { returns(Object) }
          def _loading; end
          sig { returns(T::Boolean) }
          def _loading?; end
        end
        module Buildable
          sig do
            params(
              base: Object,
              object: Object,
              type: T.nilable(String),
              selected_fields: T.nilable(T.any())
            ).returns(Document)
          end
          def build(base, object, type = nil, selected_fields = nil); end
          sig { params(object: T.untyped).returns(T::Boolean) }
          def query?(object); end
        end
        module Targets
          class Enumerable
            include ::Enumerable
            extend Forwardable
            sig { params(other: T::Enumerable[T.untyped]).returns(T::Boolean) }
            def ==(other); end
            sig { params(other: Object).returns(T::Boolean) }
            def ===(other); end
            sig { params(document: Document).returns(Document) }
            def <<(document); end
            sig { returns(T::Array[Document]) }
            def clear; end
            sig { returns(T::Array[Document]) }
            def clone; end
            sig { params(document: Document).returns(Document) }
            def delete(document); end
            sig { params(block: T.untyped).returns(T::Array[Document]) }
            def delete_if(&block); end
            sig { params(block: T.proc.void).returns(T::Boolean) }
            def each(&block); end
            sig { returns(T::Boolean) }
            def empty?; end
            sig { params(args: Object).returns(T::Boolean) }
            def any?(*args); end
            sig { params(opts: T::Hash[T.untyped, T.untyped]).returns(Document) }
            def first(opts = {}); end
            sig { params(target: T.any(Criteria, T::Array[Document]), base: T.untyped, association: T.untyped).void }
            def initialize(target, base = nil, association = nil); end
            sig { params(doc: Document).returns(T::Boolean) }
            def include?(doc); end
            sig { returns(String) }
            def inspect; end
            sig { returns(T::Array[Document]) }
            def in_memory; end
            sig { params(opts: T::Hash[T.untyped, T.untyped]).returns(Document) }
            def last(opts = {}); end
            sig { returns(T::Boolean) }
            def _loaded?; end
            sig { returns(T::Array[Object]) }
            def marshal_dump; end
            sig { params(data: T.untyped).returns(T::Array[Object]) }
            def marshal_load(data); end
            sig { returns(T::Boolean) }
            def reset; end
            sig { params(criteria: Criteria).returns(T.untyped) }
            def reset_unloaded(criteria); end
            sig { params(name: T.any(String, Symbol), include_private: T::Boolean).returns(T::Boolean) }
            def respond_to?(name, include_private = false); end
            sig { returns(Integer) }
            def size; end
            sig { params(options: T::Hash[T.untyped, T.untyped]).returns(String) }
            def to_json(options = {}); end
            sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
            def as_json(options = {}); end
            sig { returns(T::Array[Document]) }
            def uniq; end
            sig { params(document: T.untyped).returns(T.untyped) }
            def set_base(document); end
            sig { params(name: T.untyped, args: T.untyped, block: T.untyped).returns(T.untyped) }
            def method_missing(name, *args, &block); end
            sig { returns(T.untyped) }
            def unloaded_documents; end
            sig { returns(T::Array[Document]) }
            attr_accessor :_added
            sig { returns(T::Array[Document]) }
            attr_accessor :_loaded
            sig { returns(T::Array[Document]) }
            attr_accessor :_unloaded
          end
        end
      end
      module Syncable
        sig { params(association: Association).returns(T::Boolean) }
        def _syncable?(association); end
        sig { returns(T::Hash[T.untyped, T.untyped]) }
        def _synced; end
        sig { params(foreign_key: String).returns(T::Boolean) }
        def _synced?(foreign_key); end
        sig { params(association: Association).returns(Object) }
        def remove_inverse_keys(association); end
        sig { params(association: Association).returns(Object) }
        def update_inverse_keys(association); end
        module ClassMethods
          sig { params(association: Association).returns(T.untyped) }
          def _synced(association); end
          sig { params(association: Association).returns(Class) }
          def synced_save(association); end
          sig { params(association: Association).returns(Class) }
          def synced_destroy(association); end
        end
      end
      module AutoSave
        extend ActiveSupport::Concern
        sig { returns(T::Boolean) }
        def autosaved?; end
        sig { returns(T.untyped) }
        def __autosaving__; end
        sig { params(doc: T.untyped).returns(T::Boolean) }
        def changed_for_autosave?(doc); end
        sig { params(association: Association).returns(Class) }
        def self.define_autosave!(association); end
      end
      class BelongsTo
        include Mongoid::Association::Relatable
        include Mongoid::Association::Referenced::BelongsTo::Buildable
        ASSOCIATION_OPTIONS = T.let([
    :autobuild,
    :autosave,
    :counter_cache,
    :dependent,
    :foreign_key,
    :index,
    :polymorphic,
    :primary_key,
    :touch,
    :optional,
    :required
].freeze, T.untyped)
        VALID_OPTIONS = T.let((ASSOCIATION_OPTIONS + SHARED_OPTIONS).freeze, T.untyped)
        FOREIGN_KEY_FIELD_TYPE = T.let(Object, T.untyped)
        FOREIGN_KEY_SUFFIX = T.let('_id'.freeze, T.untyped)
        SHARED_OPTIONS = T.let([
  :class_name,
  :inverse_of,
  :validate,
  :extend
].freeze, T.untyped)
        PRIMARY_KEY_DEFAULT = T.let('_id'.freeze, T.untyped)
        sig { returns(T::Array[Association]) }
        def relation_complements; end
        sig { returns(T.self_type) }
        def setup!; end
        sig { returns(T::Boolean) }
        def stores_foreign_key?; end
        sig { returns(T::Boolean) }
        def embedded?; end
        sig { returns(T::Boolean) }
        def validation_default; end
        sig { returns(String) }
        def foreign_key; end
        sig { returns(Mongoid::Association::Referenced::BelongsTo::Proxy) }
        def relation; end
        sig { returns(T::Boolean) }
        def polymorphic?; end
        sig { returns(String) }
        def inverse_type; end
        sig { params(attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Association::Nested::One) }
        def nested_builder(attributes, options); end
        sig { params(document: Document).returns(Mongoid::Atomic::Paths::Root) }
        def path(document); end
        sig { returns(T.untyped) }
        def setup_instance_methods!; end
        sig { returns(T.untyped) }
        def index_spec; end
        sig { returns(T.untyped) }
        def default_primary_key; end
        sig { returns(T.untyped) }
        def default_foreign_key_field; end
        sig { returns(T.untyped) }
        def polymorph!; end
        sig { params(other: T.untyped).returns(T.untyped) }
        def polymorphic_inverses(other = nil); end
        sig { params(other: T.untyped).returns(T.untyped) }
        def determine_inverses(other); end
        sig { returns(T::Boolean) }
        def require_association?; end
        sig { returns(T.untyped) }
        def create_foreign_key_field!; end
        sig do
          params(
            base: Object,
            object: Object,
            type: T.nilable(String),
            selected_fields: T.nilable(T.any())
          ).returns(Document)
        end
        def build(base, object, type = nil, selected_fields = nil); end
        sig { params(object: T.untyped, type: T.untyped).returns(T.untyped) }
        def execute_query(object, type); end
        sig { params(object: T.untyped, type: T.untyped).returns(T.untyped) }
        def query_criteria(object, type); end
        sig { params(object: T.untyped).returns(T::Boolean) }
        def query?(object); end
        sig do
          params(
            _class: Class,
            name: Symbol,
            opts: T::Hash[T.untyped, T.untyped],
            block: T.untyped
          ).void
        end
        def initialize(_class, name, opts = {}, &block); end
        sig { params(other: T.untyped).returns(Object) }
        def ==(other); end
        sig { params(callback_type: Symbol).returns(T::Array[T.any(Proc, Symbol)]) }
        def get_callbacks(callback_type); end
        sig { returns(String) }
        def type_setter; end
        sig { params(doc: Document).returns(T::Boolean) }
        def bindable?(doc); end
        sig { params(other: T.nilable(Object)).returns(T::Array[Symbol]) }
        def inverses(other = nil); end
        sig { params(other: T.nilable(Object)).returns(Association) }
        def inverse_association(other = nil); end
        sig { returns(String) }
        def relation_class_name; end
        sig { returns(String) }
        def relation_class; end
        sig { returns(String) }
        def inverse_class_name; end
        sig { returns(String) }
        def inverse_class; end
        sig { returns(T.any(Symbol, String)) }
        def key; end
        sig { returns(String) }
        def setter; end
        sig { params(other: T.untyped).returns(String) }
        def inverse_setter(other = nil); end
        sig { returns(String) }
        def foreign_key_setter; end
        sig { returns(String) }
        def inverse_type_setter; end
        sig { returns(String) }
        def foreign_key_check; end
        sig { params(owner: Document, target: T.any(Document, T::Array[Document])).returns(Proxy) }
        def create_relation(owner, target); end
        sig { returns(T::Boolean) }
        def destructive?; end
        sig { returns(String) }
        def counter_cache_column_name; end
        sig { returns(Module) }
        def extension; end
        sig { params(other: T.untyped).returns(Symbol) }
        def inverse(other = nil); end
        sig { returns(T::Boolean) }
        def validate?; end
        sig { returns(T.untyped) }
        def inverse_association_classes; end
        sig { returns(T.untyped) }
        def setup_index!; end
        sig { returns(T.untyped) }
        def define_touchable!; end
        sig { returns(T.untyped) }
        def define_autosaver!; end
        sig { returns(T.untyped) }
        def define_builder!; end
        sig { returns(T.untyped) }
        def define_creator!; end
        sig { returns(T.untyped) }
        def define_getter!; end
        sig { returns(T.untyped) }
        def define_setter!; end
        sig { returns(T.untyped) }
        def define_existence_check!; end
        sig { returns(T.untyped) }
        def define_ids_getter!; end
        sig { returns(T.untyped) }
        def define_ids_setter!; end
        sig { returns(T.untyped) }
        def define_counter_cache_callbacks!; end
        sig { returns(T.untyped) }
        def define_dependency!; end
        sig { returns(T.untyped) }
        def validate!; end
        sig { params(block: T.untyped).returns(T.untyped) }
        def create_extension!(&block); end
        sig { returns(T.untyped) }
        def default_inverse; end
        sig { params(mod: T.untyped).returns(T.untyped) }
        def namespace_hierarchy(mod); end
        sig { params(mod: T.untyped, name: T.untyped).returns(T.untyped) }
        def resolve_name(mod, name); end
        sig { returns(T.any(String, Symbol)) }
        def as; end
        sig { returns(String) }
        def dependent; end
        sig { returns(Criteria::Queryable::Key) }
        def order; end
        sig { returns(T::Boolean) }
        def indexed?; end
        sig { returns(T::Boolean) }
        def autobuilding?; end
        sig { returns(T::Boolean) }
        def cyclic?; end
        sig { returns(String) }
        def inverse_of; end
        sig { returns(T.any(Symbol, String)) }
        def primary_key; end
        sig { returns(T::Boolean) }
        def autosave; end
        sig { returns(T::Boolean) }
        def counter_cached?; end
        sig { returns(T::Boolean) }
        def cascading_callbacks?; end
        sig { returns(T.nilable(T.any())) }
        def store_as; end
        sig { returns(T::Boolean) }
        def forced_nil_inverse?; end
        sig { returns(T.nilable(T.any())) }
        def type; end
        sig { returns(T.nilable(T.any())) }
        def touch_field; end
        sig { returns(T::Boolean) }
        def touchable?; end
        sig { params(object: Object).returns(Object) }
        def convert_to_foreign_key(object); end
        sig { params(object: T.untyped).returns(T.untyped) }
        def convert_polymorphic(object); end
        class Eager < Mongoid::Association::Referenced::Eager::Base
          sig { returns(T.untyped) }
          def preload; end
          sig { params(block: T.untyped).returns(T.untyped) }
          def each_loaded_document(&block); end
          sig { returns(T.untyped) }
          def keys_by_type_from_docs; end
          sig { returns(T.untyped) }
          def group_by_key; end
          sig { returns(T.untyped) }
          def key; end
        end
        class Proxy < Mongoid::Association::One
          include Mongoid::Evolvable
          sig { params(base: Document, target: T.any(Document, T::Array[Document]), association: Association).void }
          def initialize(base, target, association); end
          sig { returns(T.untyped) }
          def nullify; end
          sig { params(replacement: T.any(Document, T::Array[Document])).returns(T.nilable(T.self_type)) }
          def substitute(replacement); end
          sig { returns(Binding) }
          def binding; end
          sig { params(replacement: T.any(Document, Object)).returns(Document) }
          def normalize(replacement); end
          sig { returns(T::Boolean) }
          def persistable?; end
          sig { params(association: Association, docs: T::Array[Document]).returns(T.untyped) }
          def self.eager_loader(association, docs); end
          sig { returns(T::Boolean) }
          def self.embedded?; end
          sig { returns(Object) }
          def __evolve_object_id__; end
        end
        class Binding
          include Mongoid::Association::Bindable
          sig { returns(T.untyped) }
          def bind_one; end
          sig { returns(T.untyped) }
          def unbind_one; end
          sig { params(doc: Document).returns(T.untyped) }
          def check_polymorphic_inverses!(doc); end
          sig { params(base: Document, target: T.any(Document, T::Array[Document]), association: Association).void }
          def initialize(base, target, association); end
          sig { returns(Object) }
          def binding; end
          sig { params(doc: Document).returns(T.untyped) }
          def check_inverse!(doc); end
          sig { params(keyed: Document, id: Object).returns(T.untyped) }
          def bind_foreign_key(keyed, id); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_type(typed, name); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_inverse_type(typed, name); end
          sig { params(doc: Document, inverse: Document).returns(T.untyped) }
          def bind_inverse(doc, inverse); end
          sig { params(doc: Document).returns(T.untyped) }
          def bind_from_relational_parent(doc); end
          sig { params(_base: T.untyped).returns(T.untyped) }
          def record_id(_base); end
          sig { returns(T::Boolean) }
          def set_base_association; end
          sig { params(doc: Document).returns(T.untyped) }
          def unbind_from_relational_parent(doc); end
          sig { returns(Object) }
          def _assigning; end
          sig { returns(T::Boolean) }
          def _assigning?; end
          sig { returns(Object) }
          def _binding; end
          sig { returns(T::Boolean) }
          def _binding?; end
          sig { returns(Object) }
          def _building; end
          sig { returns(T::Boolean) }
          def _building?; end
          sig { returns(T::Boolean) }
          def _creating?; end
          sig { returns(Object) }
          def _loading; end
          sig { returns(T::Boolean) }
          def _loading?; end
        end
        module Buildable
          sig do
            params(
              base: Object,
              object: Object,
              type: T.nilable(String),
              selected_fields: T.nilable(T.any())
            ).returns(Document)
          end
          def build(base, object, type = nil, selected_fields = nil); end
          sig { params(object: T.untyped, type: T.untyped).returns(T.untyped) }
          def execute_query(object, type); end
          sig { params(object: T.untyped, type: T.untyped).returns(T.untyped) }
          def query_criteria(object, type); end
          sig { params(object: T.untyped).returns(T::Boolean) }
          def query?(object); end
        end
      end
      module CounterCache
        extend ActiveSupport::Concern
        sig { params(counters: T.any(Symbol, T::Array[T.untyped])).returns(T.untyped) }
        def reset_counters(*counters); end
        sig { params(association: Association).returns(Class) }
        def self.define_callbacks!(association); end
        module ClassMethods
          sig { params(id: String, counters: T.any(Symbol, T::Array[T.untyped])).returns(T.untyped) }
          def reset_counters(id, *counters); end
          sig { params(id: String, counters: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
          def update_counters(id, counters); end
          sig { params(counter_name: Symbol, id: String).returns(T.untyped) }
          def increment_counter(counter_name, id); end
          sig { params(counter_name: Symbol, id: String).returns(T.untyped) }
          def decrement_counter(counter_name, id); end
        end
      end
      module NestedAttributes
        class One
          sig { params(parent: Document).returns(Document) }
          def build(parent); end
          sig { params(association: Association, attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).void }
          def initialize(association, attributes, options); end
          sig { returns(T::Boolean) }
          def acceptable_id?; end
          sig { returns(T::Boolean) }
          def delete?; end
          sig { returns(T::Boolean) }
          def destroyable?; end
          sig { returns(T::Boolean) }
          def replace?; end
          sig { returns(T::Boolean) }
          def update?; end
          sig { returns(T.untyped) }
          attr_accessor :destroy
        end
      end
      class HasAndBelongsToMany
        include Mongoid::Association::Relatable
        include Mongoid::Association::Referenced::HasAndBelongsToMany::Buildable
        ASSOCIATION_OPTIONS = T.let([
    :after_add,
    :after_remove,
    :autosave,
    :before_add,
    :before_remove,
    :counter_cache,
    :dependent,
    :foreign_key,
    :index,
    :order,
    :primary_key,
    :inverse_primary_key,
    :inverse_foreign_key,
].freeze, T.untyped)
        VALID_OPTIONS = T.let((ASSOCIATION_OPTIONS + SHARED_OPTIONS).freeze, T.untyped)
        FOREIGN_KEY_FIELD_TYPE = T.let(Array, T.untyped)
        FOREIGN_KEY_SUFFIX = T.let('_ids'.freeze, T.untyped)
        SHARED_OPTIONS = T.let([
  :class_name,
  :inverse_of,
  :validate,
  :extend
].freeze, T.untyped)
        PRIMARY_KEY_DEFAULT = T.let('_id'.freeze, T.untyped)
        sig { returns(T::Array[Association]) }
        def relation_complements; end
        sig { returns(T.self_type) }
        def setup!; end
        sig { returns(T::Boolean) }
        def embedded?; end
        sig { returns(T::Boolean) }
        def validation_default; end
        sig { returns(T::Boolean) }
        def forced_nil_inverse?; end
        sig { returns(T::Boolean) }
        def stores_foreign_key?; end
        sig { returns(Mongoid::Association::Referenced::HasAndBelongsToMany::Proxy) }
        def relation; end
        sig { returns(String) }
        def foreign_key; end
        sig { params(base: T.untyped, id_list: T.untyped).returns(Mongoid::Criteria) }
        def criteria(base, id_list = nil); end
        sig { returns(String) }
        def inverse_foreign_key; end
        sig { params(doc: Document).returns(T::Boolean) }
        def bindable?(doc); end
        sig { returns(String) }
        def inverse_foreign_key_setter; end
        sig { params(attributes: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).returns(Association::Nested::One) }
        def nested_builder(attributes, options); end
        sig { params(document: Document).returns(Mongoid::Atomic::Paths::Root) }
        def path(document); end
        sig { returns(T.untyped) }
        def setup_instance_methods!; end
        sig { returns(T.untyped) }
        def index_spec; end
        sig { returns(T.untyped) }
        def default_primary_key; end
        sig { returns(T.untyped) }
        def default_foreign_key_field; end
        sig { returns(T.untyped) }
        def setup_syncing!; end
        sig { returns(T.untyped) }
        def synced_destroy; end
        sig { returns(T.untyped) }
        def synced_save; end
        sig { returns(T.untyped) }
        def create_foreign_key_field!; end
        sig { params(other: T.untyped).returns(T.untyped) }
        def determine_inverses(other); end
        sig { params(criteria: T.untyped).returns(T.untyped) }
        def with_ordering(criteria); end
        sig { params(id_list: T.untyped).returns(T.untyped) }
        def query_criteria(id_list); end
        sig do
          params(
            base: Object,
            object: Object,
            type: T.nilable(String),
            selected_fields: T.nilable(T.any())
          ).returns(T::Array[Document])
        end
        def build(base, object, type = nil, selected_fields = nil); end
        sig { params(object: T.untyped).returns(T::Boolean) }
        def query?(object); end
        sig do
          params(
            _class: Class,
            name: Symbol,
            opts: T::Hash[T.untyped, T.untyped],
            block: T.untyped
          ).void
        end
        def initialize(_class, name, opts = {}, &block); end
        sig { params(other: T.untyped).returns(Object) }
        def ==(other); end
        sig { params(callback_type: Symbol).returns(T::Array[T.any(Proc, Symbol)]) }
        def get_callbacks(callback_type); end
        sig { returns(String) }
        def type_setter; end
        sig { params(other: T.nilable(Object)).returns(T::Array[Symbol]) }
        def inverses(other = nil); end
        sig { params(other: T.nilable(Object)).returns(Association) }
        def inverse_association(other = nil); end
        sig { returns(T.nilable(T.any())) }
        def inverse_type; end
        sig { returns(String) }
        def relation_class_name; end
        sig { returns(String) }
        def relation_class; end
        sig { returns(String) }
        def inverse_class_name; end
        sig { returns(String) }
        def inverse_class; end
        sig { returns(T.any(Symbol, String)) }
        def key; end
        sig { returns(String) }
        def setter; end
        sig { params(other: T.untyped).returns(String) }
        def inverse_setter(other = nil); end
        sig { returns(String) }
        def foreign_key_setter; end
        sig { returns(String) }
        def inverse_type_setter; end
        sig { returns(String) }
        def foreign_key_check; end
        sig { params(owner: Document, target: T.any(Document, T::Array[Document])).returns(Proxy) }
        def create_relation(owner, target); end
        sig { returns(T::Boolean) }
        def destructive?; end
        sig { returns(String) }
        def counter_cache_column_name; end
        sig { returns(Module) }
        def extension; end
        sig { params(other: T.untyped).returns(Symbol) }
        def inverse(other = nil); end
        sig { returns(T::Boolean) }
        def validate?; end
        sig { returns(T.untyped) }
        def inverse_association_classes; end
        sig { returns(T.untyped) }
        def setup_index!; end
        sig { returns(T.untyped) }
        def define_touchable!; end
        sig { returns(T.untyped) }
        def define_autosaver!; end
        sig { returns(T.untyped) }
        def define_builder!; end
        sig { returns(T.untyped) }
        def define_creator!; end
        sig { returns(T.untyped) }
        def define_getter!; end
        sig { returns(T.untyped) }
        def define_setter!; end
        sig { returns(T.untyped) }
        def define_existence_check!; end
        sig { returns(T.untyped) }
        def define_ids_getter!; end
        sig { returns(T.untyped) }
        def define_ids_setter!; end
        sig { returns(T.untyped) }
        def define_counter_cache_callbacks!; end
        sig { returns(T.untyped) }
        def define_dependency!; end
        sig { returns(T.untyped) }
        def validate!; end
        sig { returns(T.untyped) }
        def polymorph!; end
        sig { params(block: T.untyped).returns(T.untyped) }
        def create_extension!(&block); end
        sig { returns(T.untyped) }
        def default_inverse; end
        sig { params(mod: T.untyped).returns(T.untyped) }
        def namespace_hierarchy(mod); end
        sig { params(mod: T.untyped, name: T.untyped).returns(T.untyped) }
        def resolve_name(mod, name); end
        sig { returns(T.any(String, Symbol)) }
        def as; end
        sig { returns(String) }
        def dependent; end
        sig { returns(Criteria::Queryable::Key) }
        def order; end
        sig { returns(T::Boolean) }
        def indexed?; end
        sig { returns(T::Boolean) }
        def autobuilding?; end
        sig { returns(T::Boolean) }
        def cyclic?; end
        sig { returns(String) }
        def inverse_of; end
        sig { returns(T.any(Symbol, String)) }
        def primary_key; end
        sig { returns(T::Boolean) }
        def autosave; end
        sig { returns(T::Boolean) }
        def counter_cached?; end
        sig { returns(T::Boolean) }
        def polymorphic?; end
        sig { returns(T::Boolean) }
        def cascading_callbacks?; end
        sig { returns(T.nilable(T.any())) }
        def store_as; end
        sig { returns(T.nilable(T.any())) }
        def type; end
        sig { returns(T.nilable(T.any())) }
        def touch_field; end
        sig { returns(T::Boolean) }
        def touchable?; end
        sig { params(object: Object).returns(Object) }
        def convert_to_foreign_key(object); end
        sig { params(object: T.untyped).returns(T.untyped) }
        def convert_polymorphic(object); end
        class Eager < Mongoid::Association::Referenced::Eager::Base
          sig { returns(T.untyped) }
          def preload; end
          sig { returns(T.untyped) }
          def keys_from_docs; end
          sig { params(doc: T.untyped, element: T.untyped).returns(T.untyped) }
          def set_relation(doc, element); end
          sig { returns(T.untyped) }
          def group_by_key; end
          sig { returns(T.untyped) }
          def key; end
        end
        class Proxy < Mongoid::Association::Referenced::HasMany::Proxy
          sig { params(args: T.any(Document, T::Array[Document])).returns(T::Array[Document]) }
          def <<(*args); end
          sig { params(documents: T::Array[Document]).returns(T::Array[Document]) }
          def concat(documents); end
          sig { params(attributes: T::Hash[T.untyped, T.untyped], type: T.nilable(Class)).returns(Document) }
          def build(attributes = {}, type = nil); end
          sig { params(document: Document).returns(Document) }
          def delete(document); end
          sig { params(replacement: T::Array[Document]).returns(T.untyped) }
          def nullify(replacement = []); end
          sig { params(replacement: T::Array[Document]).returns(Many) }
          def substitute(replacement); end
          sig { returns(Criteria) }
          def unscoped; end
          sig { params(document: Document).returns(T.untyped) }
          def append(document); end
          sig { returns(Binding) }
          def binding; end
          sig { params(doc: Document).returns(T::Boolean) }
          def child_persistable?(doc); end
          sig { params(id_list: T.untyped).returns(Criteria) }
          def criteria(id_list = nil); end
          sig { params(doc: Document, key: Symbol).returns(T::Boolean) }
          def unsynced(doc, key); end
          sig { params(association: Association, docs: T::Array[Document]).returns(T.untyped) }
          def self.eager_loader(association, docs); end
          sig { returns(T::Boolean) }
          def self.embedded?; end
        end
        class Binding
          include Mongoid::Association::Bindable
          sig { params(doc: Document).returns(T.untyped) }
          def bind_one(doc); end
          sig { params(doc: T.untyped).returns(T.untyped) }
          def unbind_one(doc); end
          sig { params(doc: T.untyped).returns(T.untyped) }
          def inverse_record_id(doc); end
          sig { params(doc: T.untyped).returns(T.untyped) }
          def determine_inverse_association(doc); end
          sig { params(base: Document, target: T.any(Document, T::Array[Document]), association: Association).void }
          def initialize(base, target, association); end
          sig { returns(Object) }
          def binding; end
          sig { params(doc: Document).returns(T.untyped) }
          def check_inverse!(doc); end
          sig { params(keyed: Document, id: Object).returns(T.untyped) }
          def bind_foreign_key(keyed, id); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_type(typed, name); end
          sig { params(typed: Document, name: String).returns(T.untyped) }
          def bind_polymorphic_inverse_type(typed, name); end
          sig { params(doc: Document, inverse: Document).returns(T.untyped) }
          def bind_inverse(doc, inverse); end
          sig { params(doc: Document).returns(T.untyped) }
          def bind_from_relational_parent(doc); end
          sig { params(_base: T.untyped).returns(T.untyped) }
          def record_id(_base); end
          sig { returns(T::Boolean) }
          def set_base_association; end
          sig { params(doc: Document).returns(T.untyped) }
          def unbind_from_relational_parent(doc); end
          sig { returns(Object) }
          def _assigning; end
          sig { returns(T::Boolean) }
          def _assigning?; end
          sig { returns(Object) }
          def _binding; end
          sig { returns(T::Boolean) }
          def _binding?; end
          sig { returns(Object) }
          def _building; end
          sig { returns(T::Boolean) }
          def _building?; end
          sig { returns(T::Boolean) }
          def _creating?; end
          sig { returns(Object) }
          def _loading; end
          sig { returns(T::Boolean) }
          def _loading?; end
        end
        module Buildable
          sig do
            params(
              base: Object,
              object: Object,
              type: T.nilable(String),
              selected_fields: T.nilable(T.any())
            ).returns(T::Array[Document])
          end
          def build(base, object, type = nil, selected_fields = nil); end
          sig { params(object: T.untyped).returns(T::Boolean) }
          def query?(object); end
        end
      end
    end
  end
  module Persistable
    include Mongoid::Persistable::Creatable
    include Mongoid::Persistable::Deletable
    include Mongoid::Persistable::Destroyable
    include Mongoid::Persistable::Incrementable
    include Mongoid::Persistable::Logical
    include Mongoid::Persistable::Poppable
    include Mongoid::Positional
    include Mongoid::Persistable::Pullable
    include Mongoid::Persistable::Pushable
    include Mongoid::Persistable::Renamable
    include Mongoid::Persistable::Savable
    include Mongoid::Persistable::Settable
    include Mongoid::Persistable::Updatable
    include Mongoid::Persistable::Upsertable
    include Mongoid::Persistable::Unsettable
    extend ActiveSupport::Concern
    LIST_OPERATIONS = T.let([ "$addToSet", "$push", "$pull", "$pullAll" ].freeze, T.untyped)
    sig { params(join_context: T.nilable(T::Boolean)).returns(T::Boolean) }
    def atomically(join_context: nil); end
    sig { returns(T.untyped) }
    def fail_due_to_validation!; end
    sig { params(method: Symbol).returns(T.untyped) }
    def fail_due_to_callback!(method); end
    sig { returns(T::Boolean) }
    def executing_atomically?; end
    sig { params(result: Object, options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def post_process_persist(result, options = {}); end
    sig { returns(Object) }
    def prepare_atomic_operation; end
    sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def process_atomic_operations(operations); end
    sig { returns(T.untyped) }
    def _mongoid_remove_atomic_context_changes; end
    sig { returns(T.untyped) }
    def _mongoid_reset_atomic_context_changes!; end
    sig { returns(T.untyped) }
    def _mongoid_push_atomic_context; end
    sig { returns(T.untyped) }
    def _mongoid_pop_atomic_context; end
    sig { returns(T::Array[T.untyped]) }
    def _mongoid_atomic_context_changed_fields; end
    sig { params(operation: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def persist_or_delay_atomic_operation(operation); end
    sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(T.untyped) }
    def persist_atomic_operations(operations); end
    sig { params(fields: T.any(String, Symbol)).returns(Document) }
    def unset(*fields); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def upsert(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def prepare_upsert(options = {}); end
    sig { params(name: T.any(Symbol, String), value: Object).returns(T::Boolean) }
    def update_attribute(name, value); end
    sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def update(attributes = {}); end
    sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def update!(attributes = {}); end
    sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
    def init_atomic_updates; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def prepare_update(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def update_document(options = {}); end
    sig { params(setters: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def set(setters); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def save(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def save!(options = {}); end
    sig { params(renames: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def rename(renames); end
    sig { params(adds: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def add_to_set(adds); end
    sig { params(pushes: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def push(pushes); end
    sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def pull(pulls); end
    sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def pull_all(pulls); end
    sig { params(selector: T::Hash[T.untyped, T.untyped], operations: T::Hash[T.untyped, T.untyped], processed: T::Hash[T.untyped, T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
    def positionally(selector, operations, processed = {}); end
    sig { params(keys: T.untyped, operations: T.untyped, processed: T.untyped).returns(T.untyped) }
    def process_operations(keys, operations, processed); end
    sig { params(keys: T.untyped, update: T.untyped, updates: T.untyped).returns(T.untyped) }
    def process_updates(keys, update, updates = {}); end
    sig { params(keys: T.untyped, position: T.untyped).returns(T.untyped) }
    def replace_index(keys, position); end
    sig { params(pops: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def pop(pops); end
    sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def bit(operations); end
    sig { params(increments: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def inc(increments); end
    sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Boolean) }
    def destroy(options = nil); end
    sig { params(options: T.untyped).returns(T.untyped) }
    def destroy!(options = {}); end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(TrueClass) }
    def delete(options = {}); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_deletes; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def delete_as_embedded(options = {}); end
    sig { returns(T::Boolean) }
    def delete_as_root; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def notifying_parent?(options = {}); end
    sig { returns(Object) }
    def prepare_delete; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def insert(options = {}); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def atomic_inserts; end
    sig { returns(Document) }
    def insert_as_embedded; end
    sig { returns(Document) }
    def insert_as_root; end
    sig { returns(T::Boolean) }
    def post_process_insert; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Document) }
    def prepare_insert(options = {}); end
    module Logical
      extend ActiveSupport::Concern
      sig { params(operations: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def bit(operations); end
    end
    module Savable
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def save(options = {}); end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def save!(options = {}); end
    end
    module Poppable
      extend ActiveSupport::Concern
      sig { params(pops: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def pop(pops); end
    end
    module Pullable
      extend ActiveSupport::Concern
      sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def pull(pulls); end
      sig { params(pulls: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def pull_all(pulls); end
    end
    module Pushable
      extend ActiveSupport::Concern
      sig { params(adds: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def add_to_set(adds); end
      sig { params(pushes: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def push(pushes); end
    end
    module Settable
      extend ActiveSupport::Concern
      sig { params(setters: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def set(setters); end
    end
    module Creatable
      extend ActiveSupport::Concern
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def insert(options = {}); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_inserts; end
      sig { returns(Document) }
      def insert_as_embedded; end
      sig { returns(Document) }
      def insert_as_root; end
      sig { returns(T::Boolean) }
      def post_process_insert; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def prepare_insert(options = {}); end
      module ClassMethods
        sig { params(attributes: T.nilable(T.any(T::Hash[T.untyped, T.untyped], T::Array[T.untyped])), block: T.untyped).returns(T.any(Document, T::Array[Document])) }
        def create(attributes = nil, &block); end
        sig { params(attributes: T.nilable(T.any(T::Hash[T.untyped, T.untyped], T::Array[T.untyped])), block: T.untyped).returns(T.any(Document, T::Array[Document])) }
        def create!(attributes = nil, &block); end
      end
    end
    module Deletable
      extend ActiveSupport::Concern
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(TrueClass) }
      def delete(options = {}); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def atomic_deletes; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def delete_as_embedded(options = {}); end
      sig { returns(T::Boolean) }
      def delete_as_root; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def notifying_parent?(options = {}); end
      sig { returns(Object) }
      def prepare_delete; end
      module ClassMethods
        sig { params(conditions: T::Hash[T.untyped, T.untyped]).returns(Integer) }
        def delete_all(conditions = {}); end
      end
    end
    module Renamable
      extend ActiveSupport::Concern
      sig { params(renames: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def rename(renames); end
    end
    module Updatable
      sig { params(name: T.any(Symbol, String), value: Object).returns(T::Boolean) }
      def update_attribute(name, value); end
      sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def update(attributes = {}); end
      sig { params(attributes: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def update!(attributes = {}); end
      sig { returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def init_atomic_updates; end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def prepare_update(options = {}); end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def update_document(options = {}); end
    end
    module Unsettable
      extend ActiveSupport::Concern
      sig { params(fields: T.any(String, Symbol)).returns(Document) }
      def unset(*fields); end
    end
    module Upsertable
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def upsert(options = {}); end
      sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
      def prepare_upsert(options = {}); end
    end
    module Destroyable
      extend ActiveSupport::Concern
      sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Boolean) }
      def destroy(options = nil); end
      sig { params(options: T.untyped).returns(T.untyped) }
      def destroy!(options = {}); end
      module ClassMethods
        sig { params(conditions: T.nilable(T::Hash[T.untyped, T.untyped])).returns(Integer) }
        def destroy_all(conditions = nil); end
      end
    end
    module Incrementable
      extend ActiveSupport::Concern
      sig { params(increments: T::Hash[T.untyped, T.untyped]).returns(Document) }
      def inc(increments); end
    end
  end
  module QueryCache
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    def self.cache_table; end
    sig { returns(T.nilable(T.any())) }
    def self.clear_cache; end
    sig { params(value: T::Boolean).returns(T.untyped) }
    def self.enabled=(value); end
    sig { returns(T::Boolean) }
    def self.enabled?; end
    sig { params(block: T.untyped).returns(Object) }
    def self.cache(&block); end
    sig { params(block: T.untyped).returns(Object) }
    def self.uncached(&block); end
    class Middleware
      sig { params(app: Object).void }
      def initialize(app); end
      sig { params(env: Object).returns(Object) }
      def call(env); end
    end
    class CachedCursor < Mongo::Cursor
      sig { returns(T.untyped) }
      def each; end
      sig { returns(String) }
      def inspect; end
      sig { params(result: T.untyped).returns(T.untyped) }
      def process(result); end
    end
    module Base
      sig { params(method_names: T.untyped).returns(T.untyped) }
      def alias_query_cache_clear(*method_names); end
    end
    module View
      extend ActiveSupport::Concern
      sig { returns(T.untyped) }
      def each; end
      sig { returns(T.untyped) }
      def cached_cursor; end
      sig { returns(T.untyped) }
      def cache_key; end
      sig { returns(T::Boolean) }
      def system_collection?; end
    end
    module Collection
      extend ActiveSupport::Concern
    end
    module Document
      sig { returns(T.untyped) }
      def reload; end
    end
  end
  module Traversable
    extend ActiveSupport::Concern
    sig { returns(T.untyped) }
    def _parent; end
    sig { params(p: T.untyped).returns(T.untyped) }
    def _parent=(p); end
    sig { returns(T::Array[Document]) }
    def _children; end
    sig { returns(T::Array[Document]) }
    def collect_children; end
    sig { returns(T::Array[Document]) }
    def flag_children_persisted; end
    sig { returns(T::Boolean) }
    def hereditary?; end
    sig { params(document: Document).returns(Document) }
    def parentize(document); end
    sig { params(child: Document).returns(T.untyped) }
    def remove_child(child); end
    sig { returns(T::Array[Document]) }
    def reset_persisted_children; end
    sig { returns(T.nilable(T.any())) }
    def _reset_memoized_children!; end
    sig { returns(Document) }
    def _root; end
    sig { returns(T::Boolean) }
    def _root?; end
    module DiscriminatorAssignment
      sig { params(value: T.untyped).returns(T.untyped) }
      def discriminator_key=(value); end
      sig { params(value: T.untyped).returns(T.untyped) }
      def discriminator_value=(value); end
    end
    module DiscriminatorRetrieval
      sig { returns(T.untyped) }
      def discriminator_value; end
    end
    module ClassMethods
      sig { returns(T::Boolean) }
      def hereditary?; end
      sig { params(subclass: Class).returns(T.untyped) }
      def inherited(subclass); end
    end
  end
  module Validatable
    extend ActiveSupport::Concern
    sig { returns(T.untyped) }
    def begin_validate; end
    sig { returns(T.untyped) }
    def exit_validate; end
    sig { params(options: T::Hash[T.untyped, T.untyped]).returns(T::Boolean) }
    def performing_validations?(options = {}); end
    sig { params(attr: Symbol).returns(Object) }
    def read_attribute_for_validation(attr); end
    sig { params(context: T.nilable(Symbol)).returns(T::Boolean) }
    def valid?(context = nil); end
    sig { returns(T::Boolean) }
    def validated?; end
    sig { returns(T::Boolean) }
    def validating_with_query?; end
    module ClassMethods
      sig { params(association: Association).returns(T.untyped) }
      def validates_relation(association); end
      sig { params(args: T.any(Class, T::Hash[T.untyped, T.untyped]), block: T.untyped).returns(T.untyped) }
      def validates_with(*args, &block); end
      sig { returns(T::Boolean) }
      def validating_with_query?; end
    end
    class FormatValidator < ActiveModel::Validations::FormatValidator
      include Mongoid::Validatable::Localizable
      sig { params(document: Document, attribute: T.any(Symbol, String), value: Object).returns(T.untyped) }
      def validate_each(document, attribute, value); end
    end
    class LengthValidator < ActiveModel::Validations::LengthValidator
      include Mongoid::Validatable::Localizable
      sig { params(document: Document, attribute: T.any(Symbol, String), value: Object).returns(T.untyped) }
      def validate_each(document, attribute, value); end
    end
    module Macros
      extend ActiveSupport::Concern
      sig { params(args: T::Array[T.untyped]).returns(T.untyped) }
      def validates_associated(*args); end
      sig { params(args: T::Array[T.untyped]).returns(T.untyped) }
      def validates_uniqueness_of(*args); end
      sig { params(args: T::Array[T.untyped]).returns(T.untyped) }
      def validates_format_of(*args); end
      sig { params(args: T::Array[T.untyped]).returns(T.untyped) }
      def validates_length_of(*args); end
      sig { params(args: T::Array[T.untyped]).returns(T.untyped) }
      def validates_presence_of(*args); end
    end
    class PresenceValidator < ActiveModel::EachValidator
      sig { params(document: Document, attribute: Symbol, value: Object).returns(T.untyped) }
      def validate_each(document, attribute, value); end
      sig { params(doc: Document, attr: Symbol, value: Object).returns(T::Boolean) }
      def relation_or_fk_missing?(doc, attr, value); end
      sig { params(value: Object).returns(T::Boolean) }
      def not_present?(value); end
    end
    module Queryable
      sig { params(document: Document).returns(Object) }
      def with_query(document); end
    end
    class AssociatedValidator < ActiveModel::EachValidator
      sig { params(document: Document, attribute: Symbol, value: Object).returns(T.untyped) }
      def validate_each(document, attribute, value); end
    end
    class UniquenessValidator < ActiveModel::EachValidator
      include Mongoid::Validatable::Queryable
      sig { params(document: Document, attribute: Symbol, value: Object).returns(Errors) }
      def validate_each(document, attribute, value); end
      sig { params(document: Document, attribute: Symbol, value: Object).returns(T.untyped) }
      def add_error(document, attribute, value); end
      sig { returns(T::Boolean) }
      def case_sensitive?; end
      sig do
        params(
          base: T.any(Class, Mongoid::Association::Proxy),
          document: Document,
          attribute: Symbol,
          value: Object
        ).returns(Criteria)
      end
      def create_criteria(base, document, attribute, value); end
      sig { params(document: Document, attribute: Symbol, value: Object).returns(Criteria) }
      def criterion(document, attribute, value); end
      sig { params(value: Object).returns(T.any(Object, Regexp)) }
      def filter(value); end
      sig { params(criteria: Criteria, document: Document, _attribute: T.untyped).returns(Criteria) }
      def scope(criteria, document, _attribute); end
      sig { params(document: Document).returns(T::Boolean) }
      def skip_validation?(document); end
      sig { params(document: Document).returns(T::Boolean) }
      def scope_value_changed?(document); end
      sig { params(document: Document, attribute: Symbol, value: Object).returns(T::Array[T.any(Object, Object)]) }
      def to_validate(document, attribute, value); end
      sig { params(document: Document, attribute: Symbol, value: Object).returns(T.untyped) }
      def validate_embedded(document, attribute, value); end
      sig { params(document: Document, attribute: Symbol, value: Object).returns(T.untyped) }
      def validate_root(document, attribute, value); end
      sig { params(document: Document, attribute: Symbol).returns(T::Boolean) }
      def validation_required?(document, attribute); end
      sig { params(document: Document, attribute: Symbol).returns(T::Boolean) }
      def localized?(document, attribute); end
      sig { params(document: Document).returns(Object) }
      def with_query(document); end
    end
    module Localizable
      sig { params(document: Document, attribute: T.any(Symbol, String), value: Object).returns(T.untyped) }
      def validate_each(document, attribute, value); end
    end
  end
  module Serializable
    extend ActiveSupport::Concern
    sig { params(options: T.nilable(T::Hash[T.untyped, T.untyped])).returns(T::Hash[T.untyped, T.untyped]) }
    def serializable_hash(options = nil); end
    sig { params(options: T.untyped).returns(T::Array[String]) }
    def field_names(options); end
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
    sig { params(inclusions: T.any(T::Hash[T.untyped, T.untyped], Symbol, T::Array[Symbol])).returns(T::Array[Symbol]) }
    def relation_names(inclusions); end
    sig { params(inclusions: T.any(T::Hash[T.untyped, T.untyped], Symbol, T::Array[Symbol]), options: T::Hash[T.untyped, T.untyped], name: Symbol).returns(T::Hash[T.untyped, T.untyped]) }
    def relation_options(inclusions, options, name); end
  end
  module Interceptable
    extend ActiveSupport::Concern
    CALLBACKS = T.let([
  :after_build,
  :after_create,
  :after_destroy,
  :after_find,
  :after_initialize,
  :after_save,
  :after_touch,
  :after_update,
  :after_upsert,
  :after_validation,
  :around_create,
  :around_destroy,
  :around_save,
  :around_update,
  :around_upsert,
  :before_create,
  :before_destroy,
  :before_save,
  :before_update,
  :before_upsert,
  :before_validation
].freeze, T.untyped)
    sig { params(kind: Symbol).returns(T::Boolean) }
    def callback_executable?(kind); end
    sig { params(kind: Symbol).returns(T::Boolean) }
    def in_callback_state?(kind); end
    sig { params(kinds: Symbol).returns(Object) }
    def run_after_callbacks(*kinds); end
    sig { params(kinds: Symbol).returns(Object) }
    def run_before_callbacks(*kinds); end
    sig { params(kind: Symbol, args: T::Array[T.untyped], block: T.untyped).returns(Document) }
    def run_callbacks(kind, *args, &block); end
    sig { returns(T::Boolean) }
    def before_callback_halted?; end
    sig { params(kind: Symbol, children: T.untyped).returns(T::Array[Document]) }
    def cascadable_children(kind, children = Set.new); end
    sig { params(kind: Symbol, child: Document, association: T.untyped).returns(T::Boolean) }
    def cascadable_child?(kind, child, association); end
    sig { params(kind: Symbol, child: Document).returns(Symbol) }
    def child_callback_type(kind, child); end
    sig { params(filter: Symbol).returns(T.untyped) }
    def halted_callback_hook(filter); end
    sig { params(place: Symbol, kind: Symbol).returns(Object) }
    def run_targeted_callbacks(place, kind); end
  end
  module Extensions
    module Set
      sig { returns(T::Array[T.untyped]) }
      def mongoize; end
      module ClassMethods
        sig { params(object: T::Array[T.untyped]).returns(T::Set[T.untyped]) }
        def demongoize(object); end
        sig { params(object: T::Set[T.untyped]).returns(T::Array[T.untyped]) }
        def mongoize(object); end
      end
    end
    module Date
      EPOCH = T.let(::Date.new(1970, 1, 1), T.untyped)
      sig { returns(T.any(Time, ActiveSupport::TimeWithZone)) }
      def __mongoize_time__; end
      sig { returns(Time) }
      def mongoize; end
      module ClassMethods
        sig { params(object: Time).returns(Date) }
        def demongoize(object); end
        sig { params(object: Object).returns(Time) }
        def mongoize(object); end
      end
    end
    module Hash
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def __evolve_object_id__; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def __mongoize_object_id__; end
      sig { params(klass: T.untyped).returns(T::Hash[T.untyped, T.untyped]) }
      def __consolidate__(klass); end
      sig { returns(T::Boolean) }
      def _mongoid_unsatisfiable_criteria?; end
      sig { returns(Object) }
      def delete_id; end
      sig { returns(Object) }
      def extract_id; end
      sig { params(string: String).returns(Object) }
      def __nested__(string); end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def mongoize; end
      sig { returns(T::Boolean) }
      def resizable?; end
      sig { returns(Criteria) }
      def to_criteria; end
      sig do
        params(
          operator: String,
          klass: Class,
          key: T.any(String, Symbol),
          value: Object
        ).returns(Object)
      end
      def mongoize_for(operator, klass, key, value); end
      module ClassMethods
        sig { params(object: Object).returns(T::Hash[T.untyped, T.untyped]) }
        def mongoize(object); end
        sig { returns(T::Boolean) }
        def resizable?; end
      end
    end
    module Time
      EPOCH = T.let(::Time.utc(1970, 1, 1, 0, 0, 0), T.untyped)
      sig { returns(Time) }
      def __mongoize_time__; end
      sig { returns(Time) }
      def mongoize; end
      module ClassMethods
        sig { returns(Time) }
        def configured; end
        sig { params(object: Time).returns(Time) }
        def demongoize(object); end
        sig { params(object: Object).returns(Time) }
        def mongoize(object); end
      end
    end
    module Array
      sig { returns(T::Array[BSON::ObjectId]) }
      def __evolve_object_id__; end
      sig { returns(T::Array[T.untyped]) }
      def __find_args__; end
      sig { returns(T::Array[BSON::ObjectId]) }
      def __mongoize_object_id__; end
      sig { returns(T.any(Time, ActiveSupport::TimeWithZone)) }
      def __mongoize_time__; end
      sig { returns(T::Boolean) }
      def blank_criteria?; end
      sig { returns(T::Boolean) }
      def multi_arged?; end
      sig { returns(T::Array[T.untyped]) }
      def mongoize; end
      sig { params(object: Object).returns(Object) }
      def delete_one(object); end
      sig { returns(T::Boolean) }
      def resizable?; end
      module ClassMethods
        sig { params(association: Association, object: Object).returns(T::Array[T.untyped]) }
        def __mongoize_fk__(association, object); end
        sig { params(object: Object).returns(T::Array[T.untyped]) }
        def mongoize(object); end
        sig { returns(T::Boolean) }
        def resizable?; end
      end
    end
    module Float
      sig { returns(T.any(Time, ActiveSupport::TimeWithZone)) }
      def __mongoize_time__; end
      sig { returns(T::Boolean) }
      def numeric?; end
      module ClassMethods
        sig { params(object: Object).returns(String) }
        def mongoize(object); end
      end
    end
    module Range
      sig { returns(T::Array[T.untyped]) }
      def __find_args__; end
      sig { returns(T::Hash[T.untyped, T.untyped]) }
      def mongoize; end
      sig { returns(T::Boolean) }
      def resizable?; end
      module ClassMethods
        sig { params(object: T::Hash[T.untyped, T.untyped]).returns(T::Range[T.untyped]) }
        def demongoize(object); end
        sig { params(object: T::Range[T.untyped]).returns(T::Hash[T.untyped, T.untyped]) }
        def mongoize(object); end
      end
    end
    module Module
      sig { params(name: T.any(String, Symbol), block: T.untyped).returns(Method) }
      def re_define_method(name, &block); end
    end
    module Object
      sig { returns(Object) }
      def __evolve_object_id__; end
      sig { returns(Object) }
      def __find_args__; end
      sig { returns(Object) }
      def __mongoize_time__; end
      sig { returns(String) }
      def __setter__; end
      sig { returns(Object) }
      def __sortable__; end
      sig { returns(Object) }
      def __to_inc__; end
      sig { returns(T::Boolean) }
      def blank_criteria?; end
      sig { params(name: T.any(String, Symbol), args: T::Array[T.untyped]).returns(T.nilable(Object)) }
      def do_or_do_not(name, *args); end
      sig { params(name: String).returns(T.any(Object, T::Boolean)) }
      def ivar(name); end
      sig { returns(Object) }
      def mongoize; end
      sig { returns(T::Boolean) }
      def multi_arged?; end
      sig { returns(T::Boolean) }
      def numeric?; end
      sig { params(name: String).returns(T::Boolean) }
      def remove_ivar(name); end
      sig { returns(T::Boolean) }
      def resizable?; end
      sig { returns(Object) }
      def substitutable; end
      sig { params(name: T.any(String, Symbol), args: T::Array[T.untyped]).returns(T.nilable(Object)) }
      def you_must(name, *args); end
      module ClassMethods
        sig { params(association: Association, object: Object).returns(Object) }
        def __mongoize_fk__(association, object); end
        sig { params(object: Object).returns(Object) }
        def demongoize(object); end
        sig { params(object: Object).returns(Object) }
        def mongoize(object); end
      end
    end
    module Regexp
      module ClassMethods
        sig { params(object: T.any(Regexp, String)).returns(Regexp) }
        def mongoize(object); end
      end
    end
    module String
      sig { returns(T.any(String, BSON::ObjectId)) }
      def __evolve_object_id__; end
      sig { returns(T.nilable(T.any(String, BSON::ObjectId))) }
      def __mongoize_object_id__; end
      sig { returns(T.any(Time, ActiveSupport::TimeWithZone)) }
      def __mongoize_time__; end
      sig { returns(String) }
      def collectionize; end
      sig { returns(T::Boolean) }
      def mongoid_id?; end
      sig { returns(T::Boolean) }
      def numeric?; end
      sig { returns(String) }
      def reader; end
      sig { returns(T::Boolean) }
      def writer?; end
      sig { returns(T::Boolean) }
      def valid_method_name?; end
      sig { returns(T::Boolean) }
      def before_type_cast?; end
      sig { returns(T::Boolean) }
      def unconvertable_to_bson?; end
      sig { returns(T.any(String, BSON::ObjectId)) }
      def convert_to_object_id; end
      sig { returns(T.any(T::Boolean, T.untyped)) }
      attr_accessor :unconvertable_to_bson
      module ClassMethods
        sig { params(object: Object).returns(String) }
        def demongoize(object); end
        sig { params(object: Object).returns(String) }
        def mongoize(object); end
      end
    end
    module Symbol
      sig { returns(T::Boolean) }
      def mongoid_id?; end
      module ClassMethods
        sig { params(object: Object).returns(Symbol) }
        def demongoize(object); end
        sig { params(object: Object).returns(Symbol) }
        def mongoize(object); end
      end
    end
    module Integer
      sig { returns(T.any(Time, ActiveSupport::TimeWithZone)) }
      def __mongoize_time__; end
      sig { returns(T::Boolean) }
      def numeric?; end
      sig { returns(T::Boolean) }
      def unconvertable_to_bson?; end
      module ClassMethods
        sig { params(object: T.untyped).returns(String) }
        def mongoize(object); end
      end
    end
    module DateTime
      sig { returns(T.any(Time, ActiveSupport::TimeWithZone)) }
      def __mongoize_time__; end
      sig { returns(Time) }
      def mongoize; end
      module ClassMethods
        sig { params(object: Time).returns(DateTime) }
        def demongoize(object); end
        sig { params(object: Object).returns(Time) }
        def mongoize(object); end
      end
    end
    module NilClass
      sig { returns(T.nilable(T.any())) }
      def __setter__; end
      sig { returns(String) }
      def collectionize; end
    end
    module ObjectId
      sig { returns(BSON::ObjectId) }
      def __evolve_object_id__; end
      module ClassMethods
        sig { params(object: Object).returns(BSON::ObjectId) }
        def evolve(object); end
        sig { params(object: Object).returns(BSON::ObjectId) }
        def mongoize(object); end
      end
    end
    module Decimal128
      sig { returns(BSON::Decimal128) }
      def __evolve_decimal128__; end
      module ClassMethods
        sig { params(object: Object).returns(BSON::Decimal128) }
        def evolve(object); end
      end
    end
    module TrueClass
      sig { returns(Integer) }
      def __sortable__; end
      sig { params(other: Class).returns(T::Boolean) }
      def is_a?(other); end
    end
    module BigDecimal
      sig { returns(Float) }
      def __to_inc__; end
      sig { returns(Object) }
      def mongoize; end
      sig { returns(T::Boolean) }
      def numeric?; end
      module ClassMethods
        sig { params(object: Object).returns(T.nilable(BigDecimal)) }
        def demongoize(object); end
        sig { params(object: Object).returns(T.nilable(String)) }
        def mongoize(object); end
      end
    end
    module FalseClass
      sig { returns(Integer) }
      def __sortable__; end
      sig { params(other: Class).returns(T::Boolean) }
      def is_a?(other); end
    end
    module TimeWithZone
      sig { returns(ActiveSupport::TimeWithZone) }
      def __mongoize_time__; end
      sig { returns(Time) }
      def mongoize; end
      module ClassMethods
        sig { params(object: Time).returns(TimeWithZone) }
        def demongoize(object); end
        sig { params(object: Object).returns(Time) }
        def mongoize(object); end
      end
    end
  end
  module Tasks
    module Database
      extend Mongoid::Tasks::Database
      sig { params(models: T.untyped).returns(T::Array[Class]) }
      def create_indexes(models = ::Mongoid.models); end
      sig { params(models: T.untyped).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def undefined_indexes(models = ::Mongoid.models); end
      sig { params(models: T.untyped).returns(T::Hash[Class, [T::Hash[T.untyped, T.untyped]]]) }
      def remove_undefined_indexes(models = ::Mongoid.models); end
      sig { params(models: T.untyped).returns(T::Array[Class]) }
      def remove_indexes(models = ::Mongoid.models); end
      sig { params(models: T.untyped).returns(T::Array[Class]) }
      def shard_collections(models = ::Mongoid.models); end
      sig { returns(T.untyped) }
      def logger; end
      sig { params(models: T.untyped).returns(T::Array[Class]) }
      def self.create_indexes(models = ::Mongoid.models); end
      sig { params(models: T.untyped).returns(T::Array[T::Hash[T.untyped, T.untyped]]) }
      def self.undefined_indexes(models = ::Mongoid.models); end
      sig { params(models: T.untyped).returns(T::Hash[Class, [T::Hash[T.untyped, T.untyped]]]) }
      def self.remove_undefined_indexes(models = ::Mongoid.models); end
      sig { params(models: T.untyped).returns(T::Array[Class]) }
      def self.remove_indexes(models = ::Mongoid.models); end
      sig { params(models: T.untyped).returns(T::Array[Class]) }
      def self.shard_collections(models = ::Mongoid.models); end
      sig { returns(T.untyped) }
      def self.logger; end
    end
  end
  module Errors
    class Callback < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, method: Symbol).void }
      def initialize(klass, method); end
    end
    class NoParent < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class).void }
      def initialize(klass); end
    end
    class EagerLoad < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(name: Symbol).void }
      def initialize(name); end
    end
    class NoMetadata < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class).void }
      def initialize(klass); end
    end
    class Validations < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(document: T.untyped).void }
      def initialize(document); end
      sig { returns(T.untyped) }
      attr_reader :document
    end
    class InvalidFind < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { void }
      def initialize; end
    end
    class InvalidPath < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class).void }
      def initialize(klass); end
    end
    class InvalidTime < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(value: Object).void }
      def initialize(value); end
    end
    class InvalidField < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, name: Symbol).void }
      def initialize(klass, name); end
      sig { params(klass: Class, name: Symbol).returns(T.any(Class, Module)) }
      def origin(klass, name); end
      sig { params(klass: Class, name: Symbol).returns(T::Array[T.any(String, Integer)]) }
      def location(klass, name); end
    end
    class InvalidIndex < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, spec: T::Hash[T.untyped, T.untyped], options: T::Hash[T.untyped, T.untyped]).void }
      def initialize(klass, spec, options); end
    end
    class InvalidQuery < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(msg: T.untyped).void }
      def initialize(msg); end
      sig { params(expr: Object).returns(T.untyped) }
      def self.truncate_expr(expr); end
    end
    class InvalidScope < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, value: Object).void }
      def initialize(klass, value); end
    end
    class InvalidValue < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(field_class: T.untyped, value_class: T.untyped).void }
      def initialize(field_class, value_class); end
    end
    class MongoidError < StandardError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(key: T.untyped, attributes: T.untyped).returns(String) }
      def compose_message(key, attributes = {}); end
      sig { params(key: String, options: T::Hash[T.untyped, T.untyped]).returns(String) }
      def translate(key, options); end
      sig { params(key: T.any(String, Symbol), attributes: T::Hash[T.untyped, T.untyped]).returns(String) }
      def translate_problem(key, attributes); end
      sig { params(key: T.any(String, Symbol), attributes: T::Hash[T.untyped, T.untyped]).returns(String) }
      def translate_summary(key, attributes); end
      sig { params(key: T.any(String, Symbol), attributes: T::Hash[T.untyped, T.untyped]).returns(String) }
      def translate_resolution(key, attributes); end
      sig { returns(T.untyped) }
      attr_reader :problem
      sig { returns(T.untyped) }
      attr_reader :summary
      sig { returns(T.untyped) }
      attr_reader :resolution
    end
    class UnknownModel < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: String, value: String).void }
      def initialize(klass, value); end
    end
    class NoEnvironment < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { void }
      def initialize; end
    end
    class InvalidOptions < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(name: Symbol, invalid: Symbol, valid: T::Array[Symbol]).void }
      def initialize(name, invalid, valid); end
    end
    class MixedRelations < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(root_klass: T.untyped, embedded_klass: T.untyped).void }
      def initialize(root_klass, embedded_klass); end
    end
    class NoClientHosts < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(name: T.any(Symbol, String), config: T::Hash[T.untyped, T.untyped]).void }
      def initialize(name, config); end
    end
    class ScopeOverwrite < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(model_name: T.untyped, scope_name: T.untyped).void }
      def initialize(model_name, scope_name); end
    end
    class InvalidIncludes < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, args: T::Array[Object]).void }
      def initialize(klass, args); end
    end
    class InvalidRelation < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, name: Symbol).void }
      def initialize(klass, name); end
      sig { params(klass: Class, name: Symbol).returns(T.any(Class, Module)) }
      def origin(klass, name); end
      sig { params(klass: Class, name: Symbol).returns(T::Array[T.any(String, Integer)]) }
      def location(klass, name); end
    end
    class NoClientConfig < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(name: T.any(String, Symbol)).void }
      def initialize(name); end
    end
    class UnsavedDocument < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(base: T.untyped, document: T.untyped).void }
      def initialize(base, document); end
    end
    class InverseNotFound < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig do
        params(
          base: Class,
          name: Symbol,
          klass: Class,
          inverse: Symbol
        ).void
      end
      def initialize(base, name, klass, inverse); end
    end
    class NoClientsConfig < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { void }
      def initialize; end
    end
    class NoDefaultClient < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(keys: T::Array[Symbol]).void }
      def initialize(keys); end
    end
    class ReadonlyDocument < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class).void }
      def initialize(klass); end
    end
    class UnknownAttribute < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, name: T.any(String, Symbol)).void }
      def initialize(klass, name); end
    end
    class DeleteRestriction < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(document: Class, relation: Symbol).void }
      def initialize(document, relation); end
    end
    class DocumentNotFound < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, params: T.any(T::Hash[T.untyped, T.untyped], T::Array[T.untyped], Object), unmatched: T.nilable(T::Array[T.untyped])).void }
      def initialize(klass, params, unmatched = nil); end
      sig { params(unmatched: T.any(Object, T::Array[T.untyped])).returns(String) }
      def missing(unmatched); end
      sig { params(params: T.any(Object, T::Array[T.untyped])).returns(String) }
      def searched(params); end
      sig { params(params: T.any(Object, T::Array[T.untyped])).returns(Integer) }
      def total(params); end
      sig { params(params: T.untyped).returns(String) }
      def message_key(params); end
      sig { returns(T.untyped) }
      attr_reader :klass
      sig { returns(T.untyped) }
      attr_reader :params
    end
    class InvalidCollection < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: T.untyped).void }
      def initialize(klass); end
    end
    class NoClientDatabase < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(name: T.any(Symbol, String), config: T::Hash[T.untyped, T.untyped]).void }
      def initialize(name, config); end
    end
    class ReadonlyAttribute < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(name: T.any(Symbol, String), value: Object).void }
      def initialize(name, value); end
    end
    class InvalidSessionUse < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(error_type: Symbol).void }
      def initialize(error_type); end
    end
    class InvalidFieldOption < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig do
        params(
          klass: Class,
          name: Symbol,
          option: Symbol,
          valid: T::Array[Symbol]
        ).void
      end
      def initialize(klass, name, option, valid); end
    end
    class NoMapReduceOutput < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(command: T::Hash[T.untyped, T.untyped]).void }
      def initialize(command); end
    end
    class InvalidConfigOption < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(name: T.any(Symbol, String)).void }
      def initialize(name); end
    end
    class AmbiguousRelationship < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig do
        params(
          klass: Class,
          inverse: Class,
          name: Symbol,
          candidates: T::Array[Symbol]
        ).void
      end
      def initialize(klass, inverse, name, candidates); end
    end
    class DocumentNotDestroyed < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(id: Object, klass: Class).void }
      def initialize(id, klass); end
    end
    class InvalidFieldOperator < Mongoid::Errors::InvalidQuery
      VALID_OPERATORS = T.let(%w(
  all elemMatch eq exists gt gte in lt lte ne nin not regex size
).freeze, T.untyped)
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(operator: String).void }
      def initialize(operator); end
      sig { returns(String) }
      attr_reader :operator
    end
    class InvalidStorageParent < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class).void }
      def initialize(klass); end
    end
    class UnsupportedJavascript < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, javascript: String).void }
      def initialize(klass, javascript); end
    end
    class InvalidRelationOption < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig do
        params(
          klass: Class,
          name: T.any(String, Symbol),
          option: Symbol,
          valid_options: T::Array[Symbol]
        ).void
      end
      def initialize(klass, name, option, valid_options); end
    end
    class InvalidStorageOptions < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, options: T.any(T::Hash[T.untyped, T.untyped], String, Symbol)).void }
      def initialize(klass, options); end
    end
    class CriteriaArgumentRequired < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(query_method: T.untyped).void }
      def initialize(query_method); end
    end
    class InvalidDependentStrategy < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(association: Mongoid::Association, invalid_strategy: T.any(Symbol, String), valid_strategies: T::Array[Symbol]).void }
      def initialize(association, invalid_strategy, valid_strategies); end
    end
    class InvalidPersistenceOption < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(invalid: Symbol, valid: T::Array[Symbol]).void }
      def initialize(invalid, valid); end
    end
    class MixedClientConfiguration < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(name: Symbol, config: T::Hash[T.untyped, T.untyped]).void }
      def initialize(name, config); end
    end
    class InvalidElemMatchOperator < Mongoid::Errors::InvalidQuery
      VALID_OPERATORS = T.let(%w(
  and all eq exists gt gte in lt lte ne nin nor not or regex size
).freeze, T.untyped)
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(operator: String).void }
      def initialize(operator); end
      sig { returns(String) }
      attr_reader :operator
    end
    class InvalidExpressionOperator < Mongoid::Errors::InvalidQuery
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(operator: String).void }
      def initialize(operator); end
      sig { returns(String) }
      attr_reader :operator
    end
    class InvalidDiscriminatorKeyTarget < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(class_name: T.untyped, superclass: T.untyped).void }
      def initialize(class_name, superclass); end
    end
    class InvalidEstimatedCountCriteria < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(class_name: String).void }
      def initialize(class_name); end
    end
    class InvalidSetPolymorphicRelation < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(name: T.untyped, klass: T.untyped, other_klass: T.untyped).void }
      def initialize(name, klass, other_klass); end
    end
    class InMemoryCollationNotSupported < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { void }
      def initialize; end
    end
    class TooManyNestedAttributeRecords < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(association: T.untyped, limit: T.untyped).void }
      def initialize(association, limit); end
    end
    class NestedAttributesMetadataNotFound < Mongoid::Errors::MongoidError
      BASE_KEY = T.let("mongoid.errors.messages", T.untyped)
      sig { params(klass: Class, name: T.any(Symbol, String)).void }
      def initialize(klass, name); end
    end
  end
  class Boolean
    sig { params(object: T.untyped).returns(String) }
    def self.mongoize(object); end
  end
  class StringifiedSymbol
    sig { params(object: Object).returns(Symbol) }
    def self.demongoize(object); end
    sig { params(object: Object).returns(Symbol) }
    def self.mongoize(object); end
    sig { params(object: T.untyped).returns(T.untyped) }
    def self.evolve(object); end
  end
  class PersistenceContext
    extend Forwardable
    EXTRA_OPTIONS = T.let([ :client,
  :collection
].freeze, T.untyped)
    VALID_OPTIONS = T.let(( ::Mongo::Client::VALID_OPTIONS + EXTRA_OPTIONS ).freeze, T.untyped)
    sig { params(object: Object, opts: T::Hash[T.untyped, T.untyped]).void }
    def initialize(object, opts = {}); end
    sig { params(parent: T.nilable(Object)).returns(::Mongo::Collection) }
    def collection(parent = nil); end
    sig { returns(String) }
    def collection_name; end
    sig { returns(String) }
    def database_name; end
    sig { returns(::Mongo::Client) }
    def client; end
    sig { returns(T.untyped) }
    def client_name; end
    sig { params(other: Object).returns(T::Boolean) }
    def ==(other); end
    sig { params(opts: T.untyped).returns(T.untyped) }
    def set_options!(opts); end
    sig { params(name: T.untyped).returns(T.untyped) }
    def __evaluate__(name); end
    sig { returns(T.untyped) }
    def client_options; end
    sig { returns(T.untyped) }
    def database_name_option; end
    sig { params(object: Object, options_or_context: T.any(T::Hash[T.untyped, T.untyped], Mongoid::PersistenceContext)).returns(::Mongoid::PersistenceContext) }
    def self.set(object, options_or_context); end
    sig { params(object: Object).returns(::Mongoid::PersistenceContext) }
    def self.get(object); end
    sig { params(object: T.any(Class, Object), cluster: T.nilable(::Mongo::Cluster), original_context: T.nilable(::Mongoid::PersistenceContext)).returns(T.untyped) }
    def self.clear(object, cluster = nil, original_context = nil); end
    sig { returns(T::Hash[T.untyped, T.untyped]) }
    attr_reader :options
  end
  module Generators
    class Base < Rails::Generators::NamedBase
      sig { returns(T.untyped) }
      def self.source_root; end
    end
    class ModelGenerator < Mongoid::Generators::Base
      sig { returns(T.untyped) }
      def create_model_file; end
    end
    class ConfigGenerator < Rails::Generators::Base
      sig { returns(T.untyped) }
      def self.source_root; end
      sig { returns(T.untyped) }
      def app_name; end
      sig { returns(T.untyped) }
      def create_config_file; end
    end
  end
  module Railties
    module ControllerRuntime
      module ControllerExtension
        extend ActiveSupport::Concern
        sig { params(action: T.untyped, args: T.untyped).returns(T.untyped) }
        def process_action(action, *args); end
        sig { returns(T.untyped) }
        def cleanup_view_runtime; end
        sig { params(payload: T.untyped).returns(T.untyped) }
        def append_info_to_payload(payload); end
        module ClassMethods
          sig { params(payload: T.untyped).returns(T.untyped) }
          def log_process_action(payload); end
        end
      end
      class Collector
        VARIABLE_NAME = T.let("Mongoid.controller_runtime".freeze, T.untyped)
        sig { params(_: T.untyped).returns(T.untyped) }
        def started(_); end
        sig { params(e: T.untyped).returns(T.untyped) }
        def _completed(e); end
        sig { returns(T.untyped) }
        def self.runtime; end
        sig { params(value: T.untyped).returns(T.untyped) }
        def self.runtime=(value); end
        sig { returns(T.untyped) }
        def self.reset_runtime; end
      end
    end
  end
end
module Rails
  module Mongoid
    extend Rails::Mongoid
    sig { params(app: Application).returns(T.untyped) }
    def load_models(app); end
    sig { params(app: Application).returns(T.untyped) }
    def preload_models(app); end
    sig { params(file: String).returns(T.untyped) }
    def load_model(file); end
    sig { params(app: Application).returns(T.untyped) }
    def self.load_models(app); end
    sig { params(app: Application).returns(T.untyped) }
    def self.preload_models(app); end
    sig { params(file: String).returns(T.untyped) }
    def self.load_model(file); end
    class Railtie < Rails::Railtie
      sig { returns(T.untyped) }
      def self.rescue_responses; end
      sig { params(e: T.untyped).returns(T.untyped) }
      def handle_configuration_error(e); end
    end
  end
  module Generators
    class GeneratedAttribute
      sig { returns(T.untyped) }
      def type_class; end
    end
  end
end
class Boolean
end
