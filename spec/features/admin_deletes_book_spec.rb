require 'spec_helper'

feature 'Admin deletes a book' do
  scenario 'Successful deletion' do
    page.driver.browser.authorize Settings.admin_name, Settings.admin_password

    create :book

    visit '/admin'
    click_link 'Delete'

    page.should have_text 'Book was successfully deleted.'
    page.should_not have_text 'Agile Web Development with Rails'
  end
end