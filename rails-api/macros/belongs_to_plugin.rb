# typed: strict
require 'dry-inflector'

source = ARGV[5]
/belongs_to :([^,]+)[^\0]*(?:class_name: ['"]([^'"]+))/.match(source) do |data|
  cls = data[2] || Dry::Inflector.new.classify(data[1])
  puts "# typed: strong
  sig{returns #{cls}}
  attr_accessor :#{data[1]}"
end
