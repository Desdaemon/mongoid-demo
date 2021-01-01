# typed: strong

module Mongoid::Document::ClassMethods
  # include(::ActiveModel::Validations::ClassMethods)
  # include(::ActiveSupport::Callbacks::ClassMethods)
  # include(::ActiveModel::Validations::HelperMethods)
  # include(::ActiveModel::Conversion::ClassMethods)
  # include(::ActiveModel::ForbiddenAttributesProtection)
  # include(::ActiveModel::AttributeAssignment)
  # include(::ActiveModel::Model)
  # include(::ActiveModel::Serialization)
  # include(::ActiveModel::Naming)
  # include(::Mongoid::Atomic)
  # include(::Mongoid::Changeable)
  # include(::Mongoid::Clients::StorageOptions::ClassMethods)
  # include(::Mongoid::Clients::Options::ClassMethods)
  # include(::Mongoid::Clients::Sessions)
  # include(::Mongoid::Clients)
  # include(::Mongoid::Attributes::Nested)
  # include(::Mongoid::Attributes::Readonly)
  # include(::Mongoid::Attributes::Processing)
  # include(::Mongoid::Attributes)
  # include(::Mongoid::Fields)
  # include(::Mongoid::Indexable)
  # include(::Mongoid::Matchable)
  # include(::Mongoid::Persistable::Creatable)
  # include(::Mongoid::Persistable::Deletable)
  # include(::Mongoid::Persistable::Destroyable)
  # include(::Mongoid::Persistable::Incrementable)
  # include(::Mongoid::Persistable::Logical)
  # include(::Mongoid::Persistable::Poppable)
  # include(::Mongoid::Persistable::Pullable)
  # include(::Mongoid::Persistable::Pushable)
  # include(::Mongoid::Persistable::Renamable)
  # include(::Mongoid::Persistable::Settable)
  # include(::Mongoid::Persistable::Unsettable)
  # include(::Mongoid::Positional)
  # include(::Mongoid::Persistable::Savable)
  # include(::Mongoid::Persistable::Updatable)
  # include(::Mongoid::Persistable::Upsertable)
  # include(::Mongoid::Persistable)
  # include(::Mongoid::Association::Embedded::Cyclic)
  # include(::Mongoid::Association::Referenced::AutoSave)
  # include(::Mongoid::Association::Referenced::CounterCache)
  # include(::Mongoid::Association::Accessors)
  # include(::Mongoid::Association::Depending)
  # include(::Mongoid::Association::Builders)
  # include(::Mongoid::Association::Macros)
  # include(::Mongoid::Association::Reflections)
  # include(::Mongoid::Association::Referenced::Syncable)
  # include(::Mongoid::Association)
  # include(::Mongoid::Scopable)
  # include(::Mongoid::Selectable)
  # include(::Mongoid::Serializable)
  # include(::Mongoid::Shardable)
  # include(::Mongoid::Cacheable)
  # include(::Mongoid::Threaded::Lifecycle)
  # include(::Mongoid::Traversable)
  # include(::Mongoid::Validatable)
  # include(::Mongoid::Validatable::Macros)
  # include(::Mongoid::Interceptable)
  # include(::ActiveModel::Validations::Callbacks)
  # include(::Mongoid::Copyable)
  # include(::Mongoid::Evolvable)
  # include(::Mongoid::Inspectable)
  # include(::Mongoid::Reloadable)
  # include(::Mongoid::Stateful)
  # include(::Mongoid::Equality)
  # include(::Mongoid::Composable)
  # include(::Mongoid::Touchable::InstanceMethods)
  include(::ActiveModel::Validations::ClassMethods)
  include(::ActiveModel::Naming)
  include(::ActiveModel::Callbacks)
  include(::ActiveSupport::Callbacks::ClassMethods)
  include(::ActiveSupport::DescendantsTracker)
  include(::ActiveModel::Translation)
  include(::ActiveModel::Validations::HelperMethods)
  include(::ActiveModel::Conversion::ClassMethods)
  include(::Mongoid::Changeable::ClassMethods)
  include(::Mongoid::Clients::StorageOptions::ClassMethods)
  include(::Mongoid::Clients::Options::ClassMethods)
  include(::Mongoid::Clients::Sessions::ClassMethods)
  include(::Mongoid::Attributes::Nested::ClassMethods)
  include(::Mongoid::Attributes::Readonly::ClassMethods)
  include(::Mongoid::Attributes::ClassMethods)
  include(::Mongoid::Fields::ClassMethods)
  include(::Mongoid::Indexable::ClassMethods)
  include(::Mongoid::Persistable::Creatable::ClassMethods)
  include(::Mongoid::Persistable::Deletable::ClassMethods)
  include(::Mongoid::Persistable::Destroyable::ClassMethods)
  include(::Mongoid::Association::Embedded::Cyclic::ClassMethods)
  include(::Mongoid::Association::Referenced::CounterCache::ClassMethods)
  include(::Mongoid::Association::Depending::ClassMethods)
  include(::Mongoid::Association::Macros::ClassMethods)
  include(::Mongoid::Association::Reflections::ClassMethods)
  include(::Mongoid::Association::Referenced::Syncable::ClassMethods)
  include(::Mongoid::Scopable::ClassMethods)
  include(::Mongoid::Shardable::ClassMethods)
  include(::Mongoid::Threaded::Lifecycle::ClassMethods)
  include(::Mongoid::Traversable::ClassMethods)
  include(::Mongoid::Traversable::DiscriminatorRetrieval)
  include(::Mongoid::Validatable::ClassMethods)
  include(::Mongoid::Validatable::Macros)
  include(::ActiveModel::Validations::Callbacks::ClassMethods)
  include(::Mongoid::Findable)
  include(::Mongoid::Traversable::DiscriminatorAssignment)

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

  sig { returns T::Boolean }
  def cyclic?; end

  def default_scoping; end

  def default_scoping=(val); end

  sig { returns T::Boolean }
  def default_scoping?; end

  def dependents; end

  def dependents=(val); end

  sig { returns T::Boolean }
  def dependents?; end

  def dependents_owner; end

  def dependents_owner=(val); end

  sig { returns T::Boolean }
  def dependents_owner?; end

  def discriminator_key(*args, &block); end

  sig { returns T::Boolean }
  def discriminator_key?; end

  def discriminator_mapping; end

  def discriminator_mapping=(_arg0); end

  def embedded; end

  def embedded=(val); end

  sig { returns T::Boolean }
  def embedded?; end

  def embedded_relations; end

  def embedded_relations=(val); end

  sig { returns T::Boolean }
  def embedded_relations?; end

  def fields; end

  def fields=(val); end

  sig { returns T::Boolean }
  def fields?; end

  def get_discriminator_mapping(value); end

  def include_root_in_json(*args, &block); end

  def include_root_in_json=(val); end

  sig { returns T::Boolean }
  def include_root_in_json?; end

  def index_specifications; end

  def index_specifications=(obj); end

  def localized_fields; end

  def localized_fields=(val); end

  sig { returns T::Boolean }
  def localized_fields?; end

  def nested_attributes; end

  def nested_attributes=(val); end

  sig { returns T::Boolean }
  def nested_attributes?; end

  def polymorphic; end

  def polymorphic=(val); end

  sig { returns T::Boolean }
  def polymorphic?; end

  def post_processed_defaults; end

  def post_processed_defaults=(val); end

  sig { returns T::Boolean }
  def post_processed_defaults?; end

  def pre_processed_defaults; end

  def pre_processed_defaults=(val); end
  sig { returns T::Boolean }
  def pre_processed_defaults?; end

  def readonly_attributes; end

  def readonly_attributes=(val); end

  sig { returns T::Boolean }
  def readonly_attributes?; end

  def relations; end

  def relations=(val); end

  sig { returns T::Boolean }
  def relations?; end

  def shard_config; end

  def shard_config=(obj); end

  def shard_key_fields; end

  def shard_key_fields=(obj); end

  def storage_options; end

  def storage_options=(obj); end
end

# includeed by Mongoid for use in queries.
class Symbol
  def add_to_set(); end

  def all(); end

  def asc(); end

  def ascending(); end

  def avg(); end

  def desc(); end

  def descending(); end

  def elem_match(); end

  def exists(); end

  def first(); end

  def gt(); end

  def gte(); end

  def in(); end

  def intersects_line(); end

  def intersects_point(); end

  def intersects_polygon(); end

  def last(); end

  def lt(); end

  def lte(); end

  def max(); end

  def min(); end

  def mod(); end

  def ne(); end

  def near(); end

  def near_sphere(); end

  def nin(); end

  def not(); end

  def push(); end

  def sum(); end

  def with_size(); end

  def with_type(); end

  def within_box(); end

  def within_polygon(); end
end
