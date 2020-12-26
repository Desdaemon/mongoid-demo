# typed: strong
# Versions of class methods that return a `Mongoid::Criteria`.
module Mongoid::Document::ClassMethods
  sig {params(fields: Symbol).returns Mongoid::Criteria}
  def asc(*fields); end
  sig {params(fields: Symbol).returns Mongoid::Criteria}
  def ascending(*fields); end
  sig {params(value: T.nilable(Integer)).returns Mongoid::Criteria}
  def batch_size(value = T.unsafe(nil)); end
  sig {params(collation_doc: T::Hash[T.untyped, T.untyped]).returns Mongoid::Criteria}
  def collation(collation_doc); end
  sig {params(comment: T.nilable(String)).returns Mongoid::Criteria}
  def comment(comment = T.unsafe(nil)); end
  sig {params(type: Symbol).returns Mongoid::Criteria}
  def cursor_type(type); end
  sig {params(fields: Symbol).returns Mongoid::Criteria}
  def desc(*fields); end
  sig {params(fields: Symbol).returns Mongoid::Criteria}
  def descending(*fields); end
  sig {params(value: T::Hash[T.untyped, T.untyped]).returns Mongoid::Criteria}
  def hint(value = T.unsafe(nil)); end
  sig {params(value: T.nilable(Integer)).returns Mongoid::Criteria}
  def limit(value = T.unsafe(nil)); end
  sig {params(value: T.nilable(Integer)).returns Mongoid::Criteria}
  def max_scan(value = T.unsafe(nil)); end
  sig {params(value: T.nilable(Integer)).returns Mongoid::Criteria}
  def max_time_ms(value = T.unsafe(nil)); end
  sig {returns Mongoid::Criteria}
  def no_timeout; end
  sig {params(value: T.nilable(Integer)).returns Mongoid::Criteria}
  def offset(value = T.unsafe(nil)); end
  sig {params(args: Symbol).returns Mongoid::Criteria}
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
end