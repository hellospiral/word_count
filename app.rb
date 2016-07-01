require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_count')
require('pry')

get('/') do
  erb(:index)
end

get('/answer') do
  @search_word = params.fetch("search_word")
  @string_input = params.fetch("string_input")
  @count = @string_input.word_count(@search_word).to_s()
  erb(:answer)
end
