# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `railties` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

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

class Rails::Application < ::Rails::Engine
  def initialize(initial_variable_values = T.unsafe(nil), &block); end

  def assets; end
  def assets=(_arg0); end
  def build_middleware_stack; end
  def config; end
  def config=(_arg0); end
  def config_for(name, env: T.unsafe(nil)); end
  def console(&blk); end
  def credentials; end
  def default_url_options(*args, &block); end
  def default_url_options=(arg); end
  def eager_load!; end
  def encrypted(path, key_path: T.unsafe(nil), env_key: T.unsafe(nil)); end
  def env_config; end
  def executor; end
  def generators(&blk); end
  def helpers_paths; end
  def initialize!(group = T.unsafe(nil)); end
  def initialized?; end
  def initializer(name, opts = T.unsafe(nil), &block); end
  def initializers; end
  def isolate_namespace(mod); end
  def key_generator; end
  def message_verifier(verifier_name); end
  def migration_railties; end
  def rake_tasks(&block); end
  def reload_routes!; end
  def reloader; end
  def reloaders; end
  def require_environment!; end
  def routes_reloader; end
  def run_load_hooks!; end
  def runner(&blk); end
  def sandbox; end
  def sandbox=(_arg0); end
  def sandbox?; end
  def secret_key_base; end
  def secrets; end
  def secrets=(_arg0); end
  def to_app; end
  def watchable_args; end

  protected

  def default_middleware_stack; end
  def ordered_railties; end
  def railties_initializers(current); end
  def run_console_blocks(app); end
  def run_generators_blocks(app); end
  def run_runner_blocks(app); end
  def run_tasks_blocks(app); end
  def validate_secret_key_base(secret_key_base); end

  private

  def build_middleware; end
  def build_request(env); end
  def generate_development_secret; end

  class << self
    def add_lib_to_load_path!(root); end
    def create(initial_variable_values = T.unsafe(nil), &block); end
    def find_root(from); end
    def inherited(base); end
    def instance; end
  end
end

module Rails::Application::Bootstrap
  include(::Rails::Initializable)
  extend(::Rails::Initializable::ClassMethods)
end

class Rails::Application::Configuration < ::Rails::Engine::Configuration
  def initialize(*_arg0); end

  def add_autoload_paths_to_load_path; end
  def add_autoload_paths_to_load_path=(_arg0); end
  def allow_concurrency; end
  def allow_concurrency=(_arg0); end
  def annotations; end
  def api_only; end
  def api_only=(value); end
  def asset_host; end
  def asset_host=(_arg0); end
  def autoflush_log; end
  def autoflush_log=(_arg0); end
  def autoloader; end
  def autoloader=(autoloader); end
  def beginning_of_week; end
  def beginning_of_week=(_arg0); end
  def cache_classes; end
  def cache_classes=(_arg0); end
  def cache_store; end
  def cache_store=(_arg0); end
  def colorize_logging; end
  def colorize_logging=(val); end
  def consider_all_requests_local; end
  def consider_all_requests_local=(_arg0); end
  def console; end
  def console=(_arg0); end
  def content_security_policy(&block); end
  def content_security_policy_nonce_directives; end
  def content_security_policy_nonce_directives=(_arg0); end
  def content_security_policy_nonce_generator; end
  def content_security_policy_nonce_generator=(_arg0); end
  def content_security_policy_report_only; end
  def content_security_policy_report_only=(_arg0); end
  def credentials; end
  def credentials=(_arg0); end
  def database_configuration; end
  def debug_exception_response_format; end
  def debug_exception_response_format=(_arg0); end
  def default_log_file; end
  def disable_sandbox; end
  def disable_sandbox=(_arg0); end
  def eager_load; end
  def eager_load=(_arg0); end
  def enable_dependency_loading; end
  def enable_dependency_loading=(_arg0); end
  def encoding; end
  def encoding=(value); end
  def exceptions_app; end
  def exceptions_app=(_arg0); end
  def file_watcher; end
  def file_watcher=(_arg0); end
  def filter_parameters; end
  def filter_parameters=(_arg0); end
  def filter_redirect; end
  def filter_redirect=(_arg0); end
  def force_ssl; end
  def force_ssl=(_arg0); end
  def helpers_paths; end
  def helpers_paths=(_arg0); end
  def hosts; end
  def hosts=(_arg0); end
  def load_database_yaml; end
  def load_defaults(target_version); end
  def loaded_config_version; end
  def log_formatter; end
  def log_formatter=(_arg0); end
  def log_level; end
  def log_level=(_arg0); end
  def log_tags; end
  def log_tags=(_arg0); end
  def logger; end
  def logger=(_arg0); end
  def paths; end
  def public_file_server; end
  def public_file_server=(_arg0); end
  def railties_order; end
  def railties_order=(_arg0); end
  def read_encrypted_secrets; end
  def read_encrypted_secrets=(_arg0); end
  def relative_url_root; end
  def relative_url_root=(_arg0); end
  def reload_classes_only_on_change; end
  def reload_classes_only_on_change=(_arg0); end
  def require_master_key; end
  def require_master_key=(_arg0); end
  def secret_key_base; end
  def secret_key_base=(_arg0); end
  def session_options; end
  def session_options=(_arg0); end
  def session_store(new_session_store = T.unsafe(nil), **options); end
  def session_store?; end
  def ssl_options; end
  def ssl_options=(_arg0); end
  def time_zone; end
  def time_zone=(_arg0); end
  def x; end
  def x=(_arg0); end

  private

  def credentials_available_for_current_env?; end
  def default_credentials_content_path; end
  def default_credentials_key_path; end
