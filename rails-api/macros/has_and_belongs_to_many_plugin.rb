# typed: strict
require 'dry-inflector'

source = ARGV[5]
/has_and_belongs_to_many :([^,]+)(?:,[^\0]*(?<=class_name: ['"])([^'"]+))?/.match(source) do |data|
  cls = data[2] || Dry::Inflector.new.classify(data[1])
  puts "# typed: strong
  sig{returns Mongoid::Association::Referenced::HasAndBelongsToMany::Proxy}
  attr_reader :#{data[1]}
  sig{params(#{data[1]}: T::Array[#{cls}]).returns T::Array[#{cls}]}
  attr_writer :#{data[1]}"
end
