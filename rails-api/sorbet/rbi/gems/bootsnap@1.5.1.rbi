# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `bootsnap` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module ActiveSupport
  extend(::ActiveSupport::LazyLoadHooks)
  extend(::ActiveSupport::Autoload)

  def parse_json_times; end
  def parse_json_times=(obj); end
  def test_order; end
  def test_order=(obj); end

  class << self
    def eager_load!; end
    def escape_html_entities_in_json(*args, &block); end
    def escape_html_entities_in_json=(arg); end
    def gem_version; end
    def json_encoder(*args, &block); end
    def json_encoder=(arg); end
    def parse_json_times; end
    def parse_json_times=(obj); end
    def test_order; end
    def test_order=(obj); end
    def time_precision(*args, &block); end
    def time_precision=(arg); end
    def to_time_preserves_timezone; end
    def to_time_preserves_timezone=(value); end
    def use_standard_json_time_format(*args, &block); end
    def use_standard_json_time_format=(arg); end
    def version; end
  end
end

module ActiveSupport::Dependencies
  extend(::ActiveSupport::Dependencies)
  extend(::Bootsnap::LoadPathCache::CoreExt::ActiveSupport::ClassMethods)

  def _eager_load_paths; end
  def _eager_load_paths=(obj); end
  def autoload_module!(into, const_name, qualified_name, path_suffix); end
  def autoload_once_paths; end
  def autoload_once_paths=(obj); end
  def autoload_paths; end
  def autoload_paths=(obj); end
  def autoloadable_module?(path_suffix); end
  def autoloaded?(desc); end
  def autoloaded_constants; end
  def autoloaded_constants=(obj); end
  def clear; end
  def constant_watch_stack; end
  def constant_watch_stack=(obj); end
  def constantize(name); end
  def depend_on(file_name, message = T.unsafe(nil)); end
  def explicitly_unloadable_constants; end
  def explicitly_unloadable_constants=(obj); end
  def history; end
  def history=(obj); end
  def hook!; end
  def interlock; end
  def interlock=(obj); end
  def load?; end
  def load_file(path, const_paths = T.unsafe(nil)); end
  def load_missing_constant(from_mod, const_name); end
  def load_once_path?(path); end
  def loadable_constants_for_path(path, bases = T.unsafe(nil)); end
  def loaded; end
  def loaded=(obj); end
  def loading; end
  def loading=(obj); end
  def log(message); end
  def logger; end
  def logger=(obj); end
  def mark_for_unload(const_desc); end
  def mechanism; end
  def mechanism=(obj); end
  def new_constants_in(*descs); end
  def qualified_const_defined?(path); end
  def qualified_name_for(mod, name); end
  def reference(klass); end
  def remove_constant(const); end
  def remove_unloadable_constants!; end
  def require_or_load(file_name, const_path = T.unsafe(nil)); end
  def safe_constantize(name); end
  def search_for_file(path_suffix); end
  def to_constant_name(desc); end
  def unhook!; end
  def verbose; end
  def verbose=(obj); end
  def warnings_on_first_load; end
  def warnings_on_first_load=(obj); end
  def will_unload?(const_desc); end

  private

  def real_mod_name(mod); end

  class << self
    def _eager_load_paths; end
    def _eager_load_paths=(obj); end
    def autoload_once_paths; end
    def autoload_once_paths=(obj); end
    def autoload_paths; end
    def autoloaded_constants; end
    def autoloaded_constants=(obj); end
    def constant_watch_stack; end
    def constant_watch_stack=(obj); end
    def explicitly_unloadable_constants; end
    def explicitly_unloadable_constants=(obj); end
    def history; end
    def history=(obj); end
    def interlock; end
    def interlock=(obj); end
    def load_interlock; end
    def loaded; end
    def loaded=(obj); end
    def loading; end
    def loading=(obj); end
    def logger; end
    def logger=(obj); end
    def mechanism; end
    def mechanism=(obj); end
    def run_interlock; end
    def unload_interlock; end
    def verbose; end
    def verbose=(obj); end
    def warnings_on_first_load; end
    def warnings_on_first_load=(obj); end
  end
end

ActiveSupport::Dependencies::Reference = T.let(T.unsafe(nil), ActiveSupport::Dependencies::ClassCache)

module Bootsnap
  extend(::Bootsnap)

  def bundler?; end

  class << self
    def setup(cache_dir:, development_mode: T.unsafe(nil), load_path_cache: T.unsafe(nil), autoload_paths_cache: T.unsafe(nil), disable_trace: T.unsafe(nil), compile_cache_iseq: T.unsafe(nil), compile_cache_yaml: T.unsafe(nil)); end
    def setup_disable_trace; end
  end
end