end

class Rails::Application::Configuration::Custom
  def initialize; end

  def method_missing(method, *args); end

  private

  def respond_to_missing?(symbol, *_arg1); end
end

class Rails::Application::DefaultMiddlewareStack
  def initialize(app, config, paths); end

  def app; end
  def build_stack; end
  def config; end
  def paths; end

  private

  def load_rack_cache; end
  def show_exceptions_app; end
end

module Rails::Application::Finisher
  include(::Rails::Initializable)
  extend(::Rails::Initializable::ClassMethods)
end

module Rails::Application::Finisher::InterlockHook
  class << self
    def complete(_state); end
    def run; end
  end
end

class Rails::Application::Finisher::MutexHook
  def initialize(mutex = T.unsafe(nil)); end

  def complete(_state); end
  def run; end
end

Rails::Application::INITIAL_VARIABLES = T.let(T.unsafe(nil), Array)

class Rails::Application::NonSymbolAccessDeprecatedHash < ::ActiveSupport::HashWithIndifferentAccess
  def initialize(value = T.unsafe(nil)); end

  def []=(key, value); end

  private

  def convert_key(key); end
  def convert_value(value, options = T.unsafe(nil)); end
end

class Rails::Application::RoutesReloader
  def initialize; end

  def eager_load; end
  def eager_load=(_arg0); end
  def execute(*args, &block); end
  def execute_if_updated(*args, &block); end
  def paths; end
  def reload!; end
  def route_sets; end
  def updated?(*args, &block); end

  private

  def clear!; end
  def finalize!; end
  def load_paths; end
  def revert; end
  def updater; end
end

class Rails::ApplicationController < ::ActionController::Base

  private

  def _layout(lookup_context, formats); end
  def disable_content_security_policy_nonce!; end
  def local_request?; end
  def require_local!; end

  class << self
    def __callbacks; end
    def _helpers; end
    def _layout; end
    def _layout_conditions; end
    def middleware_stack; end
  end
end

module Rails::Autoloaders
  extend(::Enumerable)

  class << self
    def each; end
    def log!; end
    def logger=(logger); end
    def main; end
    def once; end
    def zeitwerk_enabled?; end
  end
end

module Rails::Command
  include(::Rails::Command::Behavior)
  extend(::ActiveSupport::Autoload)
  extend(::Rails::Command::Behavior::ClassMethods)

  class << self
    def environment; end
    def find_by_namespace(namespace, command_name = T.unsafe(nil)); end
    def hidden_commands; end
    def invoke(full_namespace, args = T.unsafe(nil), **config); end
    def print_commands; end
    def root; end

    private

    def command_type; end
    def commands; end
    def file_lookup_paths; end
    def lookup_paths; end
  end
