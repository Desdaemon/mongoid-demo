# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `spring-watcher-listen` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

module Spring
  class << self
    def after_fork(&block); end
    def after_fork_callbacks; end
    def application_root; end
    def application_root=(_arg0); end
    def application_root_path; end
    def gemfile; end
    def project_root_path; end
    def quiet; end
    def quiet=(_arg0); end
    def verify_environment; end
    def watch(*items); end
    def watch_interval; end
    def watch_interval=(_arg0); end
    def watch_method; end
    def watch_method=(method); end
    def watcher; end
    def watcher=(_arg0); end

    private

    def find_project_root(current_dir); end
  end
end

module Spring::Watcher
end

class Spring::Watcher::Listen < ::Spring::Watcher::Abstract
  def base_directories; end
  def changed(modified, added, removed); end
  def listener; end
  def start; end
  def stop; end
  def subjects_changed; end
  def watching?(file); end
end
