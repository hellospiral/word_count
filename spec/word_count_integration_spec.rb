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
