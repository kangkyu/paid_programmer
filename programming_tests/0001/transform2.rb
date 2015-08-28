=begin

Write code in the count method below, such that I can say...

Transform.new.count

...and counts for the words located in the file input_files/transform2.txt
will be output. (See spec/test_0001_spec.rb to see the exact output)

=end

class Transform2
  def count
    file_name = File.join(File.dirname(__FILE__), "../input_files/transform2.txt")
    count_words = Hash.new(0)

    File.readlines(file_name).each do |line|
      count_words[line.chomp] += 1
    end
    count_words
  end
end