end

class Rails::Command::Base < ::Thor
  include(::Rails::Command::Actions)

  def help; end

  class << self
    def banner(*_arg0); end
    def base_name; end
    def command_name; end
    def default_command_root; end
    def desc(usage = T.unsafe(nil), description = T.unsafe(nil), options = T.unsafe(nil)); end
    def engine?; end
    def executable; end
    def exit_on_failure?; end
    def hide_command!; end
    def inherited(base); end
    def namespace(name = T.unsafe(nil)); end
    def perform(command, args, config); end
    def printing_commands; end
    def usage_path; end

    private

    def command_root_namespace; end
    def create_command(meth); end
    def namespaced_commands; end
    def relative_command_path; end
  end
end

class Rails::Command::Base::Error < ::Thor::Error
end

module Rails::Command::Behavior
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Rails::Command::Behavior::ClassMethods)
end

module Rails::Command::Behavior::ClassMethods
  def no_color!; end
  def subclasses; end

  private

  def lookup(namespaces); end
  def lookup!; end
  def namespaces_to_paths(namespaces); end
  def print_list(base, namespaces); end
end

Rails::Command::HELP_MAPPINGS = T.let(T.unsafe(nil), Array)

module Rails::Command::Spellchecker
  class << self
    def suggest(word, from:); end

    private

    def levenshtein_distance(str1, str2); end
  end
end

module Rails::Configuration
end

class Rails::Configuration::Generators
  def initialize; end

  def aliases; end
  def aliases=(_arg0); end
  def api_only; end
  def api_only=(_arg0); end
  def colorize_logging; end
  def colorize_logging=(_arg0); end
  def fallbacks; end
  def fallbacks=(_arg0); end
  def hidden_namespaces; end
  def hide_namespace(namespace); end
  def method_missing(method, *args); end
  def options; end
  def options=(_arg0); end
  def templates; end
  def templates=(_arg0); end

  private

  def initialize_copy(source); end
end

class Rails::Configuration::MiddlewareStackProxy
  def initialize(operations = T.unsafe(nil), delete_operations = T.unsafe(nil)); end

  def +(other); end
  def delete(*args, &block); end
  def insert(*args, &block); end
  def insert_after(*args, &block); end
  def insert_before(*args, &block); end
  def merge_into(other); end
  def swap(*args, &block); end
  def unshift(*args, &block); end
  def use(*args, &block); end

  protected

  def delete_operations; end
  def operations; end
end

class Rails::Engine < ::Rails::Railtie
  def initialize; end

  def app; end
  def call(env); end
  def config; end
  def eager_load!; end
  def endpoint; end
  def engine_name(*args, &block); end
  def env_config; end
  def helpers; end
  def helpers_paths; end
  def isolated?(*args, &block); end
  def load_console(app = T.unsafe(nil)); end
  def load_generators(app = T.unsafe(nil)); end
  def load_runner(app = T.unsafe(nil)); end
  def load_seed; end
  def load_tasks(app = T.unsafe(nil)); end
  def middleware(*args, &block); end
  def paths(*args, &block); end
  def railties; end
  def root(*args, &block); end
  def routes(&block); end
  def routes?; end

  protected

  def run_tasks_blocks(*_arg0); end

  private

  def _all_autoload_once_paths; end
  def _all_autoload_paths; end
  def _all_load_paths(add_autoload_paths_to_load_path); end
  def build_middleware; end
  def build_request(env); end
  def default_middleware_stack; end
  def has_migrations?; end
  def load_config_initializer(initializer); end
  def with_inline_jobs; end

  class << self
    def called_from; end
    def called_from=(_arg0); end
    def eager_load!(*args, &block); end
    def endpoint(endpoint = T.unsafe(nil)); end
    def engine_name(name = T.unsafe(nil)); end
    def find(path); end
    def find_root(from); end
    def find_root_with_flag(flag, root_path, default = T.unsafe(nil)); end
    def inherited(base); end
    def isolate_namespace(mod); end
    def isolated; end
    def isolated=(_arg0); end
    def isolated?; end
  end
end

