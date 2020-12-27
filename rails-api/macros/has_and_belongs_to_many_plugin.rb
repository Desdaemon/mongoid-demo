# typed: true
require 'dry-inflector'

source = ARGV[5]
/has_and_belongs_to_many :([^,]+)(?:, dependent: ([^,]+))?(?:, class_name: ['"]([^,]+)['"])?(?:.*)/.match(source) do |data|
  # cls = data[3] || Dry::Inflector.new.classify(data[1])
  puts ''"
  #typed: strong
  #dependent: #{data[2] || 'None'}
  sig{returns ::Mongoid::Association::Referenced::HasAndBelongsToMany::Proxy}
  attr_accessor :#{data[1]}"
end
