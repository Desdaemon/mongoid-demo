# typed: ignore
source = ARGV[5]
/field :([^,]+)(?:, type: ([^,]+))?(?:, default: (.+))?/.match(source) do |data|
  data[2] ||= 'Object'
  if data[3].nil?
    puts "#typed: strong\nsig{returns T.nilable(#{data[2]})}\nattr_accessor :#{data[1]}"
  else
    puts "#typed: strong\n#\n# Defaults to #{data[3]}\nsig{returns #{data[2]}}\nattr_accessor :#{data[1]}"
  end
end
