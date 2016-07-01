require('pry')

class String
  define_method(:word_count) do |to_find|
    counter = 0
    string_array = self.split(' ')
    string_array.each do |item|
# puts(item == to_find)
      if item == to_find
        counter += 1
      end
    end
    counter
  end
end