class Rails::Engine::Configuration < ::Rails::Railtie::Configuration
  def initialize(root = T.unsafe(nil)); end

  def autoload_once_paths; end
  def autoload_once_paths=(_arg0); end
  def autoload_paths; end
  def autoload_paths=(_arg0); end
  def eager_load_paths; end
  def eager_load_paths=(_arg0); end
  def generators; end
  def javascript_path; end
  def javascript_path=(_arg0); end
  def middleware; end
  def middleware=(_arg0); end
  def paths; end
  def root; end
  def root=(value); end
end

class Rails::Engine::Railties
  include(::Enumerable)

  def initialize; end

  def -(others); end
  def _all; end
  def each(*args, &block); end
end

module Rails::Generators
  include(::Rails::Command::Behavior)
  extend(::Rails::Command::Behavior::ClassMethods)

  def namespace; end
  def namespace=(obj); end

  class << self
    def aliases; end
    def api_only!; end
    def configure!(config); end
    def fallbacks; end
    def find_by_namespace(name, base = T.unsafe(nil), context = T.unsafe(nil)); end
    def help(command = T.unsafe(nil)); end
    def hidden_namespaces; end
    def hide_namespace(*namespaces); end
    def hide_namespaces(*namespaces); end
    def invoke(namespace, args = T.unsafe(nil), config = T.unsafe(nil)); end
    def namespace; end
    def namespace=(obj); end
    def no_color!; end
    def options; end
    def print_generators; end
    def public_namespaces; end
    def sorted_groups; end
    def templates_path; end

    private

    def command_type; end
    def file_lookup_paths; end
    def invoke_fallbacks_for(name, base); end
    def lookup_paths; end
    def print_list(base, namespaces); end
  end
end

module Rails::Generators::Actions
  def initialize(*_arg0); end

  def add_source(source, options = T.unsafe(nil), &block); end
  def application(data = T.unsafe(nil), options = T.unsafe(nil)); end
  def environment(data = T.unsafe(nil), options = T.unsafe(nil)); end
  def gem(*args); end
  def gem_group(*names, &block); end
  def generate(what, *args); end
  def git(commands = T.unsafe(nil)); end
  def github(repo, options = T.unsafe(nil), &block); end
  def initializer(filename, data = T.unsafe(nil)); end
  def lib(filename, data = T.unsafe(nil)); end
  def rails_command(command, options = T.unsafe(nil)); end
  def rake(command, options = T.unsafe(nil)); end
  def rakefile(filename, data = T.unsafe(nil)); end
  def readme(path); end
  def route(routing_code); end
  def vendor(filename, data = T.unsafe(nil)); end

  private

  def execute_command(executor, command, options = T.unsafe(nil)); end
  def extify(name); end
  def indentation; end
  def log(*args); end
  def optimize_indentation(value, amount = T.unsafe(nil)); end
  def quote(value); end
  def with_indentation(&block); end
end

class Rails::Generators::ActiveModel
  def initialize(name); end

  def destroy; end
  def errors; end
  def name; end
  def save; end
  def update(params = T.unsafe(nil)); end

  class << self
    def all(klass); end
    def build(klass, params = T.unsafe(nil)); end
    def find(klass, params = T.unsafe(nil)); end
  end
end

module Rails::Generators::AppName

  private

  def app_const; end
  def app_const_base; end
  def app_name; end
  def camelized; end
  def defined_app_const_base; end
  def defined_app_const_base?; end
  def defined_app_name; end
  def original_app_name; end
  def valid_const?; end
end

Rails::Generators::AppName::RESERVED_NAMES = T.let(T.unsafe(nil), Array)

