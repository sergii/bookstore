require 'spec_helper'

feature 'Admin views books' do
  scenario 'Books are missing' do
    visit '/admin'
    page.should have_text 'There are no books. Please add one.'
  end

  scenario 'Books are present' do
    Book.create do |book|
      book.title = 'Agile Web Development with Rails'
      book.isbn = 1934356549
      book.published_at = Date.new 2011, 3
      book.price = 43.95
    end

    visit '/admin'

    page.should have_text 'Agile Web Development with Rails'
    page.should have_text '1934356549'
    page.should have_text 'March 2011'
    page.should have_text '$43.95'
  end
end