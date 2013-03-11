require 'spec_helper'

feature 'Scotches' do
  background do
    page.driver.browser.basic_authorize('dev-name', 'dev-password')
  end

  scenario 'create a new scotch' do
    visit '/scotches'
    click_link 'Add new Scotch tasted'
    fill_in 'Name', :with => 'My first scotch'
    click_button 'Create Scotch'

    page.should have_content 'My first scotch'
  end
end