class Rails::Generators::Base < ::Thor::Group
  include(::Thor::Actions)
  include(::Rails::Generators::Actions)
  extend(::Thor::Actions::ClassMethods)


  private

  def class_collisions(*class_names); end
  def extract_last_module(nesting); end
  def indent(content, multiplier = T.unsafe(nil)); end
  def module_namespacing(&block); end
  def namespace; end
  def namespace_dirs; end
  def namespaced?; end
  def namespaced_path; end
  def wrap_with_namespace(content); end

  class << self
    def add_shebang_option!; end
    def banner; end
    def base_name; end
    def base_root; end
    def class_option(name, options = T.unsafe(nil)); end
    def default_aliases_for_option(name, options); end
    def default_for_option(config, name, options, default); end
    def default_generator_root; end
    def default_source_root; end
    def default_value_for_option(name, options); end
    def desc(description = T.unsafe(nil)); end
    def exit_on_failure?; end
    def generator_name; end
    def hide!; end
    def hook_for(*names, &block); end
    def hooks; end
    def inherited(base); end
    def namespace(name = T.unsafe(nil)); end
    def prepare_for_invocation(name, value); end
    def remove_hook_for(*names); end
    def source_root(path = T.unsafe(nil)); end
    def usage_path; end
  end
end

Rails::Generators::DEFAULT_ALIASES = T.let(T.unsafe(nil), Hash)

Rails::Generators::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

module Rails::Generators::Database
  def initialize(*_arg0); end

  def convert_database_option_for_jruby; end
  def gem_for_database(database = T.unsafe(nil)); end

  private

  def mysql_socket; end
end

Rails::Generators::Database::DATABASES = T.let(T.unsafe(nil), Array)

Rails::Generators::Database::JDBC_DATABASES = T.let(T.unsafe(nil), Array)

module Rails::Generators::Migration
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Rails::Generators::Migration::ClassMethods)

  def create_migration(destination, data, config = T.unsafe(nil), &block); end
  def migration_class_name; end
  def migration_file_name; end
  def migration_number; end
  def migration_template(source, destination, config = T.unsafe(nil)); end
  def set_migration_assigns!(destination); end
end

module Rails::Generators::Migration::ClassMethods
  def current_migration_number(dirname); end
  def migration_exists?(dirname, file_name); end
  def migration_lookup_at(dirname); end
  def next_migration_number(dirname); end
end

class Rails::Generators::NamedBase < ::Rails::Generators::Base
  def initialize(args, *options); end

  def file_name; end
  def js_template(source, destination); end
  def name; end
  def name=(_arg0); end
  def template(source, *args, &block); end

  private

  def application_name; end
  def assign_names!(name); end
  def attributes_names; end
  def class_name; end
  def class_path; end
  def edit_helper; end
  def file_path; end
  def fixture_file_name; end
  def human_name; end
  def i18n_scope; end
  def index_helper; end
  def inside_template; end
  def inside_template?; end
  def model_resource_name(prefix: T.unsafe(nil)); end
  def mountable_engine?; end
  def namespaced_class_path; end
  def new_helper; end
  def parse_attributes!; end
  def plural_file_name; end
  def plural_name; end
  def plural_route_name; end
  def plural_table_name; end
  def pluralize_table_names?; end
  def redirect_resource_name; end
  def regular_class_path; end
  def route_url; end
  def show_helper; end
  def singular_name; end
  def singular_route_name; end
  def singular_table_name; end
  def table_name; end
  def uncountable?; end
  def url_helper_prefix; end

  class << self
    def check_class_collision(options = T.unsafe(nil)); end
  end
end

module Rails::Generators::ResourceHelpers
  include(::Rails::Generators::ModelHelpers)

  def initialize(*args); end


  private

  def assign_controller_names!(name); end
  def controller_class_name; end
  def controller_class_path; end
  def controller_file_name; end
  def controller_file_path; end
  def controller_i18n_scope; end
  def controller_name; end
  def orm_class; end
  def orm_instance(name = T.unsafe(nil)); end

  class << self
    def included(base); end
  end
end

class Rails::Generators::TestCase < ::ActiveSupport::TestCase
  include(::ActiveSupport::Testing::Stream)
  include(::Rails::Generators::Testing::Behaviour)
  include(::Rails::Generators::Testing::SetupAndTeardown)
  include(::Rails::Generators::Testing::Assertions)
  include(::FileUtils::StreamUtils_)
  include(::FileUtils)
  extend(::Rails::Generators::Testing::Behaviour::ClassMethods)

  def current_path; end
  def current_path=(val); end
  def current_path?; end
  def default_arguments; end
  def default_arguments=(val); end
  def default_arguments?; end
  def destination_root; end
  def destination_root=(val); end
  def destination_root?; end
  def generator_class; end
  def generator_class=(val); end
  def generator_class?; end

  class << self
    def current_path; end
    def current_path=(val); end
    def current_path?; end
    def default_arguments; end
    def default_arguments=(val); end
    def default_arguments?; end
    def destination_root; end
    def destination_root=(val); end
    def destination_root?; end
    def generator_class; end
    def generator_class=(val); end
    def generator_class?; end
  end