module Bootsnap::CompileCache
  class << self
    def permission_error(path); end
    def setup(cache_dir:, iseq:, yaml:); end
    def supported?; end
  end
end

class Bootsnap::CompileCache::Error < ::StandardError
end

module Bootsnap::CompileCache::ISeq
  class << self
    def cache_dir; end
    def cache_dir=(_arg0); end
    def compile_option_updated; end
    def fetch(path, cache_dir: T.unsafe(nil)); end
    def input_to_output(_data, _kwargs); end
    def input_to_storage(_, path, _args); end
    def install!(cache_dir); end
    def storage_to_output(binary, _args); end
  end
end

module Bootsnap::CompileCache::ISeq::InstructionSequenceMixin
  def compile_option=(hash); end
  def load_iseq(path); end
end

module Bootsnap::CompileCache::Native

  private

  def compile_option_crc32=(_arg0); end
  def coverage_running?; end
  def fetch(_arg0, _arg1, _arg2, _arg3); end

  class << self
    def compile_option_crc32=(_arg0); end
    def coverage_running?; end
    def fetch(_arg0, _arg1, _arg2, _arg3); end
  end
end

class Bootsnap::CompileCache::PermissionError < ::Bootsnap::CompileCache::Error
end

class Bootsnap::CompileCache::Uncompilable < ::StandardError
end

module Bootsnap::CompileCache::YAML
  class << self
    def cache_dir; end
    def cache_dir=(_arg0); end
    def init!; end
    def input_to_output(data, kwargs); end
    def input_to_storage(contents, _, kwargs); end
    def install!(cache_dir); end
    def msgpack_factory; end
    def msgpack_factory=(_arg0); end
    def storage_to_output(data, kwargs); end
    def supported_options; end
    def supported_options=(_arg0); end
  end
end

module Bootsnap::CompileCache::YAML::Patch
  extend(::Bootsnap::CompileCache::YAML::Patch)

  def load_file(path, *args); end
end

module Bootsnap::ExplicitRequire
  class << self
    def from_archdir(feature); end
    def from_rubylibdir(feature); end
    def from_self(feature); end
    def with_gems(*gems); end
  end
end

Bootsnap::ExplicitRequire::ARCHDIR = T.let(T.unsafe(nil), String)

Bootsnap::ExplicitRequire::DLEXT = T.let(T.unsafe(nil), String)

Bootsnap::ExplicitRequire::RUBYLIBDIR = T.let(T.unsafe(nil), String)

class Bootsnap::InvalidConfiguration < ::StandardError
end

module Bootsnap::LoadPathCache
  class << self
    def autoload_paths_cache; end
    def load_path_cache; end
    def loaded_features_index; end
    def realpath_cache; end
    def setup(cache_path:, development_mode:, active_support: T.unsafe(nil)); end
    def supported?; end
  end
end

Bootsnap::LoadPathCache::CACHED_EXTENSIONS = T.let(T.unsafe(nil), Array)

class Bootsnap::LoadPathCache::Cache
  def initialize(store, path_obj, development_mode: T.unsafe(nil)); end

  def absolute_path?(path); end
  def find(feature); end
  def load_dir(dir); end
  def push_paths(sender, *paths); end
  def reinitialize(path_obj = T.unsafe(nil)); end
  def unshift_paths(sender, *paths); end

  private

  def dir_changed?; end
  def expand_path(feature); end
  def maybe_append_extension(f); end
  def now; end
  def push_paths_locked(*paths); end
  def search_index(f); end
  def stale?; end
  def try_ext(f); end
  def try_index(f); end
  def unshift_paths_locked(*paths); end
end

Bootsnap::LoadPathCache::Cache::AGE_THRESHOLD = T.let(T.unsafe(nil), Integer)

Bootsnap::LoadPathCache::Cache::BUILTIN_FEATURES = T.let(T.unsafe(nil), Hash)

module Bootsnap::LoadPathCache::ChangeObserver
  class << self
    def register(observer, arr); end
  end
end

module Bootsnap::LoadPathCache::ChangeObserver::ArrayMixin
  def <<(entry); end
  def []=(*args, &block); end
  def clear(*args, &block); end
  def collect!(*args, &block); end
  def compact!(*args, &block); end
  def concat(entries); end
  def delete(*args, &block); end
  def delete_at(*args, &block); end
  def delete_if(*args, &block); end
  def fill(*args, &block); end
  def flatten!(*args, &block); end
  def insert(*args, &block); end
  def keep_if(*args, &block); end
  def map!(*args, &block); end
  def pop(*args, &block); end
  def push(*entries); end
  def reject!(*args, &block); end
  def replace(*args, &block); end
  def reverse!(*args, &block); end
  def rotate!(*args, &block); end
  def select!(*args, &block); end
  def shift(*args, &block); end
  def shuffle!(*args, &block); end
  def slice!(*args, &block); end
  def sort!(*args, &block); end
  def sort_by!(*args, &block); end
  def uniq!(*args); end
  def unshift(*entries); end
