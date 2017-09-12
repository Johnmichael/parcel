require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the price of a parcel', {:type => :feature}) do
  it('will determine the cost of shipping a parcel') do
    visit('/')
    fill_in('length', :with => '5')
    fill_in('width', :with => '5')
    fill_in('height', :with => '5')
    fill_in('weight', :with => '5')
    click_button('Leetspeak It!')
    expect(page).to have_content('Your 5x5x5 package will cost $8.0 to ship')
  end
end
