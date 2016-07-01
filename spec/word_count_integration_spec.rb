require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the root path', {:type => :feature}) do
  it('loads the home page') do
    visit('/')
    expect(page).to have_content("Input a sentence")
  end
end

describe('the answer path', {:type => :feature}) do
  it('takes two strings and counts the appearances of one in the other') do
    visit('/')
    fill_in('string_input', :with => 'what is the  what')
    fill_in('search_word', :with => 'what')
    click_button('Count the words!')
    expect(page).to have_content("2")
  end
end
