# typed: ignore
require 'dry-inflector'

source = ARGV[5]
/has_many :([^,]+)(?:, dependent: ([^,]+))?(?:, class_name: ['"]([^,]+)['"])?(?:.*)/.match(source) do |data|
  cls = data[3] || Dry::Inflector.new.classify(data[1])
  puts ''"
  #typed: strong
  #dependent: #{data[2] || 'None'}
  sig{returns T.all(::Mongoid::Association::Referenced::HasMany::Proxy, #{cls})}
  attr_accessor :#{data[1]}"
end
