source = ARGV[5]
/scope :([^,]+),\s*(?:->(?:\(([^)]+)\))?|lambda\s+(?:do|{)\s+(?:\|(.+)\|)?)/.match source do |doc|
  raw_args = doc[2] || doc[3]
  args = raw_args&.split(/, */)&.map { |e| "#{e}: T.untyped" }&.join(',')
  params = args ? "params(#{args})." : ''
  puts "# typed: strict
  sig{#{params}returns Mongoid::Criteria}
  def #{doc[1]}(#{raw_args}); end
  sig{#{params}returns Mongoid::Criteria}
  def self.#{doc[1]}(#{raw_args}); end"
end