end

module Bootsnap::LoadPathCache::CoreExt
  class << self
    def make_load_error(path); end
  end
end

module Bootsnap::LoadPathCache::CoreExt::ActiveSupport
  class << self
    def allow_bootsnap_retry(allowed); end
    def without_bootsnap_cache; end
  end
end

module Bootsnap::LoadPathCache::CoreExt::ActiveSupport::ClassMethods
  def autoload_paths=(o); end
  def autoloadable_module?(path_suffix); end
  def depend_on(*_arg0); end
  def load_missing_constant(from_mod, const_name); end
  def remove_constant(const); end
  def require_or_load(*_arg0); end
  def search_for_file(path); end
end

Bootsnap::LoadPathCache::DLEXT = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::DL_EXTENSIONS = T.let(T.unsafe(nil), Array)

Bootsnap::LoadPathCache::DOT_RB = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::DOT_SO = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::ERROR_TAG_IVAR = T.let(T.unsafe(nil), Symbol)

class Bootsnap::LoadPathCache::FallbackScan < ::StandardError
end

class Bootsnap::LoadPathCache::LoadedFeaturesIndex
  def initialize; end

  def key?(feature); end
  def purge(feature); end
  def purge_multi(features); end
  def register(short, long = T.unsafe(nil)); end

  private

  def extension_elidable?(f); end
  def strip_extension_if_elidable(f); end
end

class Bootsnap::LoadPathCache::Path
  def initialize(path); end

  def entries_and_dirs(store); end
  def expanded_path; end
  def non_directory?; end
  def path; end
  def relative?; end
  def stable?; end
  def volatile?; end

  private

  def latest_mtime(path, dirs); end
  def scan!; end
  def stability; end
end

Bootsnap::LoadPathCache::Path::RUBY_LIBDIR = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::Path::RUBY_SITEDIR = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::Path::STABLE = T.let(T.unsafe(nil), Symbol)

Bootsnap::LoadPathCache::Path::VOLATILE = T.let(T.unsafe(nil), Symbol)

module Bootsnap::LoadPathCache::PathScanner
  class << self
    def call(path); end
    def walk(absolute_dir_path, relative_dir_path, &block); end
  end
end

Bootsnap::LoadPathCache::PathScanner::ALTERNATIVE_NATIVE_EXTENSIONS_PATTERN = T.let(T.unsafe(nil), Regexp)

Bootsnap::LoadPathCache::PathScanner::BUNDLE_PATH = T.let(T.unsafe(nil), String)

Bootsnap::LoadPathCache::PathScanner::REQUIRABLE_EXTENSIONS = T.let(T.unsafe(nil), Array)

class Bootsnap::LoadPathCache::RealpathCache
  def initialize; end

  def call(*key); end

  private

  def find_file(name); end
  def realpath(caller_location, path); end
end

class Bootsnap::LoadPathCache::ReturnFalse < ::StandardError
end

Bootsnap::LoadPathCache::SLASH = T.let(T.unsafe(nil), String)

class Bootsnap::LoadPathCache::Store
  def initialize(store_path); end

  def fetch(key); end
  def get(key); end
  def set(key, value); end
  def transaction; end

  private

  def commit_transaction; end
  def dump_data; end
  def load_data; end
end

class Bootsnap::LoadPathCache::Store::NestedTransactionError < ::StandardError
end

class Bootsnap::LoadPathCache::Store::SetOutsideTransactionNotAllowed < ::StandardError
end

Bootsnap::VERSION = T.let(T.unsafe(nil), String)

module Kernel

  private

  def load(path, wrap = T.unsafe(nil)); end
  def require_relative(path); end
  def require_with_bootsnap_lfi(path, resolved = T.unsafe(nil)); end
  def zeitwerk_original_require(path); end

  class << self
    def load(path, wrap = T.unsafe(nil)); end
    def require_relative(path); end
    def require_with_bootsnap_lfi(path, resolved = T.unsafe(nil)); end
  end
end

class Module
  include(::ActiveSupport::Dependencies::ModuleConstMissing)
  include(::Module::Concerning)
  include(::Mongoid::Extensions::Module)

  def autoload(const, path); end
end

Module::DELEGATION_RESERVED_KEYWORDS = T.let(T.unsafe(nil), Array)

Module::DELEGATION_RESERVED_METHOD_NAMES = T.let(T.unsafe(nil), Set)

Module::RUBY_RESERVED_KEYWORDS = T.let(T.unsafe(nil), Array)
