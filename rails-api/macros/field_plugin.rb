# typed: strict
source = ARGV[5]
/field (:[^,]+)[^\0]*(?<=type: )([^,]+)?/.match(source) do |data|
  puts "# typed: strong
  sig{returns #{data[2] || 'T.untyped'}}
  attr_accessor #{data[1]}"
end