end

module Rails::Generators::Testing
end

module Rails::Generators::Testing::Assertions
  def assert_class_method(method, content, &block); end
  def assert_directory(relative, *contents); end
  def assert_field_default_value(attribute_type, value); end
  def assert_field_type(attribute_type, field_type); end
  def assert_file(relative, *contents); end
  def assert_instance_method(method, content); end
  def assert_method(method, content); end
  def assert_migration(relative, *contents, &block); end
  def assert_no_directory(relative); end
  def assert_no_file(relative); end
  def assert_no_migration(relative); end
end

module Rails::Generators::Testing::Behaviour
  include(::ActiveSupport::Testing::Stream)
  extend(::ActiveSupport::Concern)

  mixes_in_class_methods(::Rails::Generators::Testing::Behaviour::ClassMethods)

  def create_generated_attribute(attribute_type, name = T.unsafe(nil), index = T.unsafe(nil)); end
  def generator(args = T.unsafe(nil), options = T.unsafe(nil), config = T.unsafe(nil)); end
  def run_generator(args = T.unsafe(nil), config = T.unsafe(nil)); end

  private

  def destination_root_is_set?; end
  def ensure_current_path; end
  def migration_file_name(relative); end
  def prepare_destination; end
end

module Rails::Generators::Testing::Behaviour::ClassMethods
  def arguments(array); end
  def destination(path); end
  def tests(klass); end
end

module Rails::Generators::Testing::SetupAndTeardown
  def setup; end
  def teardown; end
end

module Rails::Info
  def properties; end
  def properties=(obj); end

  class << self
    def inspect; end
    def properties; end
    def properties=(obj); end
    def property(name, value = T.unsafe(nil)); end
    def to_html; end
    def to_s; end
  end
end

class Rails::InfoController < ::Rails::ApplicationController
  def index; end
  def properties; end
  def routes; end

  protected

  def _layout_from_proc; end

  private

  def _layout(lookup_context, formats); end
  def match_route; end
  def with_leading_slash(path); end

  class << self
    def __callbacks; end
    def _helpers; end
    def _layout; end
    def _layout_conditions; end
    def middleware_stack; end
  end
end

module Rails::Initializable
  mixes_in_class_methods(::Rails::Initializable::ClassMethods)

  def initializers; end
  def run_initializers(group = T.unsafe(nil), *args); end

  class << self
    def included(base); end
  end
end

module Rails::Initializable::ClassMethods
  def initializer(name, opts = T.unsafe(nil), &blk); end
  def initializers; end
  def initializers_chain; end
  def initializers_for(binding); end
end

class Rails::Initializable::Collection < ::Array
  include(::TSort)

  def +(other); end
  def tsort_each_child(initializer, &block); end
  def tsort_each_node; end
end

class Rails::Initializable::Initializer
  def initialize(name, context, options, &block); end

  def after; end
  def before; end
  def belongs_to?(group); end
  def bind(context); end
  def block; end
  def context_class; end
  def name; end
  def run(*args); end
end

module Rails::LineFiltering
  def run(reporter, options = T.unsafe(nil)); end
end

class Rails::MailersController < ::Rails::ApplicationController
  def index; end
  def preview; end

  private

  def _layout(lookup_context, formats); end
  def find_part(format); end
  def find_preferred_part(*formats); end
  def find_preview; end
  def locale_query(locale); end
  def part_query(mime_type); end
  def set_locale; end
  def show_previews?; end

  class << self
    def __callbacks; end
    def _helper_methods; end
    def _helpers; end
    def middleware_stack; end
  end
end

module Rails::Paths
end

