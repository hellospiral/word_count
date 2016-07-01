require('pry')

class String
  define_method(:word_count) do |to_find|
    counter = 0
    string_array = self.downcase.gsub(/[^a-z0-9\s]/i, '').split(' ')
    string_array.each do |item|
      if item == to_find.downcase.gsub(/[^a-z0-9\s]/i, '').strip()
        counter += 1
      end
    end
    counter
  end
end
