=begin
  
Write code inside the to_hash method below, such that when you take this string...

'{first: "Stephen", last: "King", joined: ["first", "2015-07-26T16:06:41-07:00"]}'

...and call Transform1.new(str).to_hash, and this hash will be output:

{first: "Stephen", last: "King", joined: ["first", "2015-07-26T16:06:41-07:00"]}

=end

require 'active_support/all'

class Transform1
  def initialize(str)
    @str = str
  end

  def to_hash
    j = @str.gsub(/\w+:\s/){|m| "\"#{m.chomp(": ")}\": "}
    ActiveSupport::JSON.decode(j).symbolize_keys
    # JSON.parse(j, symbolize_names: true)
  end
end