class Rails::Paths::Path
  include(::Enumerable)

  def initialize(root, current, paths, options = T.unsafe(nil)); end

  def <<(path); end
  def absolute_current; end
  def autoload!; end
  def autoload?; end
  def autoload_once!; end
  def autoload_once?; end
  def children; end
  def concat(paths); end
  def each(&block); end
  def eager_load!; end
  def eager_load?; end
  def existent; end
  def existent_directories; end
  def expanded; end
  def extensions; end
  def first; end
  def glob; end
  def glob=(_arg0); end
  def last; end
  def load_path!; end
  def load_path?; end
  def push(path); end
  def skip_autoload!; end
  def skip_autoload_once!; end
  def skip_eager_load!; end
  def skip_load_path!; end
  def to_a; end
  def to_ary; end
  def unshift(*paths); end

  private

  def files_in(path); end
end

class Rails::Paths::Root
  def initialize(path); end

  def [](path); end
  def []=(path, value); end
  def add(path, options = T.unsafe(nil)); end
  def all_paths; end
  def autoload_once; end
  def autoload_paths; end
  def eager_load; end
  def keys; end
  def load_paths; end
  def path; end
  def path=(_arg0); end
  def values; end
  def values_at(*list); end

  private

  def filter_by(&block); end
end

module Rails::Rack
end

class Rails::Rack::Logger < ::ActiveSupport::LogSubscriber
  def initialize(app, taggers = T.unsafe(nil)); end

  def call(env); end

  private

  def call_app(request, env); end
  def compute_tags(request); end
  def finish(request); end
  def logger; end
  def started_request_message(request); end
end

class Rails::Railtie
  include(::Rails::Initializable)
  extend(::Rails::Initializable::ClassMethods)

  def initialize; end

  def config; end
  def configure(&block); end
  def railtie_name(*args, &block); end
  def railtie_namespace; end

  protected

  def run_console_blocks(app); end
  def run_generators_blocks(app); end
  def run_runner_blocks(app); end
  def run_tasks_blocks(app); end

  private

  def each_registered_block(type, &block); end

  class << self
    def abstract_railtie?; end
    def config(*args, &block); end
    def configure(&block); end
    def console(&blk); end
    def generators(&blk); end
    def inherited(base); end
    def instance; end
    def railtie_name(name = T.unsafe(nil)); end
    def rake_tasks(&blk); end
    def runner(&blk); end
    def subclasses; end

    private

    def generate_railtie_name(string); end
    def method_missing(name, *args, &block); end
    def register_block_for(type, &blk); end
    def respond_to_missing?(name, _); end
  end
end

Rails::Railtie::ABSTRACT_RAILTIES = T.let(T.unsafe(nil), Array)

class Rails::Railtie::Configuration
  def initialize; end

  def after_initialize(&block); end
  def app_generators; end
  def app_middleware; end
  def before_configuration(&block); end
  def before_eager_load(&block); end
  def before_initialize(&block); end
  def eager_load_namespaces; end
  def respond_to?(name, include_private = T.unsafe(nil)); end
  def to_prepare(&blk); end
  def to_prepare_blocks; end
  def watchable_dirs; end
  def watchable_files; end

  private

  def method_missing(name, *args, &blk); end

  class << self
    def eager_load_namespaces; end
  end
end

class Rails::Secrets
  class << self
    def decrypt(data); end
    def encrypt(data); end
    def key; end
    def parse(paths, env:); end
    def read; end
    def read_for_editing(&block); end
    def root=(_arg0); end
    def write(contents); end

    private

    def encryptor; end
    def handle_missing_key; end
    def key_path; end
    def path; end
    def preprocess(path); end
    def read_key_file; end
    def writing(contents); end
  end
end

class Rails::Secrets::MissingKeyError < ::RuntimeError
  def initialize; end
end

class Rails::SourceAnnotationExtractor
  def initialize(tag); end

  def display(results, options = T.unsafe(nil)); end
  def extract_annotations_from(file, pattern); end
  def find(dirs); end
  def find_in(dir); end
  def tag; end

  class << self
    def enumerate(tag = T.unsafe(nil), options = T.unsafe(nil)); end
  end
end

class Rails::SourceAnnotationExtractor::Annotation < ::Struct
  def to_s(options = T.unsafe(nil)); end

  class << self
    def directories; end
    def extensions; end
    def notes_task_deprecation_warning; end
    def register_directories(*dirs); end
    def register_extensions(*exts, &block); end
    def register_tags(*additional_tags); end
    def tags; end
  end
