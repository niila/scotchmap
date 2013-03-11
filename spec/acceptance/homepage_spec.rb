require 'spec_helper'

feature "home page" do

  scenario "start at the scotches page" do
    visit '/'

    page.should have_content 'Places to visit in 2016'
  end

end
