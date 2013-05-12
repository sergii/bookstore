require 'spec_helper'

feature 'Admin views books' do
  background do
    page.driver.browser.authorize Settings.admin_name, Settings.admin_password
  end

  scenario 'Books are missing' do
    visit '/admin'
    page.should have_text 'There are no books. Please add one.'
  end

  scenario 'Books are present' do
    create :book

    visit '/admin'

    page.should have_text 'Agile Web Development with Rails'
    page.should have_text '1934356549'
    page.should have_text 'March 2011'
    page.should have_text '$43.95'
  end
end