end

module Rails::TestUnit
end

class Rails::TestUnit::CompositeFilter
  def initialize(runnable, filter, patterns); end

  def ===(method); end
  def named_filter; end

  private

  def derive_line_filters(patterns); end
  def derive_named_filter(filter); end
end

class Rails::TestUnit::Filter
  def initialize(runnable, file, line); end

  def ===(method); end

  private

  def definition_for(method); end
end

class Rails::TestUnit::Runner
  def filters; end

  class << self
    def attach_before_load_options(opts); end
    def compose_filter(runnable, filter); end
    def filters; end
    def load_tests(argv); end
    def parse_options(argv); end
    def rake_run(argv = T.unsafe(nil)); end
    def run(argv = T.unsafe(nil)); end

    private

    def extract_filters(argv); end
  end
end

class Rails::TestUnitRailtie < ::Rails::Railtie
end

module Rails::VERSION
end

Rails::VERSION::MAJOR = T.let(T.unsafe(nil), Integer)

Rails::VERSION::MINOR = T.let(T.unsafe(nil), Integer)

Rails::VERSION::PRE = T.let(T.unsafe(nil), String)

Rails::VERSION::STRING = T.let(T.unsafe(nil), String)

Rails::VERSION::TINY = T.let(T.unsafe(nil), Integer)

class Rails::WelcomeController < ::Rails::ApplicationController
  def index; end

  private

  def _layout(lookup_context, formats); end

  class << self
    def _helpers; end
    def _layout; end
    def _layout_conditions; end
    def middleware_stack; end
  end
end

module Rails::Command::Actions
  def load_generators; end
  def load_tasks; end
  def require_application!; end
  def require_application_and_environment!; end
  def require_environment!; end
  def set_application_directory!; end
end

class Rails::Generators::Actions::CreateMigration < ::Thor::Actions::CreateFile
  def existing_migration; end
  def exists?; end
  def identical?; end
  def migration_dir; end
  def migration_file_name; end
  def relative_existing_migration; end
  def revoke!; end

  private

  def on_conflict_behavior; end
  def say_status(status, color, message = T.unsafe(nil)); end
end

class Rails::Generators::Error < ::Thor::Error
end

class Rails::Generators::GeneratedAttribute
  def initialize(name, type = T.unsafe(nil), index_type = T.unsafe(nil), attr_options = T.unsafe(nil)); end

  def attachment?; end
  def attachments?; end
  def attr_options; end
  def column_name; end
  def default; end
  def field_type; end
  def foreign_key?; end
  def has_index?; end
  def has_uniq_index?; end
  def human_name; end
  def index_name; end
  def index_name=(_arg0); end
  def inject_index_options; end
  def inject_options; end
  def name; end
  def name=(_arg0); end
  def options_for_migration; end
  def password_digest?; end
  def plural_name; end
  def polymorphic?; end
  def reference?; end
  def required?; end
  def rich_text?; end
  def singular_name; end
  def token?; end
  def type; end
  def type=(_arg0); end
  def virtual?; end

  class << self
    def parse(column_definition); end
    def reference?(type); end

    private

    def parse_type_and_options(type); end
  end
end

Rails::Generators::GeneratedAttribute::INDEX_OPTIONS = T.let(T.unsafe(nil), Array)

Rails::Generators::GeneratedAttribute::UNIQ_INDEX_OPTIONS = T.let(T.unsafe(nil), Array)

module Rails::Generators::ModelHelpers
  def initialize(args, *_options); end

  def skip_warn; end
  def skip_warn=(obj); end

  class << self
    def included(base); end
    def skip_warn; end
    def skip_warn=(obj); end
  end
end

Rails::Generators::ModelHelpers::IRREGULAR_MODEL_NAME_WARN_MESSAGE = T.let(T.unsafe(nil), String)

Rails::Generators::ModelHelpers::PLURAL_MODEL_NAME_WARN_MESSAGE = T.let(T.unsafe(nil), String)

SourceAnnotationExtractor = Rails::SourceAnnotationExtractor
